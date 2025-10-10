<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Vendor extends CI_Controller 
{
     
    public function __construct()
    {
        parent::__construct();
    }




    public function get_car_name()
    {   
        $car_brand_id = $this->input->post('car_brand_id');
        $city = $this->db->get_where('car_name',array('car_brand_id'=>$car_brand_id,))->result_object();
        $html = '<option disabled selected>Select Car</option>';
        foreach ($city as $key => $value) {
            $html .= '
                <option value="'.$value->id.'">'.$value->name.'</option>
            ';
        }       
            $data['status'] = "200";
            $data['data'] = $html;      
        echo json_encode($data);
    }





    public function car_add()
    {
        $result = array();

        $vendor_id = $this->session->userdata("user")['id'];
        $device_id = $this->session->userdata("device_id");
        $firebase_token = $this->session->userdata("firebase_token");

        $url = base_url('app/vendor/car-list.php?device_id=' . $device_id . '&token=' . $firebase_token);

        $car_brand_id = $this->input->post("car_brand_id");
        $car_model_id = $this->input->post("car_model_id");
        $car_name_id = $this->input->post("car_name_id");

        $gettypemaster = $this->db->get_where('car_name',array('id'=>$car_name_id))->result_object();
        $car_type_id = $gettypemaster[0]->car_type_id;


        $car_number = $this->input->post("car_number");
        $car_mfg_year = $this->input->post("car_mfg_year");
        $status = 0;

        if (!empty($_FILES['vehicle_pics'])) 
        {
            $files = $_FILES['vehicle_pics'];
            $filename = $_FILES['vehicle_pics']['name'];
            $tempname = $_FILES['vehicle_pics']['tmp_name'];

            foreach ($filename as $key => $value) 
            {
                if (!empty($filename[$key])) {
                    $unique_name = time() . '_' . $filename[$key];
                    $path = "media/uploads/" . $unique_name;

                    if (move_uploaded_file($tempname[$key], $path)) {
                        $allimage[] = $unique_name;
                    }
                }
            }
        }
        $multiple_image_json = !empty($allimage) ? json_encode($allimage) : '';

        $registration_certificate = "";
        if (!empty($_FILES['registration_certificate']['name'])) {
            $filename = time().'_'.$_FILES['registration_certificate']['name'];
            $path = 'media/uploads/'.$filename;
            move_uploaded_file($_FILES['registration_certificate']['tmp_name'], $path);
            $registration_certificate = $filename;
        }

        $fitness_certificate = "";
        if (!empty($_FILES['fitness_certificate']['name'])) {
            $filename = time().'_'.$_FILES['fitness_certificate']['name'];
            $path = 'media/uploads/'.$filename;
            move_uploaded_file($_FILES['fitness_certificate']['tmp_name'], $path);
            $fitness_certificate = $filename;
        }

        $insurance = "";
        if (!empty($_FILES['insurance']['name'])) {
            $filename = time().'_'.$_FILES['insurance']['name'];
            $path = 'media/uploads/'.$filename;
            move_uploaded_file($_FILES['insurance']['tmp_name'], $path);
            $insurance = $filename;
        }

        $pollution = "";
        if (!empty($_FILES['pollution']['name'])) {
            $filename = time().'_'.$_FILES['pollution']['name'];
            $path = 'media/uploads/'.$filename;
            move_uploaded_file($_FILES['pollution']['tmp_name'], $path);
            $pollution = $filename;
        }

        $permit_local = "";
        if (!empty($_FILES['permit_local']['name'])) {
            $filename = time().'_'.$_FILES['permit_local']['name'];
            $path = 'media/uploads/'.$filename;
            move_uploaded_file($_FILES['permit_local']['tmp_name'], $path);
            $permit_local = $filename;
        }

        
        $permit_national = "";
        if (!empty($_FILES['permit_national']['name'])) {
            $filename = time().'_'.$_FILES['permit_national']['name'];
            $path = 'media/uploads/'.$filename;
            move_uploaded_file($_FILES['permit_national']['tmp_name'], $path);
            $permit_national = $filename;
        }

        $addeddate = date('Y-m-d H:i:s');
       
        if(!empty($vendor_id))
        {
            $insertdata = array(                
                "vendor_id"=>$vendor_id,
                "car_brand_id"=>$car_brand_id,
                "car_model_id"=>$car_model_id,
                "car_master_type"=>$car_type_id,
                "car_name_id"=>$car_name_id,
                "car_number"=>$car_number,
                "car_mfg_year"=>$car_mfg_year,
                "status"=>$status,
                "addeddate"=>$addeddate,
            );            
            $this->db->insert("vendor_cars",$insertdata);
            $insert_id = $this->db->insert_id();

            $cardocument = array(
                "vendor_cars_id" => $insert_id,
                "registration_certificate" => $registration_certificate,
                "fitness_certificate" => $fitness_certificate,
                "insurance" => $insurance,
                "pollution" => $pollution,
                "permit_local" => $permit_local,
                "permit_national" => $permit_national,
                "vehicle_pics"=>$multiple_image_json,
            );
            $this->db->insert("vendor_cars_document",$cardocument);

            $result['status']  = "200";
            $result['message'] = "Submit Successfully.";
            $result['data']  = $insertdata;
            $result['url']  = $url;
        }
        else
        {
            $result['message'] = "User not found";
            $result['status']  = "400";
            $result['data']    = array();
        }
        echo json_encode($result);
    }


    /*update*/

    public function car_update()
    {
        $result = array();

        $vendor_id = $this->session->userdata("user")['id'];
        $device_id = $this->session->userdata("device_id");
        $firebase_token = $this->session->userdata("firebase_token");
        $url = base_url('app/vendor/car-list.php?device_id=' . $device_id . '&token=' . $firebase_token);

        $id = $this->input->post("id");
        $car_brand_id = $this->input->post("car_brand_id");
        $car_model_id = $this->input->post("car_model_id");
        $car_name_id = $this->input->post("car_name_id");
        $gettypemaster = $this->db->get_where('car_name',array('id'=>$car_name_id))->result_object();
        $car_type_id = $gettypemaster[0]->car_type_id;
        
        $car_number = $this->input->post("car_number");
        $car_mfg_year = $this->input->post("car_mfg_year");
        $status = 0;

        // handle multiple vehicle images
        $allimage = [];
        if (!empty($_FILES['vehicle_pics']['name'][0])) {
            $files = $_FILES['vehicle_pics'];
            foreach ($files['name'] as $key => $name) {
                $unique_name = time() . '_' . $name;
                $path = "media/uploads/" . $unique_name;
                if (move_uploaded_file($files['tmp_name'][$key], $path)) {
                    $allimage[] = $unique_name;
                }
            }
        }
        $multiple_image_json = null;

// Only process images if at least one source (existing or new) is available
            $existing_vehicle_pics = $this->input->post("existing_vehicle_pics");
            $existing_images = !empty($existing_vehicle_pics) ? json_decode($existing_vehicle_pics, true) : [];

            if (!empty($existing_images) || !empty($allimage)) {
                $final_images = array_merge($existing_images, $allimage);
                $multiple_image_json = json_encode($final_images);
            }

        // else: nothing to update in vehicle_pics


        // Handle single image documents
        $doc_fields = ['registration_certificate', 'fitness_certificate', 'insurance', 'pollution', 'permit_local', 'permit_national'];
        $document_data = [];

        foreach ($doc_fields as $field) {
            if (!empty($_FILES[$field]['name'])) {
                $filename = time() . '_' . $_FILES[$field]['name'];
                $path = 'media/uploads/' . $filename;
                move_uploaded_file($_FILES[$field]['tmp_name'], $path);
                $document_data[$field] = $filename;
            } else {
                $document_data[$field] = $this->input->post("old_" . $field);
            }
        }

        $addeddate = date('Y-m-d H:i:s');

        if (!empty($vendor_id)) {
            $car_data = [
                "vendor_id" => $vendor_id,
                "car_brand_id" => $car_brand_id,
                "car_model_id" => $car_model_id,
                "car_name_id" => $car_name_id,
                "car_master_type"=>$car_type_id,
                "car_number" => $car_number,
                "car_mfg_year" => $car_mfg_year,
                "status" => $status,
                "addeddate" => $addeddate,
            ];

            if (!empty($id)) {
                // update
                $this->db->where("id", $id);
                $this->db->update("vendor_cars", $car_data);

                $doc_data = $document_data;

                if (!is_null($multiple_image_json)) {
                    $doc_data["vehicle_pics"] = $multiple_image_json;
                }
                $this->db->where("vendor_cars_id", $id);
                $this->db->update("vendor_cars_document", $doc_data);

            } else {
                // insert
                $this->db->insert("vendor_cars", $car_data);
                $insert_id = $this->db->insert_id();

                $doc_data = array_merge(["vendor_cars_id" => $insert_id, "vehicle_pics" => $multiple_image_json], $document_data);
                $this->db->insert("vendor_cars_document", $doc_data);
            }

            $result['status'] = "200";
            $result['message'] = "Car saved successfully.";
            $result['url'] = $url;
        } else {
            $result['status'] = "400";
            $result['message'] = "User not found.";
        }

        echo json_encode($result);
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
