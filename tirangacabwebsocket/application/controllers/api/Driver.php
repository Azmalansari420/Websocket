<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Driver extends CI_Controller 
{
     
    public function __construct()
    {
        parent::__construct();
    }


    public function verify_car_number()
    {
        $driver_id = $this->session->userdata("user")['id'];
        $input = json_decode(file_get_contents('php://input'), true);
        $car_number = trim($input['car_number'] ?? '');

        if (empty($car_number)) {
            echo json_encode(['status' => 'error', 'message' => 'Car number required']);
            return;
        }

        // ✅ Check if driver already has any active car
        $active_car = $this->db
            ->where('driver_id', $driver_id)
            ->where('status', 1) // active
            ->get('driver_car_history')
            ->row();

        if ($active_car) {
            echo json_encode(['status' => 'error', 'message' => 'Deactivate your current active car first']);
            return;
        }

        // Check if car exists
        $car = $this->db->get_where('vendor_cars', ['car_number' => $car_number])->row();
        if (!$car) {
            echo json_encode(['status' => 'error', 'message' => 'Car number not found']);
            return;
        }

        $vendor_id = $car->vendor_id;
        $car_master_type = $car->car_master_type;
        $vendor_cars_id = $car->id;

        // Check if car is assigned to any driver with active status
        $assigned = $this->db
            ->where('vendor_cars_id', $vendor_cars_id)
            ->where('status', 1) // active
            ->get('driver_car_history')
            ->row();

        if ($assigned) {
            if ($assigned->driver_id == $driver_id) {
                echo json_encode(['status' => 'error', 'message' => 'You already have this car active']);
            } else {
                echo json_encode(['status' => 'error', 'message' => 'Already assigned this car no']);
            }
            return;
        }

        // ✅ Check if OTP already sent for same driver & car and status=1
        $existing_otp = $this->db
            ->where('driver_id', $driver_id)
            ->where('vendor_cars_id', $vendor_cars_id)
            ->where('status', 1)
            ->get('car_otp_verification')
            ->row();

        $otp = rand(1000, 9999);

        if ($existing_otp) {
            // Update old record
            $this->db->where('id', $existing_otp->id)
                ->update('car_otp_verification', [
                    'otp' => $otp,
                    'car_number' => $car_number,
                    'created_at' => date('Y-m-d H:i:s')
                ]);
        } else {
            // Insert new record
            $this->db->insert('car_otp_verification', [
                'car_number' => $car_number,
                'otp' => $otp,
                'driver_id' => $driver_id,
                'vendor_cars_id' => $vendor_cars_id,
                'car_master_type' => $car_master_type,
                'vendor_id' => $vendor_id,
                'status' => 1,
                'created_at' => date('Y-m-d H:i:s')
            ]);
        }

        echo json_encode(['status' => 'success', 'otp' => $otp]);
    }



    public function verify_otp()
    {
        $driver_id = $this->session->userdata("user")['id'];
        $device_id = $this->session->userdata("device_id");
        $firebase_token = $this->session->userdata("firebase_token");


        $input = json_decode(file_get_contents('php://input'), true);
        $otp = trim($input['otp'] ?? '');
        $car_number = trim($input['car_number'] ?? '');

        $url = base_url('app/driver/home.php?device_id=' . $device_id . '&token=' . $firebase_token);

        if (empty($otp) || empty($car_number)) {
            echo json_encode(['status' => 'error', 'message' => 'OTP and car number are required']);
            return;
        }

        $otpRecord = $this->db->get_where('car_otp_verification', [
            'car_number' => $car_number,
            'otp' => $otp,
            'driver_id' => $driver_id,
            'status' => 1
        ])->row();

        if (!$otpRecord) {
            echo json_encode(['status' => 'error', 'message' => 'Invalid or expired OTP']);
            return;
        }

        $assigned = $this->db
            ->where('vendor_cars_id', $otpRecord->vendor_cars_id)
            ->where('status', 1) 
            ->get('driver_car_history')
            ->row();

        if ($assigned) {
            if ($assigned->driver_id == $driver_id) {
                echo json_encode(['status' => 'error', 'message' => 'You already have this car active']);
            } else {
                echo json_encode(['status' => 'error', 'message' => 'Already assigned this car no']);
            }
            return;
        }

        $latitude  = $input['latitude'] ?? null;
        $longitude = $input['longitude'] ?? null;

        $this->db->insert('driver_car_history', [
            'driver_id' => $driver_id,
            'vendor_cars_id' => $otpRecord->vendor_cars_id,
            'car_number' => $otpRecord->car_number,
            'car_master_type' => $otpRecord->car_master_type,
            'status' => 1,
            'latitude'  => $latitude,
            'longitude' => $longitude,
            'assigned_at' => date('Y-m-d H:i:s')
        ]);

        // Mark OTP as used
        $this->db->where('id', $otpRecord->id)->update('car_otp_verification', ['status' => 2,'verified_at' => date('Y-m-d H:i:s')]);

        echo json_encode(['status' => 'success', 'message' => 'Car assigned successfully','redirect_url' => $url,]);
    }



    public function toggle_car_status()
    {
        $driver_id = $this->session->userdata("user")['id'];
        $history_id = $this->input->post('history_id');
        $status = $this->input->post('status');

        

        $history = $this->db->get_where('driver_car_history', [
            'id' => $history_id,
            'driver_id' => $driver_id
        ])->row();

        if (!$history) {
            echo json_encode(['status' => 'error', 'message' => 'Car history not found']);
            return;
        }

        if ($status == 2) {
            $unassigned_time = date('Y-m-d H:i:s');
            $formatted_time = date('d M, Y', strtotime($unassigned_time)) . '<br>' . date('h:i A', strtotime($unassigned_time));

            $this->db->where('id', $history_id)->update('driver_car_history', [
                'status' => 2,
                'unassigned_at' => $unassigned_time
            ]);

            echo json_encode([
                'status' => 'success',
                'message' => 'Car deactivated successfully',
                'unassigned_at' => $formatted_time
            ]);
            return;
        } 
        elseif ($status == 1) 
        {
            // Before activating, check if driver already has another active car
            $active = $this->db
                ->where('driver_id', $driver_id)
                ->where('status', 1)
                ->get('driver_car_history')
                ->row();

            if ($active) {
                echo json_encode(['status' => 'error', 'message' => 'Deactivate your current active car first']);
                return;
            }

            // Activate this car
            $this->db->where('id', $history_id)->update('driver_car_history', [
                'status' => 1,
                'assigned_at' => date('Y-m-d H:i:s'),
                'unassigned_at' => NULL
            ]);
            echo json_encode(['status' => 'success', 'message' => 'Car activated successfully']);
        } else {
            echo json_encode(['status' => 'error', 'message' => 'Invalid status']);
        }
    }

    /*get_driver_status*/

    public function get_driver_status()
    {
        $driver_id = $this->session->userdata("user")['id'];

        // check active car
        $active = $this->db->where('driver_id', $driver_id)
            ->where('status', 1)
            ->get('driver_car_history')
            ->row();

        if ($active) {
            echo json_encode(['status' => 'online']);
        } else {
            echo json_encode(['status' => 'offline']);
        }
    }


    /*DRIVER OFFLINE*/
   public function toggle_driver_status()
    {
        $driver_id = $this->session->userdata("user")['id'];
        $status = $this->input->post('status');

        if ($status == 1) 
        {
            $active_car = $this->db->where('driver_id', $driver_id)
                ->where('status', 1)
                ->get('driver_car_history')
                ->row();

            if (!$active_car) {
                echo json_encode(['status' => 'error', 'message' => 'Assign a car before going online']);
                return;
            }
            echo json_encode(['status' => 'success', 'message' => 'You are Online now']);
        } 
        elseif ($status == 0) 
        {
            $unassigned_time = date('Y-m-d H:i:s');

            $this->db->where('driver_id', $driver_id)
                ->where('status', 1)
                ->update('driver_car_history', [
                    'status' => 2,
                    'unassigned_at' => $unassigned_time
                ]);

            echo json_encode(['status' => 'success', 'message' => 'You are Offline now']);
        } 
        else {
            echo json_encode(['status' => 'error', 'message' => 'Invalid status']);
        }
    }



    /*accept bookig*/
   public function accept_booking()
    {
        $driver_id = $this->session->userdata("user")['id'];
        $booking_id = $this->input->post("booking_id");

        // Check driver online hai ya nahi
        $driver_status = $this->db->order_by('id','desc')
                          ->get_where('driver_car_history', ['driver_id' => $driver_id, 'status' => 1])
                          ->row();

        if (!$driver_status || $driver_status->status != 1) {
            echo json_encode(['status' => 'error', 'message' => 'You are offline. Go online first!']);
            return;
        }

        // Car check
        $getcar = $this->db->get_where('vendor_cars', ['car_number' => $driver_status->car_number])->row();
        if ($getcar) {
            $carid = $getcar->id;
        } else {
            echo json_encode(['status' => 'error', 'message' => 'Car not found!']);
            return;
        }

        // ✅ Check driver already kisi aur booking me to busy nahi hai
        $active_booking = $this->db
            ->where('driver_id', $driver_id)
            ->where_in('status', [2]) // 2 = driver assigned,
            ->get('bookings')
            ->row();

        if ($active_booking) {
            echo json_encode([
                'status' => 'error', 
                'message' => 'You already have an active booking. Complete it first.'
            ]);
            return;
        }

        // ✅ Check booking available hai
        $booking = $this->db->get_where('bookings', ['id' => $booking_id])->row();
        if (!$booking || $booking->status != 1) {
            echo json_encode(['status' => 'error', 'message' => 'Booking not available']);
            return;
        }

        // ✅ Assign booking to driver
        $this->db->where('id', $booking_id)->update('bookings', [
            'car_number'   => $driver_status->car_number,
            'driver_id'   => $driver_id,
            'car_id'      => $carid,
            'status'      => 2, // Driver Assign
            'accepted_at' => date('Y-m-d H:i:s')
        ]);

        // ✅ Mark this booking accepted (all other drivers cannot accept it now)
            $this->db->where('booking_id', $booking_id)->update('booking_notifications', [
                'status' => 1, // 1 = Accepted
                'accepted_driver_id' => $driver_id
            ]);

        // ✅ Update driver current status (last update)
        $this->db->where('id', $driver_status->id)->update('driver_car_history', [
            'last_update' => date('Y-m-d H:i:s')
        ]);


        // $driver_id = $driver_id;
        $new_booking_html    = $this->load->view('app/driver/new-booking-list', ['driver_id'=>$driver_id], true);
        $active_booking_html = $this->load->view('app/driver/active-booking-list', ['driver_id'=>$driver_id], true);
        echo json_encode([
            'status' => 'success',
            'message' => 'Booking accepted successfully!',
            'new_booking_html' => $new_booking_html,
            'active_booking_html' => $active_booking_html
        ]);
    }




    /*complete boking*/

    public function send_complete_otp()
    {
        $booking_id = $this->input->post('booking_id');

        $booking = $this->db->get_where('bookings', ['id' => $booking_id])->row();
        if (!$booking) {
            echo json_encode(['status' => 'error', 'message' => 'Booking not found']);
            return;
        }

        $user = $this->db->get_where('users', ['id' => $booking->user_id])->row();
        if (!$user) {
            echo json_encode(['status' => 'error', 'message' => 'User not found']);
            return;
        }

        $otp = rand(1000, 9999);

        $existing = $this->db->get_where('booking_complete_otp', [
            'booking_id' => $booking_id
        ])->row();

        if ($existing) 
        {
            $this->db->where('id', $existing->id)->update('booking_complete_otp', [
                'otp'        => $otp,
                'mobile'     => $user->mobile,
                'status'     => 1,
                'created_at' => date('Y-m-d H:i:s'),
                'verified_at'=> NULL
            ]);
        } else {
            $this->db->insert('booking_complete_otp', [
                'booking_id' => $booking_id,
                'otp'        => $otp,
                'mobile'     => $user->mobile,
                'status'     => 1,
                'created_at' => date('Y-m-d H:i:s')
            ]);
        }

        echo json_encode([
            'status' => 'success',
            'message' => 'OTP sent to user',
            'otp' => $otp 
        ]);
    }


    /*verify and complete*/
    public function verify_complete_otp()
    {
        $driver_id = $this->session->userdata("user")['id'];
        $booking_id = $this->input->post("booking_id");
        $otp        = $this->input->post("otp");

        // OTP check
        $otpRecord = $this->db->order_by('id', 'desc')
                    ->get_where('booking_complete_otp', [
                        'booking_id' => $booking_id,
                        'otp'        => $otp,
                        'status'     => 1
                    ])->row();

        if (!$otpRecord) {
            echo json_encode(['status' => 'error', 'message' => 'Invalid or expired OTP']);
            return;
        }

        // ✅ Booking Complete
        $this->db->where('id', $booking_id)->update('bookings', [
            'status'       => 3, // Completed
            'completed_at' => date('Y-m-d H:i:s')
        ]);

        // ✅ Booking Complete
        $this->db->where(['booking_id'=>$booking_id,'accepted_driver_id'=>$driver_id,'status'=>1])->update('booking_notifications', [
            'status'       => 3, // Completed
            'completed_at' => date('Y-m-d H:i:s')
        ]);

        // ✅ OTP mark as used
        $this->db->where('id', $otpRecord->id)->update('booking_complete_otp', ['status' => 2]);

        $new_booking_html    = $this->load->view('app/driver/new-booking-list', ['driver_id'=>$driver_id], true);
        $active_booking_html = $this->load->view('app/driver/active-booking-list', ['driver_id'=>$driver_id], true);

        echo json_encode([
            'status' => 'success', 
            'message' => 'Booking completed successfully!',
            'new_booking_html' => $new_booking_html,
            'active_booking_html' => $active_booking_html
        ]);
    }










    































































































    /*----click to update profule image--*/
    public function update_image()
    {
        $result = array();
        $user_data = array();        
      
        $user_id = $this->input->post('user_id');
        $image = $this->input->post('image');
       
        if(!empty($user_id))
        {
            if ($image)
            {
                $image_content = base64_decode(explode(",", $image)[1]);
                $image_time = time().$user_id.'user_profile.png';
                $image_path = 'media/uploads/users/'.$image_time;

                if(file_put_contents($image_path, $image_content)) 
                {
                    $user_data = array(
                        "profile_image"=>$image_time,
                    );
                    if($this->db->update("users",$user_data,array('id' => $user_id, )))
                    {
                        $result['message'] = "Update successfully.";
                        $result['status']  = "200";
                    }
                    else
                    {
                        $result['message'] = "Update not successfully.";
                        $result['status']  = "400";
                    }                   
                }
            }
            else
            {
                $result['message'] = "Upload Image first.";
                $result['status']  = "400";
            }            
        }
        else
        {
            $result['message'] = "Please Enter Crrect User ID.";
            $result['status']  = "400";
        }
        echo json_encode($result);      
    }



    /*-----click to update profile data----------*/
    public function update_profile()
    {
        $result = array();

        $user_id = $this->session->userdata("user")['id'];
        $name = $this->input->post("name");
        $mobile = $this->input->post("mobile");
        $email = $this->input->post("email");
        $dob = $this->input->post("dob");
        $address = $this->input->post("address");
        


        $checkemail = $this->crud->selectDataByMultipleWhere('users',array('email'=>$email,'id !=' => $user_id));
        if(!empty($checkemail))
        {
            $result['message'] = "Email Already Registerd.";
            $result['status']  = "400";
            $result['data']    = array();
            echo json_encode($result);
            die;
        }

        $checkmobile = $this->crud->selectDataByMultipleWhere('users',array('mobile'=>$mobile,'id !=' => $user_id));
        if(!empty($checkmobile))
        {
            $result['message'] = "Mobile Already Registerd.";
            $result['status']  = "400";
            $result['data']    = array();
            echo json_encode($result);
            die;
        }        

        $user = $this->db->get_where("users",array('id'=>$user_id,))->result_object();
        if(!empty($user))
        {
            $data = array(                
                "name"=>$name,
                "mobile"=>$mobile,
                "email"=>$email,
                "dob"=>$dob,
                "address"=>$address,
            );
            $this->db->update("users",$data,array("id"=>$user_id,));

            $result['status']  = "200";
            $result['message'] = "Update Successfully.";
            $result['data']  = $data;
        }
        else
        {
            $result['message'] = "User not found";
            $result['status']  = "400";
            $result['data']    = array();
        }
        echo json_encode($result);
    }



    /*update passweoerf*/
    public function password_update()
    {
        
        $user_id = $this->session->userdata("user")['id']; 
        $oldpassword = $this->input->post("oldpassword");
        $npassword = $this->input->post("npassword");
        $cpassword = $this->input->post("cpassword");

        $user = $this->db->get_where("users",array('id'=>$user_id,))->result_object();
        if(!empty($user))
        {
            $user = $user[0];
            if($user->password!=$oldpassword)
            {
                $result['status']  = "400";
                $result['message'] = "Old password not match...";
                $result['data']    = array();
                echo json_encode($result);
                die;
            }
            if($npassword!=$cpassword)
            {
                $result['status']  = "400";
                $result['message'] = "Confirm password not match...";
                $result['data']    = array();
                echo json_encode($result);
                die;
            }
            if($user->password == $npassword) 
            {
                $result['status'] = "400";
                $result['message'] = "New password cannot be the same as old password.";
                $result['data'] = array();
                echo json_encode($result);
                die;
            }

            $data = array(
                "password"=>$npassword,
            );
            $this->db->update("users",$data,array("id"=>$user_id,));
            $result['status']  = "200";
            $result['message'] = "Update successfully...";
            $result['action']  = "add";            
            $result['data']    = array();
        }
        else
        {
            $result['message'] = "User not found";
            $result['status']  = "400";
            $result['balance']  = "0";
            $result['data']    = array();
        }
        echo json_encode($result);
    }

    






       /*per bet play history*/
    public function passbook()
    {
        $result = array();
        $html = '';
        $user_id = $this->session->userdata("user")['id']; 
        $page = $this->input->post("page");
        $limit = 10;
        $offset = 0;

        if($page>0)
        {
            $offset = $page*$limit;
        }
        $this->db->limit($limit,$offset);

        $today = date('Y-m-d');
        $this->db->order_by('id desc');
        $notification = $this->crud->selectDataByMultipleWhere('user_history',array('user_id'=>$user_id,));

        if(!empty($notification))
        {
            $response_data['data'] = $notification;
            $html = $this->load->view('app/user/include/passbook-card',$response_data,true);

            $result['status'] = '200';
            $result['message'] = 'SUCCESS';
            $result['data'] = $html;
        }
        else
        {
            $result['status'] = '400';
            $result['message'] = 'No More';
            $result['data'] = [];
        }
        echo json_encode($result);
    }



    /*per bet play history*/
    public function play_history()
    {
        $result = array();
        $html = '';
        $user_id = $this->session->userdata("user")['id']; 
        $page = $this->input->post("page");
        $limit = 10;
        $offset = 0;

        if ($page > 0) {
            $offset = $page * $limit;
        }

        $this->db->limit($limit, $offset);

        $today = date('Y-m-d');
        $this->db->group_by('request_id');
        $this->db->order_by('id desc');
        $notification = $this->crud->selectDataByMultipleWhere('game_bet', array('user_id' => $user_id));

        if (!empty($notification)) {
            // Calculate the total amount for each request_id
            foreach ($notification as $key => $aValue) {
                $totalAmount = 0;
                // Get the related data for the request_id
                $betDetails = $this->crud->selectDataByMultipleWhere('game_bet', array('request_id' => $aValue->request_id));
                foreach ($betDetails as $bet) {
                    $totalAmount += $bet->amount;
                }
                // Add totalAmount to the result data
                $notification[$key]->totalAmount = $totalAmount;
            }

            $response_data['data'] = $notification;
            $html = $this->load->view('app/user/include/play-history-card', $response_data, true);

            $result['status'] = '200';
            $result['message'] = 'SUCCESS';
            $result['data'] = $html;
        } else {
            $result['status'] = '400';
            $result['message'] = 'No More';
            $result['data'] = [];
        }
        echo json_encode($result);
    }



























   



    


    


    /*contacct Enquiry*/

    public function contact_enquiry()
    {
        $result = array();

        $user_id = $this->input->post("user_id");
        $name = $this->input->post("name");
        $email = $this->input->post("email");
        $mobile = $this->input->post("mobile");
        $subject = $this->input->post("subject");
        $message = $this->input->post("message");
        $addeddate = date('Y-m-d H:i:s ');
       
        if(!empty($user_id))
        {
            $insertdata = array(                
                "name"=>$name,
                "mobile"=>$mobile,
                "email"=>$email,
                "subject"=>$subject,
                "message"=>$message,
                "user_id"=>$user_id,
                "addeddate"=>$addeddate,
            );
            
            $this->db->insert("contact",$insertdata);

            $result['status']  = "200";
            $result['message'] = "Enquiry Submit Successfully.";
            $result['data']  = $insertdata;
        }
        else
        {
            $result['message'] = "User not found";
            $result['status']  = "400";
            $result['data']    = array();
        }
        echo json_encode($result);
    }


    

 

  











































  /*---stilll not used---*/

   

   

   
   
    
}
