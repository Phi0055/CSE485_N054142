<?php
class Muser extends CI_Model{
    public function __construct(){
        parent::__construct();
    }

    public function countAll(){
        $query=$this->db->query("select * from tai_khoan tk inner join thong_tin_tai_khoan tttk on tk.id_tk = tttk.id_tk where tk.cap_do <> 2;");
        return $query->num_rows();
    }

    public function getList($start, $size){
        $start = isset($start)? $start : 0;
        $query=$this->db->query("select * from tai_khoan tk inner join thong_tin_tai_khoan tttk on tk.id_tk = tttk.id_tk where tk.cap_do <> 2 limit $start , $size");
        return $query->result_array();
    }

    public function deleteById($id){
        $this->db->query("delete from ctdgdv where id_tk = $id;");
        $this->db->query("delete from ctdgdddl where id_tk = $id;");
        $this->db->query("delete from thong_tin_tai_khoan where id_tk = $id;");
        $this->db->query("delete from tai_khoan where id_tk = $id;");
    }

    public function add($tk, $mk, $ht, $gt, $email, $ns, $dc, $sdt){
        $this->db->query("insert into tai_khoan(ten_dang_nhap, mat_khau) values('$tk', '$mk');");
        $data=$this->db->query("select id_tk from tai_khoan where id_tk >= all (select id_tk from tai_khoan);")->row_array();
        $id=$data['id_tk'];
        $this->db->query("insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values($id,'$ht','$email',$ns,'$gt','$dc',$sdt);");
    }

    public function edit($id, $mk, $ht, $gt, $email, $ns, $dc, $sdt){
        $this->db->query("update tai_khoan set mat_khau = $mk where id_tk = '$id';");
        $this->db->query("update thong_tin_tai_khoan set ho_ten = '$ht', email = '$email', ngay_sinh = '$ns', gioi_tinh = '$gt', dia_chi = '$dc', sdt = '$sdt' where id_tk = $id;");
    }

    public function getById($id){
        $query=$this->db->query("select * from tai_khoan tk inner join thong_tin_tai_khoan tttk on tk.id_tk = tttk.id_tk where tk.id_tk = $id");
        return $query->row_array();
    }

    public function checkExists($tk, $mk){
        $query = $this->db->query("select * from tai_khoan where ten_dang_nhap = '$tk' and mat_khau = '$mk';");
        if ($query->num_rows() > 0)return TRUE;
        return FALSE;
    }

}
?>