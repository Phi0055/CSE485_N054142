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
        $this->load->model("Mdddl");
        $data['listdltntop2'] = $this->Mdddl->getListMTNS(2);
        $data['listdddltop2'] = $this->Mdddl->getListMS(2);
        $this->load->view('site/home_site_view', $data);
    }
}