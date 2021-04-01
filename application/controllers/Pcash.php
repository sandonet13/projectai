<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Pcash extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->access_only_team_members();
    }

    function index()
    {
        $this->check_module_availability("module_note");
        $view_data['location_dropdown'] = $this->_get_location_dropdown();
        $view_data['total_ai'] = $this->_get_list_ai();
        $view_data['total_cibitung'] = $this->_get_list_cibitung();
        $view_data['total_field_langgak'] = $this->_get_list_field_langgak();
        $view_data['total_field_phe'] = $this->_get_list_field_phe();


         
        $this->template->rander("pcash/index", $view_data);
    }
    
    private function _get_list_ai() {
        $total = $this->Pcash_model->get_list_audemars(array("total_ai"))->result();
        $corr_zero = $this->Pcash_model->get_list_audemars_balance(array("balance"))->result();
        $tot_cur_ai = $total[0]->total_ai;
        $tot_corr_zero = $corr_zero[0]->balance;
        if($tot_cur_ai == 0)
        {
            $tot_cur_ai = $tot_corr_zero;
        }
        
        return (to_currency($tot_cur_ai));
    }
    
    private function _get_list_cibitung() {
        $total = $this->Pcash_model->get_list_cibitung(array("total_cibitung"))->result();
        $corr_zero = $this->Pcash_model->get_list_cibitung_balance(array("balance"))->result();
        $tot_cur_cibitung = $total[0]->total_cibitung;
        $tot_corr_zero = $corr_zero[0]->balance;
        if($tot_cur_cibitung == 0)
        {
            $tot_cur_cibitung = $tot_corr_zero;
        }
        
        return (to_currency($tot_cur_cibitung));
    }
    
    private function _get_list_field_langgak() {
        $total = $this->Pcash_model->get_list_field_langgak(array("total_field_langgak"))->result();
        $corr_zero = $this->Pcash_model->get_list_field_langgak_balance(array("balance"))->result();
        $tot_cur_field_langgak = $total[0]->total_field_langgak;
        $tot_corr_zero = $corr_zero[0]->balance;
        if($tot_cur_field_langgak == 0)
        {
            $tot_cur_field_langgak = $tot_corr_zero;
        }
        
        return (to_currency($tot_cur_field_langgak));
    }
    
    private function _get_list_field_phe() {
        $total = $this->Pcash_model->get_list_field_phe(array("total_field_phe"))->result();
        $corr_zero = $this->Pcash_model->get_list_field_phe_balance(array("balance"))->result();
        $tot_cur_field_phe = $total[0]->total_field_phe;
        $tot_corr_zero = $corr_zero[0]->balance;
        if($tot_cur_field_phe == 0)
        {
            $tot_cur_field_phe = $tot_corr_zero;
        }
        
        return (to_currency($tot_cur_field_phe));
    }

    private function _get_location_dropdown() {
        $location = $this->Location_categories_model->get_details(array("deleted" => 0), 0, 0, "location")->result();

        $location_dropdown = array(array("id" => "", "text" => "- " . lang("location") . " -"));
        foreach ($location as $location) {
            $location_dropdown[] = array("id" => $location->id, "text" => $location->title);
        }

        return json_encode($location_dropdown);
    }


    function list_data($recurring = false) {
        $date_time = $this->input->post('date_time');
        $location_id = $this->input->post('location_id');
        $balance = $this->input->post('balance');

        $options = array("date_time" => $date_time, "location_id" => $location_id, "balance" => $balance);
        $list_data = $this->Pcash_model->get_details($options)->result();

        $result = array();
        foreach ($list_data as $data) {
            $result[] = $this->_make_row($data);
        }
        echo json_encode(array("data" => $result));
    }

    function modal_form()
    {
        validate_submitted_data(array(
            "id" => "numeric"
        ));
        
        $view_data['model_info'] = $this->Pcash_model->get_one($this->input->post('id'));
        
        $view_data['location_dropdown'] = $this->Location_categories_model->get_dropdown_list(array("title"));
        $this->load->view('pcash/modal_form', $view_data);
    }

    function save()
    {
        validate_submitted_data(array(
            "id" => "numeric",
            "date_time" => "required",
            "location_id" => "required",
            "balance" => "required"
        ));

        $id = $this->input->post('id');
        
        $data = array(
            "date_time" => $this->input->post('date_time'),
            "location_id" => $this->input->post('location_id'),
            "balance" => unformat_currency($this->input->post('balance')),
        );

        $save_id = $this->Pcash_model->save($data, $id);
        if ($save_id) {
            echo json_encode(array("success" => true, "data" => $this->_row_data($save_id), 'id' => $save_id, 'message' => lang('record_saved')));
        } else {
            echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
        }
    }

    public function delete() {
        validate_submitted_data(array(
            "id" => "required|numeric"
        ));

        $id = $this->input->post('id');
        if ($this->Pcash_model->delete($id)) {
            //delete the files
            echo json_encode(array("success" => true, 'message' => lang('record_deleted')));
            //redirect('pcash', 'refresh');
        } else {
            echo json_encode(array("success" => false, 'message' => lang('record_cannot_be_deleted')));
        }
    }
    
    
    private function _row_data($id) {
        $options = array("id" => $id);
        $data = $this->Pcash_model->get_details($options)->row();
        return $this->_make_row($data);
    }
    
    private function _make_row($data) {

        $row_data = array(
            //$data->expense_date,
            //modal_anchor(get_uri("expenses/expense_details"), format_to_date($data->expense_date, false), array("title" => lang("expense_details"), "data-post-id" => $data->id)),
            $data->date_time,
            $data->location_title,
            to_currency($data->balance)
        );

        $row_data[] = modal_anchor(get_uri("pcash/modal_form"), "<i class='fa fa-pencil'></i>", array("class" => "edit", "title" => lang('edit_pcash'), "data-post-id" => $data->id))
                . js_anchor("<i class='fa fa-times fa-fw'></i>", array('title' => lang('delete_pcash'), "class" => "delete", "data-id" => $data->id, "data-action-url" => get_uri("pcash/delete"), "data-action" => "delete-confirmation"));

        return $row_data;
    }
}
