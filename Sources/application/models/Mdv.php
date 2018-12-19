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
}
?>