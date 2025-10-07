<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {


public function getMonthData()
{
    $year  = $this->input->post('year');
    $month = $this->input->post('month');

    $this->db->where(['year' => $year, 'month' => $month, 'status' => 1]);
    $data = $this->db->get('number')->result();

    echo json_encode($data);
}










}