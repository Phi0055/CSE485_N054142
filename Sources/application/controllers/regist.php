<?php
/**
 * Created by PhpStorm.
 * User: FUJITSU
 * Date: 12/7/2018
 * Time: 11:08 AM
 */
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class Regist extends CI_Controller{
    public function __construct() {
        parent::__construct();
    }

    public function index(){
        $this->load->view('site/register_site_view');
    }
}