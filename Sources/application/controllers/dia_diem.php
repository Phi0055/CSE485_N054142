<?php
/**
 * Created by PhpStorm.
 * User: FUJITSU
 * Date: 12/6/2018
 * Time: 11:08 AM
 */
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class Dia_diem extends CI_Controller{
    public function __construct() {
        parent::__construct();
    }

    public function index(){
        $this->load->model("Mdd");
        $data['listddtntop3'] = $this->Mdd->getListTNRad(0,3);
        $data['listddnntop3'] = $this->Mdd->getListNNRad(0,3);
        $data['listddtop3'] = $this->Mdd->getListM(0,3);
        $data['listddbxhtop3'] = $this->Mdd->getListBXH(0,3);
        $this->load->view('site/dia_diem_site_view', $data);
    }

    public function view_trong_nuoc(){
        $this->load->model("Mdd");
        $config['total_rows'] = $this->Mdd->countTN();
        $config['base_url'] = base_url()."index.php/dia_diem/view_trong_nuoc";
        $config['per_page'] = 9;

        $start=$this->uri->segment(3);
        $this->load->library('pagination', $config);
        $data['listddtn']= $this->Mdd->getListMTN($start, $config['per_page']);
        $this->load->view("site/dia_diem_trong_nuoc_site_view", $data);
    }

    public function view_ngoai_nuoc(){
        $this->load->model("Mdd");
        $config['total_rows'] = $this->Mdd->countNN();
        $config['base_url'] = base_url()."index.php/dia_diem/view_ngoai_nuoc";
        $config['per_page'] = 9;

        $start=$this->uri->segment(3);
        $this->load->library('pagination', $config);
        $data['listddnn']= $this->Mdd->getListMNN($start, $config['per_page']);
        $this->load->view("site/dia_diem_ngoai_nuoc_site_view", $data);
    }

    public function view_bxh(){
        $this->load->model("Mdd");
        $config['total_rows'] = $this->Mdd->countBXH();
        $config['base_url'] = base_url()."index.php/dia_diem/view_bxh";
        $config['per_page'] = 9;

        $start=$this->uri->segment(3);
        $this->load->library('pagination', $config);
        $data['listddbxh']= $this->Mdd->getListBXH($start, $config['per_page']);
        $this->load->view('site/dia_diem_bxh_site_view', $data);
    }

    public function view_moi(){
        $this->load->model("Mdd");
        $config['total_rows'] = $this->Mdd->countAll();
        $config['base_url'] = base_url()."index.php/dia_diem/view_moi";
        $config['per_page'] = 9;

        $start=$this->uri->segment(3);
        $this->load->library('pagination', $config);
        $data['listddm']= $this->Mdd->getListM($start, $config['per_page']);
        $this->load->view("site/dia_diem_moi_site_view", $data);
    }

    public function view_detail($id){
        $this->load->model("Mdd");
        $data['dd'] = $this->Mdd->getByID($id);

        //Lấy số sao
        $sums =  $this->Mdd->getSumStarById($id);
        $data['counts'] =  $this->Mdd->getCountStarById($id);
        $temp = $data['counts']['counts'];

        if ($sums['sums'] == "")$sums['sums'] = 0;
        if ($data['counts']['counts'] == "0")$data['counts']['counts'] = 1;
        $data['star'] = $sums['sums'] / $data['counts']['counts'];

        if ($temp == "0")$data['counts']['counts'] = 0;

        //Lấy 4 dd ngẫu nhiên tương ứng
        $type = $this->Mdd->getTypeById($id);
        $data['listddtop4'] = array();
        if ($type['loai'] === "Trong Nước"){
            $data['listddtop4'] = $this->Mdd->getListTNRad(0,4);
        }elseif ($type['loai'] === "Ngoài Nước"){
            $data['listddtop4'] = $this->Mdd->getListNNRad(0,4);
        }
        //Lấy comments
        $data['comments'] = $this->Mdd->getComments($id);
        $this->load->view("site/s_detail_dd_site_view", $data);
    }
}