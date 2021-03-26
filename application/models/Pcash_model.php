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
    
    function get_list_audemars()
    {
        $petty_table = $this->db->dbprefix('petty_cash');
        $expenses_table = $this->db->dbprefix('expenses');
        
        $sql = "SELECT (SELECT SUM($petty_table.balance) FROM $petty_table WHERE $petty_table.location_id=1 AND $petty_table.deleted=0) - (SELECT SUM($expenses_table.amount) * $expenses_table.qty FROM $expenses_table where $expenses_table.location_id=1 AND $expenses_table.deleted=0) AS total_ai";
        return $this->db->query($sql);
    }
    
    function get_list_cibitung()
    {
        $petty_table = $this->db->dbprefix('petty_cash');
        $expenses_table = $this->db->dbprefix('expenses');
        
        $sql = "SELECT (SELECT SUM($petty_table.balance) FROM $petty_table WHERE $petty_table.location_id=2 AND $petty_table.deleted=0) - (SELECT SUM($expenses_table.amount) * $expenses_table.qty FROM $expenses_table where $expenses_table.location_id=2 AND $expenses_table.deleted=0) AS total_cibitung";
        return $this->db->query($sql);
    }
    
    function get_list_field_langgak()
    {
        $petty_table = $this->db->dbprefix('petty_cash');
        $expenses_table = $this->db->dbprefix('expenses');
        
        $sql = "SELECT (SELECT SUM($petty_table.balance) FROM $petty_table WHERE $petty_table.location_id=3 AND $petty_table.deleted=0) - (SELECT SUM($expenses_table.amount) * $expenses_table.qty FROM $expenses_table where $expenses_table.location_id=3 AND $expenses_table.deleted=0) AS total_field_langgak";
        return $this->db->query($sql);
    }
    
    function get_list_field_phe()
    {
        $petty_table = $this->db->dbprefix('petty_cash');
        $expenses_table = $this->db->dbprefix('expenses');
        
        $sql = "SELECT (SELECT SUM($petty_table.balance) FROM $petty_table WHERE $petty_table.location_id=4 AND $petty_table.deleted=0) - (SELECT SUM($expenses_table.amount) * $expenses_table.qty FROM $expenses_table where $expenses_table.location_id=4 AND $expenses_table.deleted=0) AS total_field_phe";
        return $this->db->query($sql);
    }
    

    function get_details($options = array()) 
    {  
        $petty_table = $this->db->dbprefix('petty_cash');
        $location_categories_table = $this->db->dbprefix('location_categories');
        
        $where = "";
        $id = get_array_value($options, "id");
        if ($id) {
            $where = " AND $petty_table.id=$id";
        }
        $start_date = get_array_value($options, "date_time");
        $location_id = get_array_value($options, "location_id");
        if ($location_id) {
            $where .= " AND $petty_table.location_id=$location_id";
        }
        
        
        $sql = "SELECT $petty_table.*, $location_categories_table.title as location_title
        FROM $petty_table
        LEFT JOIN $location_categories_table ON $location_categories_table.id= $petty_table.location_id 
        WHERE $petty_table.deleted=0 $where";
        return $this->db->query($sql);
    }
}
