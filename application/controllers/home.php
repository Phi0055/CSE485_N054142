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
        $this->load->view('site/home_site_view');
    }
}