<?php
class Muser extends CI_Model{
    public function __construct(){
        parent::__construct();
    }

    public function listUser(){
        $query=$this->db->query("SELECT * FROM tai_khoan where cap_do <> 2");
        return $query->result_array();
    }
}
?>