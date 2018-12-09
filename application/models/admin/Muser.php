<?php
class Muser extends CI_Model{
    public function __construct(){
        parent::__construct();
    }

    public function listUser(){
        $query=$this->db->query("SELECT * FROM taikhoan where level <> 2");
        return $query->result_array();
    }
}
?>