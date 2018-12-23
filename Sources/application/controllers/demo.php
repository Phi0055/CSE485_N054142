<?php
/**
 * Created by PhpStorm.
 * User: FUJITSU
 * Date: 12/21/2018
 * Time: 10:05 PM
 */
class Demo extends CI_Controller{
    public function __construct(){
        parent::__construct();
        $this->load->helper("url");
        $this->load->library("session");
    }

    public function index(){
        $data=array(
            "username" => "Kaito",
            "email" => "codephp2013@gmail.com",
            "website" => "freetuts.net",
            "gender" => "Male",
        );
        $this->session->set_userdata($data);
        $this->session->set_flashdata("flash_open", "Khoi tao session thanh cong");
        redirect(base_url() . "index.php/demo/index2");
    }

    public function index2(){
        echo $this->session->flashdata("flash_open");
        $user=$this->session->userdata("username");
        $gender=$this->session->userdata("gender");
        $email=$this->session->userdata("email");
        echo "Username: $user, Email: $email, Gender: $gender";
        $data=$this->session->all_userdata();
        echo "<pre>";
        print_r($data);
        echo "</pre>";
    }

    public function index3(){
        $this->session->sess_destroy();
        echo "Huy session thanh cong.";
    }

}