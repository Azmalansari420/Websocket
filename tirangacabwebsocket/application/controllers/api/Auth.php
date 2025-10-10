<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {
     
    public function __construct()
    {
        parent::__construct();
        $this->otp = rand(999,9999);
        $this->otp = 1234;
    }
    public function index()
    {
        echo "string";
    }

    public function token_session($user)
    {
        $device_id = $this->input->post('device_id');
        $password = $this->input->post('password');
        $firebase_token = $this->input->post('firebase_token');
        $date_time = date("Y-m-d H:i:s");
        $token_data = array("user_id"=>$user['id'],"password"=>$user['password'],"hours"=>token_hours,"date_time"=>$date_time,"role"=>$user['role'],"device_id"=>$device_id,);
        $access_token = encode_token($token_data);
        $password = $user['password'];

        $firebase_token = '';
        $getToken = $this->db->get_where("firebasetoken",["device_id"=>$device_id,])->result_object();
        if(!empty($getToken))
        {
            $firebase_token = $getToken[0]->token;
        }

        $login_detail = array(
            "user_id"=>$user['id'],
            "role"=>$user['role'],
            "ip_address"=>$_SERVER['REMOTE_ADDR'],
            "date"=>date("Y-m-d"),
            "time"=>date("H:i:s"),
            "status"=>1,
            "device_id"=>$device_id,
            "password"=>$password,
            "firebase_token"=>$firebase_token,
            "access_token"=>$access_token,
        );
        $this->db->insert("login_history",$login_detail);
        $data = array(
            "user"=>array("id"=>$user['id'],"role"=>$user['role'],"password"=>$user['password'],),
        );
        $this->session->set_userdata($data);
        $this->session->set_userdata(array("access_token"=>$access_token,));
        return $access_token;
    }

    /*login*/
    public function login()
    {
        $result = [];

        $mobile = trim($this->input->post('mobile'));
        $password = $this->input->post('password');
        $device_id = $this->input->post('device_id');
        $firebase_token = $this->input->post('firebase_token');

        $selectedRole = $this->input->post('selectedRole');

        $user = $this->db->get_where("users", ['mobile' => $mobile,'role'=>$selectedRole])->row_array();

        if (!$user) {
            echo json_encode([
                'status' => 404,
                'message' => 'Mobile number not registered.',
                'data' => [],
                'url' => ''
            ]);
            return;
        }

        if ($user['status'] != 1) {
            echo json_encode([
                'status' => 403,
                'message' => 'Your account is blocked.',
                'data' => [],
                'url' => ''
            ]);
            return;
        }

        if ($password != $user['password']) {
            echo json_encode([
                'status' => 401,
                'message' => 'Incorrect password.',
                'data' => [],
                'url' => ''
            ]);
            return;
        }

        $access_token = $this->token_session($user);
        $url = '';

        if ($selectedRole == 1) 
        {
            $url = base_url('app/user/home.php?device_id=' . $device_id . '&token=' . $firebase_token);
        }
        if ($selectedRole == 2) 
        {
            $url = base_url('app/vendor/home.php?device_id=' . $device_id . '&token=' . $firebase_token);
        }
        if ($selectedRole == 3) 
        {
            $url = base_url('app/driver/home.php?device_id=' . $device_id . '&token=' . $firebase_token);
        }

        echo json_encode([
            'status' => 200,
            'message' => 'Login Successful.',
            'action' => 'login',
            'data' => ['token' => $access_token],
            'url' => $url
        ]);
    }




    public function checkdeviceid()
    {
       $data = json_decode(file_get_contents("php://input"), true);
         $device_id = $this->input->post('device_id');
         $token = $this->input->post('token');

        $checkold = $this->db->get_where('firebasetoken',array('device_id'=>$device_id))->result_object();
        if(empty($checkold) && !empty($device_id) && !empty($token))
        {
            $insertdata = array(
                "device_id"=>$device_id,
                "token"=>$token,
            );
            $this->db->insert('firebasetoken',$insertdata);
        }
        else
        {
            $updatedata = array(
                "token"=>$token,
            );
            $this->db->where('device_id',$device_id);
            $this->db->update('firebasetoken',$updatedata);
        }
    }



    /*register*/
    public function registration()
    {
        $result = [];

        $device_id = $this->input->post('device_id');
        $firebase_token = $this->input->post('firebase_token');

        $name = trim($this->input->post('name'));
        $email = trim($this->input->post('email'));
        $mobile = trim($this->input->post('mobile'));
        $password = $this->input->post('password');

        $selectedRole = $this->input->post('selectedRole');

        
        $user = $this->db->get_where("users", ['mobile' => $mobile])->row_array();
        if (!empty($user)) {
            echo json_encode([
                'status' => 400,
                'message' => 'Mobile No already registered.',
                'url' => ''
            ]);
            return;
        }

        // Register new user
        $role = $selectedRole;
        $user_id = generate_user_id();
        $profile_image = 'user-profile.png';
        $status = 1;
        $date_time = date("Y-m-d H:i:s");

        $insertdata = [
            "role" => $role,
            "user_id" => $user_id,
            "name" => $name,
            "email" => $email,
            "mobile" => $mobile,
            "password" => $password,
            "profile_image" => $profile_image,
            "status" => $status,
            "date_time" => $date_time,
        ];

        $inserted = $this->db->insert('users', $insertdata);

        if ($inserted) 
        {
            $insert_id = $this->db->insert_id();
            $insertUser = $this->db->get_where('users', ['id' => $insert_id])->row_array();
            $access_token = $this->token_session($insertUser);
            $url = base_url('app/user/home.php?device_id=' . $device_id . '&token=' . $firebase_token);

            echo json_encode([
                'status' => 200,
                'message' => 'Registered successfully.',
                'token' => $access_token,
                'url' => $url
            ]);
            return;
        } 
        else 
        {
            echo json_encode([
                'status' => 500,
                'message' => 'Registration failed. Please try again.',
                'url' => ''
            ]);
            return;
        }
    }






    /*forget password*/
    public function forget_password() 
    {
        $result = array();
        $device_id = $this->input->post('device_id');
        $firebase_token = $this->input->post('firebase_token');
        $email = $this->input->post('email');
        $user = $this->db->get_where("users",array('email'=>$email))->result_array();

        $message = "";

        if(!empty($user)) 
        {
            $user = $user[0]; // Corrected $user_detail2 to $user
            $name = $user['name']; // Accessing array elements using $
            $password = $user['password']; // Accessing array elements using $
            $subject = "Forget Password"; // Added semicolon here
            $message = 'Hey '.$name.' Your Old Password Is '.$password.'. Login & Update Your Password. Thanks you using Our App. Team ' . website_name; // Concatenated website_name

            $this->email->sendmail_bygmail($email,$subject,$message);
            
            $result['message'] = "Check Your Email";
            $result['status'] = "200";
            $result['data'] = $message;
        } 
        else 
        {
            $result['message'] = "Wrong Email.";
            $result['status'] = "400";
            $result['data'] = "";
        }
        echo json_encode($result);
    }

    
    




































// ==============================Logout=========================
   

    public function logout($pagename='')
    {
        $u = $this->session->userdata('user');
        if(!empty($u))
        {
            $id = $this->session->userdata['user']['id'];
            $this->db->update("login_history",array("status"=>0,),array("user_id"=>$id,"status"=>1,));

            
            $this->session->unset_userdata('user');
            $this->session->unset_userdata('role');
            redirect(base_url(user_app.$pagename.'/'.'login.php?device_id='.$this->session->userdata("device_id").'&firebase_token='.$this->session->userdata("firebase_token")));
        }
        else
        {
            redirect(base_url(user_app.$pagename.'/'.'login.php?device_id='.$this->session->userdata("device_id").'&firebase_token='.$this->session->userdata("firebase_token")));
        }
    }
    
    public function device_logout()
    {
        $u = $this->session->userdata('user');
        $device_id = $this->input->post('device_id');
        
        // $id = $this->session->userdata['user']['id'];
        $this->db->update("login_history",array("status"=>0,),array("device_id"=>$device_id,"status"=>1,));
        $this->session->unset_userdata('user');
        $this->session->unset_userdata('role'); 

        $result['message'] = "successfully...";
        $result['status']  = "200";
        $result['data']    = [];  
        echo json_encode($result);     
    }



}