<?php

class Add_item_model extends Crud_model {

    private $table = null;

    function __construct() {
        $this->table = 'add_item';
        parent::__construct($this->table);
        
        
    }

    function get_details($options = array()) {
    $add_item_table = $this->db->dbprefix('add_item');
    //$add_material_request_table = $this->db->dbprefix('add_material_request');

        $where = "";
        $id = get_array_value($options, "id");
        if ($id) {
            $where = " AND $add_item_table.id=$id";
        }
        

        $sql = "SELECT $add_item_table.*
        FROM $add_item_table
        WHERE $add_item_table.deleted=0 $where";
        return $this->db->query($sql);
    }
    
 public function upddata($data) {
        $add_item_table = $this->db->dbprefix('add_item');
        $this->db->where('mr_no', $data['mr_no']);
        $this->db->where('status_id', $data['status_id']);
        $query = $this->db->update($add_item_table ,array('status_id' => 1));
        return true;
  }


}