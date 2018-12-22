<?php
class Mdv extends CI_Model{
    public function __construct(){
        parent::__construct();
    }

    public function countAll(){
        $query=$this->db->query("select * from dich_vu dv inner join ctdv ct on dv.id_dv = ct.id_dv;");
        return $query->num_rows();
    }

    public function getList($start, $size){
        $start = isset($start)? $start : 0;
        $query=$this->db->query("select * from dich_vu dv inner join ctdv ct on dv.id_dv = ct.id_dv limit $start , $size");
        return $query->result_array();
    }


    public function countPT(){
        $query = $this->db->query("select * from dich_vu dv inner join ctdv ct on dv.id_dv = ct.id_dv where ct.loai = 'phương tiện';");
        return $query->num_rows();
    }

    public function getListPT($start, $size){
        $start = isset($start)? $start : 0;
        $query = $this->db->query("select * from dich_vu dv inner join ctdv ct on dv.id_dv = ct.id_dv where ct.loai = 'phương tiện' limit $start, $size;");
        return $query->result_array();
    }
    
    public function countKS(){
        $query = $this->db->query("select * from dich_vu dv inner join ctdv ct on dv.id_dv = ct.id_dv where ct.loai = 'khách sạn';");
        return $query->num_rows();
    }

    public function getListKS($start, $size){
        $start = isset($start)? $start : 0;
        $query = $this->db->query("select * from dich_vu dv inner join ctdv ct on dv.id_dv = ct.id_dv where ct.loai = 'khách sạn' limit $start, $size;");
        return $query->result_array();
    }
    
    public function deleteById($id){
        $this->db->query("delete from ctdv where id_dv = $id;");
        $this->db->query("delete from ctdgdv where id_dv = $id;");
        $this->db->query("delete from dich_vu where id_dv = $id;");
    }
    public function getByID($id){
        $query=$this->db->query("select * from dich_vu dd inner join ctdv ct on dd.id_dv = ct.id_dv where dd.id_dv = $id");
        return $query->row_array();
    }
    
}
?>