<?php
require_once APPPATH . '../vendor/autoload.php';
use WebSocket\Client;


defined('BASEPATH') OR exit('No direct script access allowed');

class Booking extends CI_Controller 
{
     
    public function __construct()
    {
        parent::__construct();
    }




    public function new_booking_list_reload() {
        $this->load->view('app/driver/new-booking-list'); // वही PHP फाइल
    }

    public function active_booking_list_reload() {
        $this->load->view('app/driver/active-booking-list'); // वही PHP फाइल
    }





    private function getLatLng($address, $apiKey)
    {
        $url = "https://maps.googleapis.com/maps/api/geocode/json?address=" . urlencode($address) . "&key=" . $apiKey;
        $response = file_get_contents($url);
        $result = json_decode($response, true);

        if(!empty($result['results'][0]['geometry']['location'])) {
            return $result['results'][0]['geometry']['location']; 
        }
        return null;
    }



    public function save()
    {
        date_default_timezone_set('Asia/Kolkata');

        $user_id = $this->session->userdata("user")['id'];

        $device_id = $this->session->userdata("device_id");
        $firebase_token = $this->session->userdata("firebase_token");

        $userdata = get_userdata(@$user_id);

        $username = $userdata[0]->name;
        $user_mobile = $userdata[0]->mobile;
        


        $request_id = time().$user_id;

        $redirect = base_url('app/user/trip-details.php?request_id='.$request_id.'&device_id='.$device_id.'&token='.$firebase_token);

        $trip_type = $this->input->post('trip_type');
        $sub_trip = $this->input->post('sub_trip');

        $pickup_location = $this->input->post('pickup_location');
        $drop_location   = $this->input->post('drop_location');
        $pickup_date_time = $this->input->post('pickup_date_time');
        if(!empty($pickup_date_time))
        {
            $pickup_date_time = $pickup_date_time;
        }
        else
        {
            $pickup_date_time = date('Y-m-d H:i:s');
        }

        $return_date_time = $this->input->post('return_date_time');
        

        $apiKey = google_API;
        $pickup_coords = $this->getLatLng($pickup_location, $apiKey); 
        $drop_coords   = $this->getLatLng($drop_location, $apiKey);

        $url = "https://maps.googleapis.com/maps/api/distancematrix/json?origins=" . urlencode($pickup_location) . "&destinations=" . urlencode($drop_location) . "&key=" . $apiKey;
        $response = file_get_contents($url);

        $result = json_decode($response, true);

        if($result['status'] == 'OK')
        {
            $total_distance  = $result['rows'][0]['elements'][0]['distance']['text']; //km
            $total_distance_meter = $result['rows'][0]['elements'][0]['distance']['value'];//meter
            $total_duration  = $result['rows'][0]['elements'][0]['duration']['text'];
            $total_duration_value  = $result['rows'][0]['elements'][0]['duration']['value'];


            $getdata =  array(
                'request_id'      => $request_id,
                'user_id'         => $user_id,
                'username'        => $username,
                'user_mobile'     => $user_mobile,
                'trip_type'       => $trip_type,
                'sub_trip'        => $sub_trip,
                'from_location'   => $pickup_location,
                'to_location'   => $drop_location,
                'total_distance'  => $total_distance,
                'total_distance_meter'=> $total_distance_meter,
                'total_duration'  => $total_duration,                
                'total_duration_value'  => $total_duration_value,                
                'pickup_location' => $pickup_location,
                'pickup_lat'      => $pickup_coords['lat'],
                'pickup_lng'      => $pickup_coords['lng'],
                'pickup_date_time'=> $pickup_date_time,
                'drop_location'   => $drop_location,
                'drop_lat'        => $drop_coords['lat'],
                'drop_lng'        => $drop_coords['lng'],
                'return_date_time'=> $return_date_time,
                'status'  => 0,                
            );
            $this->db->insert('bookings',$getdata);

            
            echo json_encode([
                    "status"=>"success",
                    "redirect"=>$redirect,
                ]);
        } 
        else 
        {
            echo json_encode(["status"=>"error", "message"=>"Google API error"]);
        }
    }



   public function confirm_booking()
    {
        date_default_timezone_set('Asia/Kolkata');

        $user_id = $this->input->post('user_id');;
        $device_id = $this->session->userdata("device_id");
        $firebase_token = $this->session->userdata("firebase_token");

        $latitude = $this->input->post('latitude');
        $longitude = $this->input->post('longitude');
     
        $trip_type = $this->input->post('trip_type');
        $car_type_master = $this->input->post('car_type_master');
        $amount = $this->input->post('amount');
        $request_id = $this->input->post('request_id');        

        if(!empty($request_id))
        {
            $getdata = [
                'request_id'=> $request_id,
                'user_lat'=> $latitude,
                'user_long'=> $longitude,
                'car_type_master'=> $car_type_master,
                'amount'    => $amount,
                'status'    => 1
            ];
            $this->db->where('request_id',$request_id);
            $this->db->update('bookings',$getdata);

            $booking = $this->db->get_where('bookings',['request_id'=>$request_id])->row();
            $booking_id = $booking->id;
            $from_location = $booking->from_location;
            $to_location = $booking->to_location;
            $pickup_date_time = $booking->pickup_date_time;
            $return_date_time = $booking->return_date_time;
            $amount = $booking->amount;
            $client_name = $booking->username;
            $client_mobile = $booking->user_mobile;
            $car_type = $booking->car_type_master;

            $drivers = $this->db
                ->where('car_master_type', $car_type_master)
                ->where('status', 1)
                ->get('driver_car_history')
                ->result();

            $device_ids = [];

            if (!empty($drivers)) 
            {
                foreach ($drivers as $drv) 
                {
                    $login = $this->db
                        ->select('device_id, firebase_token')
                        ->where('user_id', $drv->driver_id)
                        ->where('status', 1)
                        ->where('firebase_token !=',null)
                        ->order_by('id', 'DESC')
                        ->limit(1)
                        ->get('login_history')
                        ->row();

                    $notify = [
                        'driver_id'  => $drv->driver_id,
                        'booking_id' => $booking_id,
                        'title'      => 'New Booking Available',
                        'message'    => 'A new booking request is available for your car type.',
                        'status'     => 0,
                        'created_at' => date("Y-m-d H:i:s")
                    ];
                    $this->db->insert('booking_notifications', $notify);

                    if (!empty($login)) 
                    {
                        $title = "New Booking Available";
                        $body  = 'From '.$from_location.' To '.$to_location;
                        // $this->firebase->sendFCMNotification($title, $body, $login->firebase_token);

                        $device_ids[] = $login->device_id;
                    }
                }
            }

            try 
            {
                $client = new Client(socketURL);
                $client->send(json_encode([
                    "event" => "new_booking",
                    "device_ids" => $device_ids,
                    "data" => $getdata
                ]));
                $client->close();
            } catch (Exception $e) {
                log_message('error', 'WebSocket Error: '.$e->getMessage());
            }

            if($trip_type==1)
            {
                $url = base_url('app/user/confirm-booking.php?request_id='.$request_id.'&device_id='.$device_id.'&token='.$firebase_token);
            }
            else if($trip_type==2)
            {
                $url = base_url('api/razorpay?request_id='.$request_id);
            }

            echo json_encode([
                "status"=>200,
                "url"=>$url,
                "message"=>"Booking success",
                "device_ids"=>$device_ids,
                "booking_id"=>$booking_id,
                "from_location"=>$from_location,
                "to_location"=>$to_location,
                "pickup_date_time"=>$pickup_date_time,
                "return_date_time"=>$return_date_time,
                "amount"=>$amount,
                "client_name"=>$client_name,
                "amount"=>$amount,
                "client_mobile"=>$client_mobile,
                "car_type"=>$car_type,
            ]);
        } 
        else 
        {
            echo json_encode(["status"=>"error", "message"=>"Invalid request"]);
        }
    }






    //  public function confirm_booking()
    // {
    //     date_default_timezone_set('Asia/Kolkata');

    //     $user_id = $this->session->userdata("user")['id'];
    //     $device_id = $this->session->userdata("device_id");
    //     $firebase_token = $this->session->userdata("firebase_token");

    //     $car_type_master = $this->input->post('car_type_master');
    //     $amount = $this->input->post('amount');
    //     $request_id = $this->input->post('request_id');        

    //     if(!empty($request_id))
    //     {
    //         // update booking
    //         // $this->db->where('request_id',$request_id);
    //         // $this->db->update('bookings',[
    //         //     'amount' => $amount,
    //         //     'status' => 1
    //         // ]);

    //         // booking row
    //         $booking = $this->db->get_where('bookings',['request_id'=>$request_id])->row();
    //         $booking_id = $booking->id;

    //         // ✅ Step1: get car_name ids which belong to this car_type_master
    //         $carNames = $this->db->select('id')
    //                              ->from('car_name')
    //                              ->where('car_type_id', $car_type_master)
    //                              ->get()->result();

    //         $carNameIds = array_column($carNames, 'id');



    //         if(!empty($carNameIds))
    //         {
    //             // ✅ Step2: get vendor cars having these car_name_ids
    //             $vendorCars = $this->db->where_in('car_name_id',$carNameIds)
    //                                    ->get('vendor_cars')->result();
                

    //             foreach($vendorCars as $vc){
    //                 // ✅ Step3: get active drivers for this vendor car
    //                 $drivers = $this->db->get_where('driver_car_history',[
    //                     'vendor_cars_id'=>$vc->id,
    //                     'status'=>1
    //                 ])->result();

    //                 foreach($drivers as $drv){
    //                     // insert booking notification
    //                     $notify = [
    //                         'driver_id'  => $drv->driver_id,
    //                         'booking_id' => $booking_id,
    //                         'title'      => 'New Booking Available',
    //                         'message'    => 'A new booking request is available for your car type.',
    //                         'status'     => 0,
    //                         'created_at' => date("Y-m-d H:i:s")
    //                     ];
    //                     $this->db->insert('booking_notifications',$notify);
    //                 }
    //             }
    //         }

    //         echo json_encode([
    //             "status"=>"success",
    //             "redirect"=>base_url('app/user/confirm-booking.php?request_id='.$request_id.'&device_id='.$device_id.'&token='.$firebase_token),
    //         ]);
    //     } 
    //     else 
    //     {
    //         echo json_encode(["status"=>"error", "message"=>"Invalid request"]);
    //     }
    // }












    // public function details(){
    //     $data['trip'] = $this->session->userdata('trip_data');
    //     $this->load->view('trip_details', $data);
    // }

    // public function confirm_booking(){
    //     $trip = $this->session->userdata('trip_data');
    //     if(!$trip){
    //         redirect('trip');
    //     }

    //     $this->Trip_model->save_trip($trip);

    //     $this->session->unset_userdata('trip_data');
    //     $this->session->set_flashdata('success','Booking confirmed successfully!');
    //     redirect('trip/success');
    // }
























}