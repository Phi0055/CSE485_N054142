<?php
/**
 * Created by PhpStorm.
 * User: FUJITSU
 * Date: 12/9/2018
 * Time: 10:49 AM
 */
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class Login extends CI_Controller{
    public function __construct() {
        parent::__construct();
    }

    public function index(){
        $this->checkLogin();
    }

    public function checkLogin(){
        $tk = isset($_POST['tk']) ? $_POST['tk'] : "";
        $mk = isset($_POST['mk']) ? $_POST['mk'] : "";
        $this->load->model("Muser");
        if ($this->Muser->checkLogin($tk, $mk) && $tk != "" && $mk != ""){
            //Đăng Nhập Thành Công
            $this->session->set_userdata("CheckLogin", true);
            $data['infLogin'] = $this->Muser->infLogin($tk, $mk);
            $this->session->set_userdata($data['infLogin']);
            //print_r($this->session->all_userdata());
            if ($this->session->userdata("cap_do") == 1){
                //Nếu Là Khách
                redirect(base_url());
            }else {
                //Nếu Là Admin (hoặc NV)
                redirect(base_url() . "index.php/admin");
            }

        }
        else{
            //Đăng Nhập Thất Bại
            redirect(base_url());
        }
    }

    public function logout(){
        $this->session->sess_destroy();
        redirect(base_url());
    }

}