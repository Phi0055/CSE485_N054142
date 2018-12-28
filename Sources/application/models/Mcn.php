<?php
class Mcn extends CI_Model{
    public function __construct(){
        parent::__construct();
    }

    public function countAll(){
        $query=$this->db->query("select * from cam_nang;");
        return $query->num_rows();
    }

    public function getList($start, $size){
        $start = isset($start)? $start : 0;
        $query=$this->db->query("select * from cam_nang limit $start, $size;");
        return $query->result_array();
    }

    public function getByID($id){
        $query=$this->db->query("select * from cam_nang where id_cn = $id");
        return $query->row_array();
    }

    public function deleteById($id){
        $this->db->query("delete from cam_nang where id_cn = $id;");
    }

    public function getListRad($start, $size){
        $start = isset($start)? $start : 0;
        $query = $this->db->query("select * from cam_nang order by rand() limit $start, $size;");
        return $query->result_array();
    }

}
?>