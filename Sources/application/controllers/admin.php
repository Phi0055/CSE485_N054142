<?php
/**
 * Created by PhpStorm.
 * User: FUJITSU
 * Date: 12/9/2018
 * Time: 10:49 AM
 */
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class Admin extends CI_Controller{
    public function __construct() {
        parent::__construct();
    }

    public function index(){
        $this->load->model("Muser");
        $data['countUser'] = $this->Muser->countAll();
        $this->load->model("Mdddl");
        $data['countDDDL'] = $this->Mdddl->countAll();
        $this->load->model("Mcn");
        $data['countCN'] = $this->Mcn->countAll();
        $this->load->model("Mdv");
        $data['countDV'] = $this->Mdv->countAll();
        $this->load->view('admin/home_admin_view', $data);
    }

    public function get_list_user(){
        $this->load->model("Muser");
        $config['total_rows'] = $this->Muser->countAll();
        $config['base_url'] = base_url()."index.php/admin/get_list_user";
        $config['per_page'] = 5;

        $start=$this->uri->segment(3);
        $this->load->library('pagination', $config);
        $data['listUser']= $this->Muser->getList($start, $config['per_page']);
        $this->load->view("admin/get_list_user_admin_view", $data);
    }

    public function get_list_dddl(){
        $this->load->model("Mdddl");
        $config['total_rows'] = $this->Mdddl->countAll();
        $config['base_url'] = base_url()."index.php/admin/get_list_dddl";
        $config['per_page'] = 5;

        $start=$this->uri->segment(3);
        $this->load->library('pagination', $config);
        $data['listdddl']= $this->Mdddl->getList($start, $config['per_page']);
        $this->load->view("admin/get_list_dddl_admin_view", $data);
    }


    public function get_list_dv(){
        $this->load->model("Mdv");
        $config['total_rows'] = $this->Mdv->countAll();
        $config['base_url'] = base_url()."index.php/admin/get_list_dv";
        $config['per_page'] = 5;

        $start=$this->uri->segment(3);
        $this->load->library('pagination', $config);
        $data['listdv']= $this->Mdv->getList($start, $config['per_page']);
        $this->load->view("admin/get_list_dv_admin_view", $data);
    }

    public function get_list_cn(){
        $this->load->model("Mcn");;
        $config['total_rows'] = $this->Mcn->countAll();
        $config['base_url'] = base_url()."index.php/admin/get_list_cn";
        $config['per_page'] = 5;

        $start=$this->uri->segment(3);
        $this->load->library('pagination', $config);
        $data['listcn']= $this->Mcn->getList($start, $config['per_page']);
        $this->load->view("admin/get_list_cn_admin_view", $data);
    }

    public function add_dddl(){
        $this->load->view("admin/s_add_dddl_admin_view");
    }

    public function edit_dddl(){
        $this->load->view("admin/s_edit_dddl_admin_view");
    }

    public function delete_dddl($id){
        echo $id;
        //redirect(base_url() . "index.php/admin/get_list_dddl");
    }
}