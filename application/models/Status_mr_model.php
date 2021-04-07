<?php

class Status_mr_model extends Crud_model {

    private $table = null;

    function __construct() {
        $this->table = 'status_mr';
        parent::__construct($this->table);
    }

    function get_details($options = array()) {
        $status_mr_table = $this->db->dbprefix('status_mr');
        $where = "";
        $id = get_array_value($options, "id");
        if ($id) {
            $where = " AND $status_mr_table.id=$id";
        }

        $sql = "SELECT $status_mr_table.*
        FROM $status_mr_table
        WHERE $status_mr_table.deleted=0 $where";
        return $this->db->query($sql);
    }

}
