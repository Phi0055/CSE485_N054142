<?php
/**
 * Created by PhpStorm.
 * User: FUJITSU
 * Date: 12/6/2018
 * Time: 11:08 AM
 */
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class Site extends CI_Controller{
    public function __construct() {
        parent::__construct();
    }

    public function about(){
        $this->load->view("site/s_about_site_view");
    }

    public function contact(){
        $this->load->view("site/s_contact_site_view");
    }

    public function blog(){
        $this->load->view("site/s_blog_site_view");
    }

}