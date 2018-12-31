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
        //Nếu chưa đăng nhập
        if (!$this->session->userdata("CheckLogin")){
            redirect(base_url());
        }
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

    //USER
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

    public function add_user(){
        $this->load->view("admin/s_add_user_admin_view");
    }

    public function pro_add_user(){
        //Kiểm tra bằng form validation
        $this->load->library('form_validation');
        $this->form_validation->set_rules('tk', 'Tên Đăng Nhập', 'required');
        $this->form_validation->set_rules('mk', 'Mật Khẩu', 'required');
        $this->form_validation->set_rules('gt', 'Giới Tính', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('sdt', 'Số Điện Thoại', 'numeric');
        if($this->form_validation->run() == FALSE){
            $this->add_user();
        }
        else{
            try{
                $tk = isset($_POST['tk']) ? $_POST['tk'] : "";
                $mk = isset($_POST['mk']) ? $_POST['mk'] : "";
                $ht = isset($_POST['ht']) ? $_POST['ht'] : "";
                $gt = isset($_POST['gt']) ? $_POST['gt'] : "Nam";
                $email = isset($_POST['email']) ? $_POST['email'] : "";
                $ns = isset($_POST['ns']) ? $_POST['ns'] : "";
                $dc = isset($_POST['dc']) ? $_POST['dc'] : "";
                $sdt = isset($_POST['sdt']) ? $_POST['sdt'] : "";
                $this->load->model("Muser");
                $this->Muser->add($tk, $mk, $ht, $gt, $email, $ns, $dc, $sdt);
                $this->get_list_user();
            }
            catch(Exception $e){
                echo "<script lang=\"js\">alert(\"Tài khoản đã tồn tại\");</script>";
                $this->add_user();
            }
        }
    }

    public function edit_user($id){
        $this->load->model("Muser");
        $data['user'] = $this->Muser->getById($id);
        $this->load->view("admin/s_edit_user_admin_view", $data);
    }

    public function pro_edit_user($id){
        //Kiểm tra bằng form validation
        $this->load->library('form_validation');
        $this->form_validation->set_rules('mk', 'Mật Khẩu', 'required');
        $this->form_validation->set_rules('gt', 'Giới Tính', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('sdt', 'Số Điện Thoại', 'numeric');
        if($this->form_validation->run() == FALSE){
            $this->edit_user($id);
        }
        else{
            $mk = isset($_POST['mk']) ? $_POST['mk'] : "";
            $ht = isset($_POST['ht']) ? $_POST['ht'] : "";
            $gt = isset($_POST['gt']) ? $_POST['gt'] : "Nam";
            $email = isset($_POST['email']) ? $_POST['email'] : "";
            $ns = isset($_POST['ns']) ? $_POST['ns'] : "";
            $dc = isset($_POST['dc']) ? $_POST['dc'] : "";
            $sdt = isset($_POST['sdt']) ? $_POST['sdt'] : "";
            $this->load->model("Muser");
            $this->Muser->edit($id, $mk, $ht, $gt, $email, $ns, $dc, $sdt);
            $this->get_list_user();
        }
    }

    public function delete_user($id){
        $this->load->model("Muser");
        $this->Muser->deleteById($id);
        redirect(base_url() . "index.php/admin/get_list_user");
    }

    public function get_list_user_s(){
        if (isset($_POST['search'])){
            $s = $_POST['search'];
            $this->session->set_userdata('search', $s);
        }else{
            $s=$this->session->userdata('search');
        }
        $s = trim(htmlspecialchars(addslashes($s)));
        $this->load->model("Muser");
        $config['total_rows'] = $this->Muser->countAllS($s);
        $config['base_url'] = base_url()."index.php/admin/get_list_user_s";
        $config['per_page'] = 5;

        $start=$this->uri->segment(3);
        $this->load->library('pagination', $config);
        $data['listUser']= $this->Muser->getListS($start, $config['per_page'], $s);
        $this->load->view("admin/get_list_user_admin_view", $data);
    }

    //DDDL
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

    public function add_dddl(){
        $this->load->view("admin/s_add_dddl_admin_view");
    }

    public function pro_add_dddl(){
        //Kiểm tra bằng form validation
        $this->load->library('form_validation');
        $this->form_validation->set_rules('ten', 'Tên', 'required');
        $this->form_validation->set_rules('td', 'Tiêu đề', 'required');
        $this->form_validation->set_rules('nd', 'Nội dung', 'required');
        $this->form_validation->set_rules('link', 'Hình ảnh', 'required');
        if($this->form_validation->run() == FALSE){
            $this->add_dddl();
        }
        else{
            $ten = isset($_POST['ten']) ? $_POST['ten'] : "";
            $td = isset($_POST['td']) ? $_POST['td'] : "";
            $nd = isset($_POST['nd']) ? $_POST['nd'] : "";
            $link = isset($_POST['link']) ? $_POST['link'] : "";
            $cd = isset($_POST['cd']) ? $_POST['cd'] : "";
            $this->load->model("Mdddl");
            $this->Mdddl->add($ten, $link, $td, $nd, $cd);
            $this->get_list_dddl();
        }
    }

    public function edit_dddl($id){
        $this->load->model("Mdddl");
        $data['dddl'] = $this->Mdddl->getById($id);
        $this->load->view("admin/s_edit_dddl_admin_view", $data);
    }

    public function pro_edit_dddl(){

    }

    public function delete_dddl($id){
        $this->load->model("Mdddl");
        $this->Mdddl->deleteById($id);
        redirect(base_url() . "index.php/admin/get_list_dddl");
    }

    public function get_list_dddl_s(){
        if (isset($_POST['search'])){
            $s = $_POST['search'];
            $this->session->set_userdata('search', $s);
        }else{
            $s=$this->session->userdata('search');
        }
        $s = trim(htmlspecialchars(addslashes($s)));
        $this->load->model("Mdddl");
        $config['total_rows'] = $this->Mdddl->countAllS($s);
        $config['base_url'] = base_url()."index.php/admin/get_list_dddl_s";
        $config['per_page'] = 5;

        $start=$this->uri->segment(3);
        $this->load->library('pagination', $config);
        $data['listdddl']= $this->Mdddl->getListS($start, $config['per_page'],$s);
        $this->load->view("admin/get_list_dddl_admin_view", $data);
    }

    //DV
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

    public function add_dv(){

    }

    public function pro_add_dv(){

    }

    public function edit_dv(){

    }

    public function pro_edit_dv(){

    }

    public function delete_dv($id){
        $this->load->model("Mdv");
        $this->Mdv->deleteById($id);
        redirect(base_url() . "index.php/admin/get_list_dv");
    }

    public function get_list_dv_s(){
        if (isset($_POST['search'])){
            $s = $_POST['search'];
            $this->session->set_userdata('search', $s);
        }else{
            $s=$this->session->userdata('search');
        }
        //$s = isset($_POST['search']) ? $_POST['search'] : "";
        //echo $s;
        $s = trim(htmlspecialchars(addslashes($s)));
        $this->load->model("Mdv");
        $config['total_rows'] = $this->Mdv->countAllS($s);
        $config['per_page'] = 5;
        $config['base_url'] = base_url()."index.php/admin/get_list_dv_s";

        $start=$this->uri->segment(3);
        $this->load->library('pagination', $config);
        $data['listdv']= $this->Mdv->getListS($start, $config['per_page'], $s);
        $this->load->view("admin/get_list_dv_admin_view", $data);
    }

    //CN
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

    public function add_cn(){
        $this->load->view("admin/s_add_cn_admin_view");
    }

    public function pro_add_cn(){
        //Kiểm tra bằng form validation
        $this->load->library('form_validation');
        $this->form_validation->set_rules('td', 'Tiêu Đề', 'required');
        $this->form_validation->set_rules('nd', 'Nội Dung', 'required');
        $this->form_validation->set_rules('link', 'Hình Ảnh', 'required');
        if($this->form_validation->run() == FALSE){
            $this->add_cn();
        }
        else {
            $this->load->model("Mcn");
            $td = isset($_POST['td']) ? $_POST['td'] : "";
            $nd = isset($_POST['nd']) ? $_POST['nd'] : "";
            $link = isset($_POST['link']) ? $_POST['link'] : "";
            $this->Mcn->add($td, $nd, $link);
            $this->get_list_cn();
        }
    }

    public function edit_cn($id){
        $this->load->model("Mcn");
        $data['cn'] = $this->Mcn->getByID($id);
        $this->load->view("admin/s_edit_cn_admin_view", $data);
    }

    public function pro_edit_cn($id){
        //Kiểm tra bằng form validation
        $this->load->library('form_validation');
        $this->form_validation->set_rules('td', 'Tiêu Đề', 'required');
        $this->form_validation->set_rules('nd', 'Nội Dung', 'required');
        $this->form_validation->set_rules('link', 'Hình Ảnh', 'required');
        if($this->form_validation->run() == FALSE){
            $this->edit_cn($id);
        }
        else {
            $this->load->model("Mcn");
            $td = isset($_POST['td']) ? $_POST['td'] : "";
            $nd = isset($_POST['nd']) ? $_POST['nd'] : "";
            $link = isset($_POST['link']) ? $_POST['link'] : "";
            $this->Mcn->edit($id, $td, $nd, $link);
            $this->get_list_cn();
        }
    }

    public function delete_cn($id){
        $this->load->model("Mcn");
        $this->Mcn->deleteById($id);
        redirect(base_url() . "index.php/admin/get_list_cn");
    }

    public function get_list_cn_s(){
        if (isset($_POST['search'])){
            $s = $_POST['search'];
            $this->session->set_userdata('search', $s);
        }else{
            $s=$this->session->userdata('search');
        }
        $s = trim(htmlspecialchars(addslashes($s)));
        $this->load->model("Mcn");
        $config['total_rows'] = $this->Mcn->countAllS($s);
        $config['base_url'] = base_url()."index.php/admin/get_list_cn_s";
        $config['per_page'] = 5;

        $start=$this->uri->segment(3);
        $this->load->library('pagination', $config);
        $data['listcn']= $this->Mcn->getListS($start, $config['per_page'], $s);
        $this->load->view("admin/get_list_cn_admin_view", $data);
    }

}