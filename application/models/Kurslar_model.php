<?php

class Kurslar_model extends CI_Model{

    public function __construct()
    {
        parent::__construct();
    }

    public function join($join = array(), $select = ""){

        $this->db->select($select);
        $this->db->from("kurslar");
        $this->db->join($join["table"], $join["condition"]);
        return $this->db->get()->result();

    }

}
