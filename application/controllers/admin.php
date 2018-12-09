<?php
/**
 * Created by PhpStorm.
 * User: FUJITSU
 * Date: 12/9/2018
 * Time: 10:49 AM
 */
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class Admin extends CI_Controller{
    public function __construct() {
        parent::__construct();
    }

    public function index(){
        $this->load->view('admin/home_admin_view');
    }

    public function get_list_user(){
        $this->load->model("admin/Muser");
        $data['data']=$this->Muser->listUser();
        $this->load->view("admin/get_list_user_admin_view", $data);
    }
}