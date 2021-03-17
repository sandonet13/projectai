<?php

class Pcash_model extends Crud_model
{
    private $table = null;

    function __construct()
    {
        $this->table = 'petty_cash';
        parent::__construct($this->table);
    }

    function get_list()
    {
        $sql = "SELECT * FROM petty_cash";
        return $this->db->query($sql);
    }
    
    function get_details_cibitung($location)
    {
        $sql = 'SELECT * FROM petty_cash WHERE location = Cibitung';
        return $this->db->query($sql);
    }

    function get_details($id)
    {
        $sql = 'SELECT * FROM petty_cash WHERE id = $id';
        return $this->db->query($sql);
    }
}
