<?php

class Measurement_model extends Crud_model {

    private $table = null;

    function __construct() {
        $this->table = 'measurement';
        parent::__construct($this->table);
    }

    function get_details($options = array()) {
        $measurement_table = $this->db->dbprefix('measurement');
        $where = "";
        $id = get_array_value($options, "id");
        if ($id) {
            $where = " AND $measurement_table.id=$id";
        }

        $sql = "SELECT $measurement_table.*
        FROM $measurement_table
        WHERE $measurement_table.deleted=0 $where";
        return $this->db->query($sql);
    }

}
