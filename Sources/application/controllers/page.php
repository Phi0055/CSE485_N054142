<?php
/**
 * Created by PhpStorm.
 * User: FUJITSU
 * Date: 12/14/2018
 * Time: 3:21 PM
 */
class Page extends CI_Controller{
    public function __construct(){
        parent::__construct();
    }

    public function index(){
        $this->load->model("Muser");
        $config['total_rows'] = $this->Muser->countAll();
        $config['base_url'] = base_url()."index.php/page/index";
        $config['per_page'] = 3;

        $start=$this->uri->segment(3);
        $this->load->library('pagination', $config);
        $data['data']= $this->Muser->getList($start, $config['per_page']);
        $this->load->view("test_view", $data);
    }

}