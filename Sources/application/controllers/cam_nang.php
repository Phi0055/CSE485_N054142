<?php
/**
 * Created by PhpStorm.
 * User: FUJITSU
 * Date: 12/6/2018
 * Time: 11:08 AM
 */
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class Cam_nang extends CI_Controller{
    public function __construct() {
        parent::__construct();
    }

    public function index(){
        $this->load->model("Mcn");
        $length = $this->Mcn->countAll();
        $data['listcn'] = $this->Mcn->getList(0,$length);
        $this->load->view("site/cam_nang_site_view", $data);
    }

    public function view_detail(){
        $this->load->view("site/s_detail_cn_site_view");
    }

}