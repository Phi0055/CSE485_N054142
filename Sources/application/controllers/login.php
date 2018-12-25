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
        $this->load->library("session");
    }

    public function index(){
        $this->checkLogin();
    }

    public function checkLogin(){
        $tk = isset($_POST['taikhoan'])? $_POST['taikhoan'] : "";
        $mk = isset($_POST['matkhau'])? $_POST['matkhau'] : "";
        $this->load->model("Muser");
        if ($this->Muser->checkExists($tk, $mk)){
            echo "Đăng nhập thành công";
            $data=array(
                "tk" => $tk,
                "mk" => $mk,
                "Is" => "True",
            );
            $this->session->set_userdata($data);
        }else{
            echo "Sai tài khoản / mật khẩu";
            header('Location: .');
        }
    }

}