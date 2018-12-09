<?php
/**
 * Created by PhpStorm.
 * User: FUJITSU
 * Date: 12/6/2018
 * Time: 11:08 AM
 */
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class Du_lich extends CI_Controller{
    public function __construct() {
        parent::__construct();
    }

    public function index(){
        $this->load->view('site/du_lich_site_view');
    }

    public function view_trong_nuoc(){
        $this->load->view('site/du_lich_trong_nuoc_site_view');
    }

    public function view_ngoai_nuoc(){
        $this->load->view('site/du_lich_ngoai_nuoc_site_view');
    }

    public function view_bxh(){
        $this->load->view('site/du_lich_bxh_site_view');
    }

    public function view_moi(){
        $this->load->view('site/du_lich_moi_site_view');
    }
}