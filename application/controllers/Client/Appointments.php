<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Appointments extends Client_Controller {

	public function __construct() 
	{
		parent::__construct();
	}

	public function index(){
	    $clients = array(
	       'select'=>'*',
           'table'=>'client',
           'where'=>array('client_id'=>$this->session->userdata('client_id'))
	    );
	    $general['id']=$id;
	    $general['records']=$this->admin_m->get($clients);
        $general['main_content'] = 'client/appointments/view';
        $this->load->view('client/inc/view', $general);
	}

}
?>