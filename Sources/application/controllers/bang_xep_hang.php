<?php
/**
 * Created by PhpStorm.
 * User: FUJITSU
 * Date: 12/6/2018
 * Time: 11:08 AM
 */
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class Bang_xep_hang extends CI_Controller{
    public function __construct() {
        parent::__construct();
    }

    public function index(){
        $this->load->model("Mdddl");
        $this->load->model("Mdv");
        $data['listdlbxhtop6'] = $this->Mdddl->getListBXH(0,6);
        $data['listdvbxhtop6'] = $this->Mdv->getListBXH(0,6);
//        echo "Du Lịch<br>";
//        foreach ($data['listdlbxhtop6'] as $row){
//            print_r($row);
//            echo "<br>";
//        }
//        echo "Dịch Vụ<br>";
//        foreach ($data['listdvbxhtop6'] as $row){
//            print_r($row);
//            echo "<br>";
//        }
        $this->load->view('site/bang_xep_hang_site_view', $data);
    }

}