<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Filter extends CI_Controller 
{


	public function filterData()
	{
	    $month = $this->input->post('month');
	    $year  = $this->input->post('year');

	    $this->db->select("*, DAY(create_on) as day_no");
	    if($month) $this->db->where('month', $month);
	    if($year)  $this->db->where('year', $year);
	    $this->db->where(['status'=>1,'game_id'=>59]);
	    $numbers = $this->db->get('number')->result();

	    $this->db->where(['status'=>1,'game_id'=>59]);
	    $this->db->order_by('gametime', 'asc');
	    $times = $this->db->get('game_times')->result();

	    $response = [
	        'numbers' => $numbers,
	        'times'   => $times,
	        'month'   => $month,
	        'year'    => $year
	    ];

	    // JSON return
	    $this->output
	        ->set_content_type('application/json')
	        ->set_output(json_encode($response));
	}




	public function gali_filterData()
	{
	    $month = $this->input->post('month');
	    $year  = $this->input->post('year');

	    $this->db->select("*, DAY(create_on) as day_no");
	    
		if($month) $this->db->where('month', $month);
		if($year)  $this->db->where('year', $year);
		$this->db->where(['status'=>1]);
		$this->db->where_not_in('game_id', [59]); // <- array
		$numbers = $this->db->get('number')->result();


	    $this->db->where(['status'=>1]);
		$this->db->order_by('gametime', 'asc');
		$this->db->where_not_in('game_id', [59]); // <- array
		$times = $this->db->get('game_times')->result();

	    $response = [
	        'numbers' => $numbers,
	        'times'   => $times,
	        'month'   => $month,
	        'year'    => $year
	    ];

	    // JSON return
	    $this->output
	        ->set_content_type('application/json')
	        ->set_output(json_encode($response));
	}




























}