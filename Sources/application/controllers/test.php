<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class Test extends CI_Controller{
    public function __construct() {
        parent::__construct();
    }

    public function index(){
        $this->load->model("Mcn");;
        $config['total_rows'] = $this->Mcn->countAll();
        $config['base_url'] = base_url()."index.php/admin/get_list_cn";
        $config['per_page'] = 5;

        $start=$this->uri->segment(3);
        $this->load->library('pagination', $config);
        $data['listcn']= $this->Mcn->getList($start, $config['per_page']);
        $this->load->view("test_view", $data);
    }

}