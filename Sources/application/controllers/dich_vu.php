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

    public function view_detail($id){
        $this->load->model("Mdv");
        $data['dv'] = $this->Mdv->getByID($id);
        $this->load->view("site/s_detail_dv_site_view", $data);
    }

    public function view_pt(){
        $this->load->model("Mdv");
        $config['total_rows'] = $this->Mdv->countPT();
        $config['base_url'] = base_url()."index.php/dich_vu/view_pt";
        $config['per_page'] = 9;

        $start=$this->uri->segment(3);
        $this->load->library('pagination', $config);
        $data['listdvpt'] = $this->Mdv->getListPT($start, $config['per_page']);
        $this->load->view("site/dich_vu_pt_site_view", $data);
    }

}