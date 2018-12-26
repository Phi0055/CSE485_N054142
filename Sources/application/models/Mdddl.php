<?php
class Mdddl extends CI_Model{
    public function __construct(){
        parent::__construct();
    }

    public function countAll(){
        $query=$this->db->query("select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl;");
        return $query->num_rows();
    }

    public function countTN(){
        $query=$this->db->query("select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl where ct.chu_de = 'Trong Nước';");
        return $query->num_rows();
    }

    public function countNN(){
        $query=$this->db->query("select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl where ct.chu_de = 'Ngoài Nước';");
        return $query->num_rows();
    }

    public function getList($start, $size){
        $start = isset($start)? $start : 0;
        $query=$this->db->query("select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl limit $start , $size");
        return $query->result_array();
    }

    public function getListM($start, $size){
        $start = isset($start)? $start : 0;
        $query=$this->db->query("select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl order by dd.id_dddl desc limit $start , $size");
        return $query->result_array();
    }

    public function getListMTN($start, $size){
        $start = isset($start)? $start : 0;
        $query=$this->db->query("select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl where ct.chu_de = 'Trong Nước' order by dd.id_dddl desc limit $start , $size");
        return $query->result_array();
    }

    public function getListMNN($start, $size){
        $start = isset($start)? $start : 0;
        $query=$this->db->query("select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl where ct.chu_de = 'Ngoài Nước' order by dd.id_dddl desc limit $start , $size");
        return $query->result_array();
    }

    public function getListTNRad($start, $size){
        $start = isset($start)? $start : 0;
        $query=$this->db->query("select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl where ct.chu_de = 'Trong Nước' order by RAND() limit $start , $size");
        return $query->result_array();
    }

    public function getListNNRad($start, $size){
        $start = isset($start)? $start : 0;
        $query=$this->db->query("select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl where ct.chu_de = 'Ngoài Nước' order by RAND() limit $start , $size");
        return $query->result_array();
    }

    public function deleteById($id){
        $this->db->query("delete from ctdddl where id_dddl = $id;");
        $this->db->query("delete from ctdgdddl where id_dddl = $id;");
        $this->db->query("delete from dd_du_lich where id_dddl = $id;");
    }

    public function getByID($id){
        $query=$this->db->query("select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl where dd.id_dddl = $id");
        return $query->row_array();
    }

    public function getTypeById($id){
        $query=$this->db->query("select chu_de from ctdddl where id_dddl = $id");
        return $query->row_array();
    }

    public function getSumStarById($id){
        $query=$this->db->query("select sum(so_sao_dddl) as sums from ctdgdddl where id_dddl = $id");
        return $query->row_array();
    }

    public function getCountStarById($id){
        $query=$this->db->query("select count(so_sao_dddl) as counts from ctdgdddl where id_dddl = $id");
        return $query->row_array();
    }

    public function getComments($id){
        $query = $this->db->query("select * from ctdgdddl ct join thong_tin_tai_khoan tk on ct.id_tk = tk.id_tk where ct.id_dddl = $id;");
        return $query->result_array();
    }

}
?>