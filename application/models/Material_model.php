<?php

class Material_model extends Crud_model
{
    private $table = null;

    function __construct()
    {
        $this->table = 'material_request';
        parent::__construct($this->table);
    }

    function get_list()
    {
        $sql = "SELECT * FROM material_request";
        return $this->db->query($sql);
    }

    function get_details($id)
    {
        $sql = 'SELECT * FROM material_request WHERE req_asset_id = $id';
        return $this->db->query($sql);
    }
}
