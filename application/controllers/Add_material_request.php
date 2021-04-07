<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Add_material_request extends MY_Controller {

    function __construct() {
        parent::__construct();

        $this->init_permission_checker("expense");

        //$this->access_only_allowed_members();
        $this->access_only_team_members();

    }

    //load the expenses list view
    function index() {
        $model_info = $this->Add_material_request_model->get_one($this->input->post('id'));
        $model_info->project_id = $model_info->project_id ? $model_info->project_id : $this->input->post('project_id');
        $model_info->user_id = $model_info->user_id ? $model_info->user_id : $this->input->post('user_id');

        $view_data['model_info'] = $model_info;
        $view_data['location_add_dropdown'] = array("0" => "-") + $this->Location_categories_model->get_dropdown_list(array("title"));
        $view_data['categories_add_dropdown'] = array("0" => "-") + $this->Expense_categories_model->get_dropdown_list(array("title"));
        $view_data['projects_add_dropdown'] = array("0" => "-") + $this->Projects_model->get_dropdown_list(array("title"));
        $team_members = $this->Users_model->get_all_where(array("deleted" => 0, "user_type" => "staff"))->result();
        $members_add_dropdown = array();

        foreach ($team_members as $team_member) {
            $members_add_dropdown[$team_member->id] = $team_member->first_name . " " . $team_member->last_name;
        }
        $view_data['members_add_dropdown'] = array("0" => "-") + $members_add_dropdown;

        $view_data['categories_dropdown'] = $this->_get_categories_dropdown();
        $view_data['location_dropdown'] = $this->_get_location_dropdown();
        $view_data['members_dropdown'] = $this->_get_team_members_dropdown();
        $view_data['status_dropdown'] = $this->_get_status_dropdown();
        $view_data["projects_dropdown"] = $this->_get_projects_dropdown_for_income_and_epxenses("expenses");

        $this->template->rander("add_material_request/index", $view_data);
    }

    //get categories dropdown
    private function _get_categories_dropdown() {
        $categories = $this->Expense_categories_model->get_all_where(array("deleted" => 0), 0, 0, "title")->result();

        $categories_dropdown = array(array("id" => "", "text" => "- " . lang("category") . " -"));
        foreach ($categories as $category) {
            $categories_dropdown[] = array("id" => $category->id, "text" => $category->title);
        }

        return json_encode($categories_dropdown);
    }
    
    private function _get_location_dropdown() {
        $location = $this->Location_categories_model->get_all_where(array("deleted" => 0), 0, 0, "title")->result();

        $location_dropdown = array(array("id" => "", "text" => "- " . lang("location") . " -"));
        foreach ($location as $location) {
            $location_dropdown[] = array("id" => $location->id, "text" => $location->title);
        }

        return json_encode($location_dropdown);
    }
    
    
    private function _get_status_dropdown() {
        $status = $this->Status_mr_model->get_all_where(array("deleted" => 0), 0, 0, "title")->result();

        $status_dropdown = array(array("id" => "", "text" => "- " . lang("location") . " -"));
        foreach ($status as $status) {
            $status_dropdown[] = array("id" => $status->id, "text" => $status->title);
        }

        return json_encode($status_dropdown);
    }

    //get team members dropdown
    private function _get_team_members_dropdown() {
        $team_members = $this->Users_model->get_all_where(array("deleted" => 0, "user_type" => "staff"), 0, 0, "first_name")->result();

        $members_dropdown = array(array("id" => "", "text" => "- " . lang("member") . " -"));
        foreach ($team_members as $team_member) {
            $members_dropdown[] = array("id" => $team_member->id, "text" => $team_member->first_name . " " . $team_member->last_name);
        }

        return json_encode($members_dropdown);
    }

    function modal_form() {
        validate_submitted_data(array(
            "id" => "numeric"
        ));
        


        $client_id = $this->input->post('client_id');

        $model_info = $this->Add_material_request_model->get_one($this->input->post('id'));
        //var_dump($model_info);
        $view_data['categories_dropdown'] = $this->Expense_categories_model->get_dropdown_list(array("title"));
        $view_data['location_dropdown'] = $this->Location_categories_model->get_dropdown_list(array("title"));
        $view_data['status_dropdown'] = $this->Status_mr_model->get_dropdown_list(array("title"));
        
;


        $team_members = $this->Users_model->get_all_where(array("deleted" => 0, "user_type" => "staff"))->result();
        $members_dropdown = array();

        foreach ($team_members as $team_member) {
            $members_dropdown[$team_member->id] = $team_member->first_name . " " . $team_member->last_name;
        }
        $test =$this->Add_material_request_model->get_list()->result();
        $pro_test = $test[0]->ids;
        $view_data['ids'] = $pro_test;
        
        $view_data['members_dropdown'] = array("0" => "-") + $members_dropdown;
        $view_data['projects_dropdown'] = array("0" => "-") + $this->Projects_model->get_dropdown_list(array("title"));

        $model_info->project_id = $model_info->project_id ? $model_info->project_id : $this->input->post('project_id');
        $model_info->user_id = $model_info->user_id ? $model_info->user_id : $this->input->post('user_id');

        $view_data['model_info'] = $model_info;
        $view_data['can_access_expenses'] = $this->can_access_expenses();
        $this->load->view('add_material_request/index', $view_data);
    }

    function save() {
        validate_submitted_data(array(
            "id" => "numeric",
            "date_request" => "required",
            "category_id" => "required",
            "location_id" => "required",
            //"status_id" => "required",

        ));

        $id = $this->input->post('id');
        $test =$this->Add_material_request_model->get_list()->result();
        $pro_test = $test[0]->ids;
        $view_data['ids'] = $pro_test;
        $data = array(
            "date_request" => $this->input->post('date_request'),
            "category_id" => $this->input->post('category_id'),
            "location_id" => $this->input->post('location_id'),
            "status_id" => "2",
            "notes" => $this->input->post('notes'),
            "mr_no" => "MR2021-" . intval($pro_test + 1),
            "project_id" => $this->input->post('expense_project_id'),
            "user_id" => $this->input->post('expense_user_id'),

        );

        $save_id = $this->Add_material_request_model->save($data, $id);
        if ($save_id) {
            save_custom_fields("expenses", $save_id, $this->login_user->is_admin, $this->login_user->user_type);

            echo json_encode(array("success" => true, "data" => $this->_row_data($save_id), 'id' => $save_id, 'message' => lang('record_saved')));
        } else {
            echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
        }
    }
    
        function add_item_form() {
        validate_submitted_data(array(
            "id" => "numeric"
        ));
        
        $model_info = $this->Add_item_model->get_one($this->input->post('id'));

        $view_data['model_info'] = $model_info;
        $this->load->view('add_material_request/add_item', $view_data);
    }
    
        function save_item() {
        validate_submitted_data(array(
            "id" => "numeric",

        ));
        
        $id = $this->input->post('id');
        $data = array(
            "no" => $this->input->post('no'),
            "item_name" => $this->input->post('item_name'),
            "specification" => $this->input->post('specification'),
            "qty" => $this->input->post('qty'),
            "measurement" => $this->input->post('measurement'),
            "notes" => $this->input->post('notes'),

        );

        $save_id = $this->Add_item_model->save_item($data, $id);
        if ($save_id) {
            echo json_encode(array("success" => true, "data" => $this->_row_data($save_id), 'id' => $save_id, 'message' => lang('record_saved')));
        } else {
            echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
        }
    }
    

    //delete/undo an expense
    function delete() {
        validate_submitted_data(array(
            "id" => "required|numeric"
        ));

        $id = $this->input->post('id');
        $add_material_request_info = $this->Add_material_request_model->get_one($id);


        if ($this->Add_material_request_model->delete($id)) {
            echo json_encode(array("success" => true, 'message' => lang('record_deleted')));
        } else {
            echo json_encode(array("success" => false, 'message' => lang('record_cannot_be_deleted')));
        }
    }

    //get the expnese list data
    function list_data() {
        $date_request = $this->input->post('date_request');
        $category_id = $this->input->post('category_id');
        $location_id = $this->input->post('location_id');
        $mr_no = $this->input->post('mr_no');
        $status_id = $this->input->post('status_id');
        $project_id = $this->input->post('project_id');
        $user_id = $this->input->post('user_id');


        $options = array("date_request" => $date_request, "category_id" => $category_id, "location_id" => $location_id, "project_id" => $project_id, "user_id" => $user_id, "status_id" => $status_id);
        $list_data = $this->Add_material_request_model->get_details($options)->result();
        $result = array();
        foreach ($list_data as $data) {
            $result[] = $this->_make_row($data);
        }
        echo json_encode(array("data" => $result));
    }

    //get a row of expnese list
    private function _row_data($id) {
        // $custom_fields = $this->Custom_fields_model->get_available_fields_for_table("expenses", $this->login_user->is_admin, $this->login_user->user_type);
        $options = array("id" => $id);
        $data = $this->Add_material_request_model->get_details($options)->row();
        return $this->_make_row($data);
    }
    
    
    
function view($id = 0) {
        $team_members = $this->Users_model->get_all_where(array("deleted" => 0, "user_type" => "staff"))->result();
        $members_dropdown = array();

        foreach ($team_members as $team_member) {
            $members_dropdown[$team_member->id] = $team_member->first_name . " " . $team_member->last_name;
        }
        $view_data['members_dropdown'] = array("0" => "-") + $members_dropdown;
        $view_data['location_dropdown'] = $this->Location_categories_model->get_dropdown_list(array("title"));
        $view_data['categories_dropdown'] = $this->Expense_categories_model->get_dropdown_list(array("title"));
        $view_data['status_dropdown'] = $this->Status_mr_model->get_dropdown_list(array("title"));

        $view_data['model_info'] = $this->_get_material_info_data($id);
        // $mr_no_data = $this->_get_material_info_data($id);

        //$view_data["model_info"] = $model_info;

        $this->template->rander("add_material_request/view", $view_data);

}

private function _get_material_info_data($id) {
        $options = array(
            "id" => $id,
        );

        $material_info = $this->Add_material_request_model->get_details($options)->row();
        // var_dump($material_info);
        //$view_data['material_info'] = $material_info;

        if ($material_info) {
            //$view_data['material_info'] = $material_info;

            return $material_info;
        } else {
            show_404();
        }
    }
    
    

    //prepare a row of expnese list
    private function _make_row($data) {
        $item_url = "";
        $item_url = anchor(get_uri("add_material_request/view/" . $data->id));
        $status_warna = $data->status_mr_title;
        if ($status_warna == "Pending"){
            $status_warna = "<span class='label label-warning'>" . $status_warna . "</span>";
        }elseif
        ($status_warna == "Created"){
            $status_warna = "<span class='label label-primary'>" . $status_warna . "</span>";
        }
        


        $row_data = array(
            $data->date_request,
            format_to_date($data->date_request, false),
            $data->mr_no,
            $data->project_title,
            $data->category_title,
            $data->location_title,
            $data->linked_user_name,
            
            $data->notes,
            $status_warna,

        );
        //$this->access_only_admin();
         $row_data[] = anchor(get_uri("add_material_request/view/$data->id"), "<i class='fa fa-plus'></i>", array("class" => "edit", "title" => lang('edit_add_material_request'), "data-post-id" => $data->id));

        return $row_data;
    }
}

/* End of file expenses.php */
/* Location: ./application/controllers/expenses.php */