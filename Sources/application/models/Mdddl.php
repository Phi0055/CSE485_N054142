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

    public function getListMS($size){
        $query=$this->db->query("select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl order by dd.id_dddl desc limit $size");
        return $query->result_array();
    }

    public function getListMTN($start, $size){
        $start = isset($start)? $start : 0;
        $query=$this->db->query("select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl where ct.chu_de = 'Trong Nước' order by dd.id_dddl desc limit $start , $size");
        return $query->result_array();
    }

    public function getListMTNS($size){
        $query=$this->db->query("select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl where ct.chu_de = 'Trong Nước' order by dd.id_dddl desc limit $size");
        return $query->result_array();
    }

    public function getListMNN($start, $size){
        $start = isset($start)? $start : 0;
        $query=$this->db->query("select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl where ct.chu_de = 'Ngoài Nước' order by dd.id_dddl desc limit $start , $size");
        return $query->result_array();
    }

    public function getListMNNS($size){
        $query=$this->db->query("select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl where ct.chu_de = 'Ngoài Nước' order by dd.id_dddl desc limit $size");
        return $query->result_array();
    }

}
?>