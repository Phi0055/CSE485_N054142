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
}
?>