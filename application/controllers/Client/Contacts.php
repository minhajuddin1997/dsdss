<?php
error_reporting(1);
defined('BASEPATH') OR exit('No direct script access allowed');
class Contacts extends Client_Controller {

	public function __construct() 
	{
		parent::__construct();
	}

	public function index(){
	    $clients = array(
	       'select'=>'*',
           'table'=>'crm_contacts',
           'where'=> array('client_id'=>$this->session->userdata('client_id'))
	    );
	    $general['records']=$this->admin_m->get($clients);
        $general['main_content'] = 'client/contacts/view';
        $this->load->view('client/inc/view', $general);
	}

	public function email_to_contact($data){
		if($data['email_status_notify'] == 'on'){
			$section['body'] = '<table>';
	        $section['body'] .= '<tr><td>Dear ' . $data['content']['name'] . ',<br><br> You are invited to join Dynisty Brandings.<td></tr>';
	        $section['body'] .= '<tr><td><br>Link to Follow: ' . base_url('front/register/intake/') .$result. '<br><br></td></tr>';
	        $section['body'] .= '<tr><td><br>This is a computer generated email and does not require a reply.</td></tr>';
	        $section['body'] .= '</table>';
	        $body = $this->load->view('email/template', $section, TRUE);
	        $result = send_email($data['content']['email'], 'Invitation Link for Dynisty Brandings', $body);
    	} 
	}

	public function add(){
		if(!empty($_POST)){
		    if(!empty($_FILES['display_picture']['name'])){
		    	$path = './uploads/contacts';
		        $image_profile = image_file_upload($_FILES['display_picture'],$path);
		        $_POST['display_picture'] =  $image_profile;
		    }
		    if($image_profile['status'] == 'error' || $image_cover['status'] == 'error'){
              	$this->session->set_flashdata('msg', '2');
              	$this->session->set_flashdata('alert_data', 'Error Uploading File');
              	redirect('client/contacts');
            }
            
        	if(!empty($_POST['email_notify'])):
        		$data = array(
	        		'content' => $_POST,
	        		'email_status_notify' => isset($_POST['email_notify']) ? $_POST['email_notify'] : '',
	        		);
            	$result = $this->email_to_contact($data);
            	unset($_POST['email_notify']);
        	endif;

            $response = $this->admin_m->add_data('crm_contacts', $_POST);
            if(!empty($response)){
            	$this->session->set_flashdata('msg', '1');
             	$this->session->set_flashdata('alert_data', 'Success');
             	redirect('client/contacts');
            }

		} else{
	        $general['main_content'] = 'client/contacts/add';
	        $this->load->view('client/inc/view', $general);
    	}
	}
    
    public function edit($id){
	    if(!empty($_POST)){
	        if(!empty($_FILES['user_image']['name'])){
	            $image_profile = image_file_upload($_FILES['user_image']);
	            $_POST['user_image'] =  $image_profile;
	        }
	        if(!empty($_FILES['user_cover_image']['name'])){
	            $image_cover = image_file_upload($_FILES['user_cover_image']);
	            $_POST['user_cover_image'] = $image_cover;
	        }
            
            if($image_profile['status'] == 'error' || $image_cover['status'] == 'error'){
              $this->session->set_flashdata('msg', '2');
              $this->session->set_flashdata('alert_data', 'Error Uploading File');
            }
           $res = $this->admin_m->update_data('users', $_POST, array('user_id' => $id));
           if($res){
              $this->session->set_flashdata('msg', '1');
              $this->session->set_flashdata('alert_data', 'Profile Settings Updated');
              return redirect('admin/profile/index/'.$id);
           } else{
              $this->session->set_flashdata('msg', '2');
              $this->session->set_flashdata('alert_data', 'Error in Updating');
           }
	    } else{
    	    $general['id']=$id;
            $general['main_content'] = 'admin/profile/view';
            $this->load->view('admin/inc/view', $general);
	    }
	}
}
?>