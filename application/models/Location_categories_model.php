<?php

class Location_categories_model extends Crud_model {

    private $table = null;

    function __construct() {
        $this->table = 'location_categories';
        parent::__construct($this->table);
    }

    function get_details($options = array()) {
        $location_categories_table = $this->db->dbprefix('location_categories');
        $where = "";
        $id = get_array_value($options, "id");
        if ($id) {
            $where = " AND $location_categories_table.id=$id";
        }

        $sql = "SELECT $location_categories_table.*
        FROM $location_categories_table
        WHERE $location_categories_table.deleted=0 $where";
        return $this->db->query($sql);
    }

}
