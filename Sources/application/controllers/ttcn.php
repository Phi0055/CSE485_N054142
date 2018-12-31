<?php
/**
 * Created by PhpStorm.
 * User: FUJITSU
 * Date: 12/10/2018
 * Time: 9:33 AM
 */
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class Ttcn extends CI_Controller{
    public function __construct() {
        parent::__construct();
    }

    public function index($id){
        $this->load->model("Muser");
        $data['user'] = $this->Muser->getById($id);
        $this->load->view('site/ttcner_site_view', $data);
    }
}