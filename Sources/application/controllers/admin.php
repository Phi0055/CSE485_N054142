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
        $this->load->model("Mdd");
        $data['countDD'] = $this->Mdd->countAll();
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
            echo "<script>alert('Lỗi Nhập !!!')</script>";
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
                echo "<script>alert('Thêm Thành Công !!!')</script>";
                $this->get_list_user();
            }
            catch(Exception $e){
                echo "<script>alert('Tài Khoản Đã Tồn Tại !!!')</script>";
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
            echo "<script>alert('Lỗi Nhập !!!')</script>";
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
            echo "<script>alert('Sửa Thành Công !!!')</script>";
            $this->edit_user($id);
        }
    }

    public function delete_user($id){
        $this->load->model("Muser");
        $this->Muser->deleteById($id);
        echo "<script>alert('Xóa Thành Công !!!')</script>";
        $this->get_list_user();
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

    //dd
    public function get_list_dd(){
        $this->load->model("Mdd");
        $config['total_rows'] = $this->Mdd->countAll();
        $config['base_url'] = base_url()."index.php/admin/get_list_dd";
        $config['per_page'] = 5;

        $start=$this->uri->segment(3);
        $this->load->library('pagination', $config);
        $data['listdd']= $this->Mdd->getList($start, $config['per_page']);
        $this->load->view("admin/get_list_dd_admin_view", $data);
    }

    public function add_dd(){
        $this->load->view("admin/s_add_dd_admin_view");
    }

    public function pro_add_dd(){
        //Kiểm tra bằng form validation
        $this->load->library('form_validation');
        $this->form_validation->set_rules('ten', 'Tên', 'required');
        $this->form_validation->set_rules('td', 'Tiêu đề', 'required');
        $this->form_validation->set_rules('nd', 'Nội dung', 'required');
        if($this->form_validation->run() == FALSE){
            echo "<script>alert('Lỗi Nhập !!!')</script>";
            $this->add_dd();
        }
        else{
            $config['upload_path']          = './assets/img/dd/';
            $config['allowed_types']        = 'gif|jpg|jpeg|png';
            $this->load->library('upload', $config);
            if ( ! $this->upload->do_upload('link'))
            {
                echo "<script>alert('Lỗi Upload File !!!')</script>";
                $this->add_dd();
            }
            else
            {
                $ten = isset($_POST['ten']) ? $_POST['ten'] : "";
                $td = isset($_POST['td']) ? $_POST['td'] : "";
                $nd = isset($_POST['nd']) ? $_POST['nd'] : "";
                $link = $this->upload->data('file_name');
                $loai = isset($_POST['loai']) ? $_POST['loai'] : "";
                $this->load->model("Mdd");
                $this->Mdd->add($ten, $link, $td, $nd, $loai);
                echo "<script>alert('Thêm Thành Công !!!')</script>";
                $this->get_list_dd();
            }
        }
    }

    public function edit_dd($id){
        $this->load->model("Mdd");
        $data['dd'] = $this->Mdd->getById($id);
        $this->load->view("admin/s_edit_dd_admin_view", $data);
    }

    public function pro_edit_dd($id){
        //Kiểm tra bằng form validation
        $this->load->library('form_validation');
        $this->form_validation->set_rules('ten', 'Tên', 'required');
        $this->form_validation->set_rules('td', 'Tiêu đề', 'required');
        $this->form_validation->set_rules('nd', 'Nội dung', 'required');
        if($this->form_validation->run() == FALSE){
            echo "<script>alert('Lỗi Nhập !!!')</script>";
            $this->edit_dd($id);
        }
        else{
            $config['upload_path']          = './assets/img/dd/';
            $config['allowed_types']        = 'gif|jpg|jpeg|png';
            $this->load->library('upload', $config);
            if ( ! $this->upload->do_upload('link'))
            {
                echo "<script>alert('Lỗi Upload File !!!')</script>";
                $this->edit_dd($id);
            }
            else {
                $ten = isset($_POST['ten']) ? $_POST['ten'] : "";
                $td = isset($_POST['td']) ? $_POST['td'] : "";
                $nd = isset($_POST['nd']) ? $_POST['nd'] : "";
                $link = $this->upload->data('file_name');
                $loai = isset($_POST['loai']) ? $_POST['loai'] : "";
                $this->load->model("Mdd");
                $this->Mdd->edit($id, $ten, $link, $td, $nd, $loai);
                echo "<script>alert('Sửa Thành Công !!!')</script>";
                $this->edit_dd($id);
            }
        }
    }

    public function delete_dd($id){
        $this->load->model("Mdd");
        $this->Mdd->deleteById($id);
        echo "<script>alert('Xóa Thành Công !!!')</script>";
        $this->get_list_dd();
    }

    public function get_list_dd_s(){
        if (isset($_POST['search'])){
            $s = $_POST['search'];
            $this->session->set_userdata('search', $s);
        }else{
            $s=$this->session->userdata('search');
        }
        $s = trim(htmlspecialchars(addslashes($s)));
        $this->load->model("Mdd");
        $config['total_rows'] = $this->Mdd->countAllS($s);
        $config['base_url'] = base_url()."index.php/admin/get_list_dd_s";
        $config['per_page'] = 5;

        $start=$this->uri->segment(3);
        $this->load->library('pagination', $config);
        $data['listdd']= $this->Mdd->getListS($start, $config['per_page'],$s);
        $this->load->view("admin/get_list_dd_admin_view", $data);
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
        $this->load->view("admin/s_add_dv_admin_view");
    }

    public function pro_add_dv(){
        //Kiểm tra bằng form validation
        $this->load->library('form_validation');
        $this->form_validation->set_rules('ten', 'Tên', 'required');
        $this->form_validation->set_rules('td', 'Tiêu đề', 'required');
        $this->form_validation->set_rules('nd', 'Nội dung', 'required');
        if($this->form_validation->run() == FALSE){
            echo "<script>alert('Lỗi Nhập !!!')</script>";
            $this->add_dv();
        }
        else{
            $config['upload_path']          = './assets/img/dv/';
            $config['allowed_types']        = 'gif|jpg|jpeg|png';
            $this->load->library('upload', $config);
            if ( ! $this->upload->do_upload('link'))
            {
                echo "<script>alert('Lỗi Upload File !!!')</script>";
                $this->add_dv();
            }
            else
            {
                $ten = isset($_POST['ten']) ? $_POST['ten'] : "";
                $td = isset($_POST['td']) ? $_POST['td'] : "";
                $nd = isset($_POST['nd']) ? $_POST['nd'] : "";
                $link = $this->upload->data('file_name');
                $loai = isset($_POST['loai']) ? $_POST['loai'] : "";
                $this->load->model("Mdv");
                $this->Mdv->add($ten, $link, $td, $nd, $loai);
                echo "<script>alert('Thêm Thành Công !!!')</script>";
                $this->get_list_dv();
            }
        }
    }

    public function edit_dv($id){
        $this->load->model("Mdv");
        $data['dv'] = $this->Mdv->getById($id);
        $this->load->view("admin/s_edit_dv_admin_view", $data);
    }

    public function pro_edit_dv($id){
        //Kiểm tra bằng form validation
        $this->load->library('form_validation');
        $this->form_validation->set_rules('ten', 'Tên', 'required');
        $this->form_validation->set_rules('td', 'Tiêu đề', 'required');
        $this->form_validation->set_rules('nd', 'Nội dung', 'required');
        if($this->form_validation->run() == FALSE){
            echo "<script>alert('Lỗi Nhập !!!')</script>";
            $this->edit_dv($id);
        }
        else{
            $config['upload_path']          = './assets/img/dv/';
            $config['allowed_types']        = 'gif|jpg|jpeg|png';
            $this->load->library('upload', $config);
            if ( ! $this->upload->do_upload('link'))
            {
                echo "<script>alert('Lỗi Upload File !!!')</script>";
                $this->edit_dv($id);
            }
            else {
                $ten = isset($_POST['ten']) ? $_POST['ten'] : "";
                $td = isset($_POST['td']) ? $_POST['td'] : "";
                $nd = isset($_POST['nd']) ? $_POST['nd'] : "";
                $link = $this->upload->data('file_name');
                $loai = isset($_POST['loai']) ? $_POST['loai'] : "";
                $this->load->model("Mdv");
                $this->Mdv->edit($id, $ten, $link, $td, $nd, $loai);
                echo "<script>alert('Sửa Thành Công !!!')</script>";
                $this->edit_dv($id);
            }
        }
    }

    public function delete_dv($id){
        $this->load->model("Mdv");
        $this->Mdv->deleteById($id);
        echo "<script>alert('Xóa Thành Công !!!')</script>";
        $this->get_list_dv();
    }

    public function get_list_dv_s(){
        if (isset($_POST['search'])){
            $s = $_POST['search'];
            $this->session->set_userdata('search', $s);
        }else{
            $s=$this->session->userdata('search');
        }
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
        if($this->form_validation->run() == FALSE){
            echo "<script>alert('Lỗi Nhập !!!')</script>";
            $this->add_cn();
        }
        else {
            $config['upload_path']          = './assets/img/cn/';
            $config['allowed_types']        = 'gif|jpg|jpeg|png';
            $this->load->library('upload', $config);
            if ( ! $this->upload->do_upload('link'))
            {
                echo "<script>alert('Lỗi Upload File !!!')</script>";
                $this->add_cn();
            }
            else {
                $this->load->model("Mcn");
                $td = isset($_POST['td']) ? $_POST['td'] : "";
                $nd = isset($_POST['nd']) ? $_POST['nd'] : "";
                $link = $this->upload->data('file_name');
                $this->Mcn->add($td, $nd, $link);
                echo "<script>alert('Thêm Thành Công !!!')</script>";
                $this->get_list_cn();
            }
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
        if($this->form_validation->run() == FALSE){
            echo "<script>alert('Lỗi Nhập !!!')</script>";
            $this->edit_cn($id);
        }
        else {
            $config['upload_path']          = './assets/img/cn/';
            $config['allowed_types']        = 'gif|jpg|jpeg|png';
            $this->load->library('upload', $config);
            if ( ! $this->upload->do_upload('link'))
            {
                echo "<script>alert('Lỗi Upload File !!!')</script>";
                $this->edit_cn($id);
            }
            else {
                $this->load->model("Mcn");
                $td = isset($_POST['td']) ? $_POST['td'] : "";
                $nd = isset($_POST['nd']) ? $_POST['nd'] : "";
                $link = $this->upload->data('file_name');
                $this->Mcn->edit($id, $td, $nd, $link);
                echo "<script>alert('Sửa Thành Công !!!')</script>";
                $this->edit_cn($id);
            }
        }
    }

    public function delete_cn($id){
        $this->load->model("Mcn");
        $this->Mcn->deleteById($id);
        echo "<script>alert('Xóa Thành Công !!!')</script>";
        $this->get_list_cn();
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