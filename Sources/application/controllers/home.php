<?php
/**
 * Created by PhpStorm.
 * User: FUJITSU
 * Date: 12/6/2018
 * Time: 11:08 AM
 */
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class Home extends CI_Controller{
    public function __construct() {
        parent::__construct();
    }

    public function index(){
        $this->load->model("Mdd");
        $this->load->model("Mcn");
        $this->load->model("Mdv");
        $data['listddtntop2'] = $this->Mdd->getListTNRad(0,2);
        $data['listddnntop2'] = $this->Mdd->getListNNRad(0,2);
        $data['listddbxhtop2'] = $this->Mdd->getListBXH(0,2);
        $data['listddtop2'] = $this->Mdd->getListM(0,2);
        $data['listcntop3'] = $this->Mcn->getListRad(0,3);
        $data['listdvpttop2'] = $this->Mdv->getListPTRad(0,2);
        $data['listdvkstop2'] = $this->Mdv->getListKSRad(0,2);
        $data['listdvbxhtop6'] = $this->Mdv->getListBXH(0,6);
        $this->load->view('site/home_site_view', $data);
    }

}