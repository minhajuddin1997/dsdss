<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Analytics extends Client_Controller
{
    public function __construct()
    {
        parent::__construct();
    }
    
    public function get_data(){
        
    }
    
    public function index()
    {
        if($_POST){
            $year = $_POST['analytics_year'];
        } else{
            $year = date("Y");
        }
        $client_id = $this->session->userdata('client_id');
        $query2 = "SELECT lead_type, upload_year, upload_month FROM leads where upload_year LIKE '$year' && client_id = '$client_id'";
        $datas= $this->admin_m->rawQuery($query2);

        $records2 = array();
        $i=0;
        foreach($datas as $row):
            $i++;
            $records2[$row['lead_type']][$row['upload_month']][$i] = count($row['upload_month']);
        endforeach;
        $query = "SELECT lead_type, COUNT(*) as count FROM leads where upload_year LIKE '$year' && client_id = '$client_id' GROUP BY lead_type";
        $data=$this->admin_m->rawQuery($query);
        $records = array();
        foreach($data as $row):
            $records[$row['lead_type']] = array(
              'count' => $row['count'],
              'year' => $row['upload_year'],
              'month' => $row['upload_month'],
              'month_wise' => $records2
            );
        endforeach;
        $general['records2'] = $records2;
        $general['records'] = $records;
        $general['main_content'] = 'client/analytics/view';
        //$general['permission'] = $this->permission;
        $this->load->view('client/inc/view', $general);
    }
    
    public function list()
    {
        $general['records'] = $this->admin_m->get_list('leads', array('client_id'=>$this->session->userdata('client_id')));
        $general['main_content'] = 'client/analytics/list';
        //$general['permission'] = $this->permission;
        $this->load->view('client/inc/view', $general);
    }
    
    public function add()
    {
        if(!empty($_POST)):
             $s = lead_file_upload($_FILES['lead_file'],"./uploads/"."client_projects");

            foreach($s as $row => $key){
                $id = $this->admin_m->add_data('leads',$s[$row]);
            }
            if($id && $s){
                $this->session->set_flashdata('msg', '1');
                $this->session->set_flashdata('alert_data', 'Success');
                redirect('/client/analytics/index', 'refresh');
            } else{
                $this->session->set_flashdata('msg', '2');
                $this->session->set_flashdata('alert_data', 'Error');
                redirect('/client/analytics/index', 'refresh');
            }
        endif;
        $general['main_content'] = 'client/analytics/add';
        //$general['permission'] = $this->permission;
        $this->load->view('client/inc/view', $general);
    }
    
}
?>
