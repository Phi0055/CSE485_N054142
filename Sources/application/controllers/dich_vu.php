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
        $this->load->model("Mdv");
        $data['listdvkstop3'] = $this->Mdv->getListKSRad(0,3);
        $data['listdvpttop3'] = $this->Mdv->getListPTRad(0,3);
        $data['listdvbxhtop3'] = $this->Mdv->getListBXH(0,3);
        $this->load->view('site/dich_vu_site_view', $data);
    }

    public function view_detail($id){
        $this->load->model("Mdv");
        $data['dv'] = $this->Mdv->getByID($id);

        //Lấy số sao
        $sums = $this->Mdv->getSumStarById($id);
        $data['counts']= $this->Mdv->getCountStarById($id);
        $temp = $data['counts']['counts'];

        if ($sums['sums'] == "")$sums['sums'] = 0;
        if ($data['counts']['counts'] == "0")$data['counts']['counts'] = 1;

        $data['star'] = $sums['sums'] / $data['counts']['counts'];
        if ($temp == "0")$data['counts']['counts'] = 0;

        //Lấy 4 dv tương ứng ngẫu nhiên
        $data['listdvtop4'] = $this->Mdv->getListPTRad(0, 4);
        $type = $this->Mdv->getTypeById($id);
        $data['listdvtop4'] = array();
        if ($type['loai'] === "Phương Tiện"){
            $data['listdvtop4'] = $this->Mdv->getListPTRad(0,4);
        }elseif ($type['loai'] === "Khách Sạn"){
            $data['listdvtop4'] = $this->Mdv->getListKSRad(0,4);
        }
        //Lấy comments
        $data['comments'] = $this->Mdv->getComments($id);
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

    public function view_ks(){
        $this->load->model("Mdv");
        $config['total_rows'] = $this->Mdv->countKS();
        $config['base_url'] = base_url()."index.php/dich_vu/view_ks";
        $config['per_page'] = 9;

        $start=$this->uri->segment(3);
        $this->load->library('pagination', $config);
        $data['listdvks'] = $this->Mdv->getListKS($start, $config['per_page']);
        $this->load->view("site/dich_vu_ks_site_view", $data);
    }

    public function view_bxh(){
        $this->load->model("Mdv");
        $config['total_rows'] = $this->Mdv->countBXH();
        $config['base_url'] = base_url()."index.php/dich_vu/view_bxh";
        $config['per_page'] = 9;

        $start=$this->uri->segment(3);
        $this->load->library('pagination', $config);
        $data['listdvbxh'] = $this->Mdv->getListBXH($start, $config['per_page']);
        $this->load->view("site/dich_vu_bxh_site_view", $data);
    }

}