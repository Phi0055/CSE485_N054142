<?php
/**
 * Created by PhpStorm.
 * User: FUJITSU
 * Date: 12/6/2018
 * Time: 11:08 AM
 */
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class Dich_vu extends CI_Controller{
    public function __construct() {
        parent::__construct();
    }

    public function index(){
        $this->load->view('site/dich_vu_site_view');
    }

    public function view_detail(){
        $this->load->view("site/s_detail_dv_site_view");
    }

}