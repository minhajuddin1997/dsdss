<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_Controller extends CI_Controller {
	function __construct() {
		parent::__construct();	
		if(!$this->session->userdata('user_id')){	
			$this->uri->segment(2)=='login'||$this->uri->segment(2)=='forgot-password'||$this->uri->segment(2)=='reset-password'?'':redirect('admin/login');
		}

		if ($this->session->userdata('user_id')) {
			$user_id = $this->session->userdata('user_id');
			$role_id = $this->session->userdata('role_id');
			$data = array(
				'select' => 'role_permission',
				'table' => 'role',
				'join_table' => 'users',
				'join' => 'users.role_id = role.role_id',
				'join_type' => 'left',
				'output_type' => 'row',
				'where' => array('user_id' => $user_id),
			);
			$datas = array(
				'select' => '*',
				'table' => 'developer',
			);
			$permission = $this->admin_m->get($data);
			$this->developer = $this->admin_m->get($datas);
			$this->permission = json_decode($permission->role_permission);
			$this->form_validation->set_error_delimiters('<span class="help-block">','</span>');
		}

		$data = array();
		$data['select'] = 'settings_site_title, settings_email, settings_shipping_free, settings_email_from, settings_favicon, settings_logo, settings_background';
		$data['table'] = 'settings';
		$data['where'] = array('settings_id' => 1);
		$data['output_type'] = 'row';
		$this->setting = $this->admin_m->get($data);
	} 
}
?>
