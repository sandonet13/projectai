<?php

class Add_material_request_model extends Crud_model {

    public $table = null;

    function __construct() {
        $this->table = 'add_material_request';
        parent::__construct($this->table);
        
        
    }

    function get_details($options = array()) {
        //$expenses_table = $this->db->dbprefix('expenses');
        $expense_categories_table = $this->db->dbprefix('expense_categories');
        $projects_table = $this->db->dbprefix('projects');
        $users_table = $this->db->dbprefix('users');
        $status_mr_table = $this->db->dbprefix('status_mr');
        //$taxes_table = $this->db->dbprefix('taxes');
        //$clients_table = $this->db->dbprefix('clients');
        $location_categories_table = $this->db->dbprefix('location_categories');
        $add_material_request_table = $this->db->dbprefix('add_material_request');
        $add_item_material_request_table = $this->db->dbprefix('add_item');
        // = $this->db->dbprefix('measurement');



        $where = "";
        $id = get_array_value($options, "id");
        if ($id) {
            $where = " AND $add_material_request_table.id=$id";
        }
        
        $date_request = get_array_value($options, "date_request");
        if ($date_request) {
            $where .= " AND $add_material_request_table.date_request=$date_request";
        }
        
        $location_id = get_array_value($options, "location_id");
        if ($location_id) {
            $where .= " AND $add_material_request_table.location_id=$location_id";
        }
        
        
        $status_id = get_array_value($options, "status_id");
        if ($status_id) {
            $where .= " AND $add_material_request_table.status_id=$status_id";
        }
        
        // $measurement_id = get_array_value($options, "measurement_id");
        // if ($measurement_id) {
        //     $where .= " AND $expenses_table.measurement_id=$measurement_id";
        // }

        $category_id = get_array_value($options, "category_id");
        if ($category_id) {
            $where .= " AND $add_material_request_table.category_id=$category_id";
        }

        $project_id = get_array_value($options, "project_id");
        if ($project_id) {
            $where .= " AND $add_material_request_table.project_id=$project_id";
        }

        $user_id = get_array_value($options, "user_id");
        if ($user_id) {
            $where .= " AND $add_material_request_table.user_id=$user_id";
        }

        // $client_id = get_array_value($options, "client_id");
        // if ($client_id) {
        //     $where .= " AND $expenses_table.client_id=$client_id";
        // }

        // $recurring = get_array_value($options, "recurring");
        // if ($recurring) {
        //     $where .= " AND $expenses_table.recurring=1";
        // }

        //prepare custom fild binding query
        // $custom_fields = get_array_value($options, "custom_fields");
        // $custom_field_query_info = $this->prepare_custom_field_query_string("expenses", $custom_fields, $expenses_table);
        // $select_custom_fields = get_array_value($custom_field_query_info, "select_string");
        // $join_custom_fields = get_array_value($custom_field_query_info, "join_string");


        $sql = "SELECT $add_material_request_table.*, $expense_categories_table.title as category_title, $location_categories_table.title as location_title, $status_mr_table.title as status_mr_title,
                 CONCAT($users_table.first_name, ' ', $users_table.last_name) AS linked_user_name,
                 $projects_table.title AS project_title
        FROM $add_material_request_table
        LEFT JOIN $location_categories_table ON $location_categories_table.id= $add_material_request_table.location_id
        LEFT JOIN $status_mr_table ON $status_mr_table.id= $add_material_request_table.status_id
        LEFT JOIN $expense_categories_table ON $expense_categories_table.id= $add_material_request_table.category_id
        LEFT JOIN $projects_table ON $projects_table.id= $add_material_request_table.project_id
        LEFT JOIN $users_table ON $users_table.id= $add_material_request_table.user_id
        WHERE $add_material_request_table.deleted=0 $where";
        return $this->db->query($sql);
    }
    
    
    function get_list()
    {
        $add_material_request_table = $this->db->dbprefix('add_material_request');
        $sql = "SELECT MAX($add_material_request_table.id) AS ids FROM $add_material_request_table";
        return $this->db->query($sql);
    }
    
    function get_details_approved($options = array()) {
        //$expenses_table = $this->db->dbprefix('expenses');
        $expense_categories_table = $this->db->dbprefix('expense_categories');
        $projects_table = $this->db->dbprefix('projects');
        $users_table = $this->db->dbprefix('users');
        $status_mr_table = $this->db->dbprefix('status_mr');
        //$taxes_table = $this->db->dbprefix('taxes');
        //$clients_table = $this->db->dbprefix('clients');
        $location_categories_table = $this->db->dbprefix('location_categories');
        $add_material_request_table = $this->db->dbprefix('add_material_request');
        $add_item_material_request_table = $this->db->dbprefix('add_item');
        // = $this->db->dbprefix('measurement');



        $where = "";
        $id = get_array_value($options, "id");
        if ($id) {
            $where = " AND $add_material_request_table.id=$id";
        }
        
        $date_request = get_array_value($options, "date_request");
        if ($date_request) {
            $where .= " AND $add_material_request_table.date_request=$date_request";
        }
        
        $location_id = get_array_value($options, "location_id");
        if ($location_id) {
            $where .= " AND $add_material_request_table.location_id=$location_id";
        }
        
        
        $status_id = get_array_value($options, "status_id");
        if ($status_id) {
            $where .= " AND $add_material_request_table.status_id=$status_id";
        }
        
        // $measurement_id = get_array_value($options, "measurement_id");
        // if ($measurement_id) {
        //     $where .= " AND $expenses_table.measurement_id=$measurement_id";
        // }

        $category_id = get_array_value($options, "category_id");
        if ($category_id) {
            $where .= " AND $add_material_request_table.category_id=$category_id";
        }

        $project_id = get_array_value($options, "project_id");
        if ($project_id) {
            $where .= " AND $add_material_request_table.project_id=$project_id";
        }

        $user_id = get_array_value($options, "user_id");
        if ($user_id) {
            $where .= " AND $add_material_request_table.user_id=$user_id";
        }

        // $client_id = get_array_value($options, "client_id");
        // if ($client_id) {
        //     $where .= " AND $expenses_table.client_id=$client_id";
        // }

        // $recurring = get_array_value($options, "recurring");
        // if ($recurring) {
        //     $where .= " AND $expenses_table.recurring=1";
        // }

        //prepare custom fild binding query
        // $custom_fields = get_array_value($options, "custom_fields");
        // $custom_field_query_info = $this->prepare_custom_field_query_string("expenses", $custom_fields, $expenses_table);
        // $select_custom_fields = get_array_value($custom_field_query_info, "select_string");
        // $join_custom_fields = get_array_value($custom_field_query_info, "join_string");


        $sql = "SELECT $add_material_request_table.*, $expense_categories_table.title as category_title, $location_categories_table.title as location_title, $status_mr_table.title as status_mr_title,
                 CONCAT($users_table.first_name, ' ', $users_table.last_name) AS linked_user_name,
                 $projects_table.title AS project_title
        FROM $add_material_request_table
        LEFT JOIN $location_categories_table ON $location_categories_table.id= $add_material_request_table.location_id
        LEFT JOIN $status_mr_table ON $status_mr_table.id= $add_material_request_table.status_id
        LEFT JOIN $expense_categories_table ON $expense_categories_table.id= $add_material_request_table.category_id
        LEFT JOIN $projects_table ON $projects_table.id= $add_material_request_table.project_id
        LEFT JOIN $users_table ON $users_table.id= $add_material_request_table.user_id
        WHERE $add_material_request_table.deleted=0 AND $add_material_request_table.status_id=3 OR $add_material_request_table.status_id=4$where";
        return $this->db->query($sql);
    }


 public function upddata($data) {
        $add_material_request_table = $this->db->dbprefix('add_material_request');
        $this->db->where('mr_no', $data['mr_no']);
        $this->db->where('status_id', $data['status_id']);
        $query = $this->db->update($add_material_request_table ,array('status_id' => 1));
        return true;
  }

 public function upddata_appr($data) {
        $add_material_request_table = $this->db->dbprefix('add_material_request');
        $this->db->where('mr_no', $data['mr_no']);
        $this->db->where('status_id', $data['status_id']);
        $query = $this->db->update($add_material_request_table ,array('status_id' => 3));
        return true;
  }
  
 public function upddata_rjct($data) {
        $add_material_request_table = $this->db->dbprefix('add_material_request');
        $this->db->where('mr_no', $data['mr_no']);
        $this->db->where('status_id', $data['status_id']);
        $query = $this->db->update($add_material_request_table ,array('status_id' => 5));
        return true;
  }
  


}
