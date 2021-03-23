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
        
        $this->template->rander("pcash/index");
    }

    private function _get_location_dropdown() {
        $this->load->model('Location_categories_model');
        $location = $this->Location_categories_model->get_details(array("deleted" => 0), 0, 0, "location")->result();

        $location_dropdown = array(array("id" => "", "text" => "- " . lang("location") . " -"));
        foreach ($location as $location) {
            $location_dropdown[] = array("id" => $location->id, "text" => $location->title);
        }

        return json_encode($location_dropdown);
    }


    function list_data()
    {
        $list_data = $this->Pcash_model->get_details()->result();
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
        
        $view_data['model_info'] = $this->Notes_model->get_one($this->input->post('id'));
        $view_data['label_suggestions'] = $this->make_labels_dropdown("note", $view_data['model_info']->labels, false);
        $view_data['model_info_loc'] = $this->Pcash_model->get_one($this->input->post('id'));
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

        if ($this->Pcash_model->save($data, $id)) {
            return redirect('/pcash');
            echo json_encode(array("success" => true, 'message' => lang('record_saved')));
        } else {
            echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
        }
    }

    function delete() {
        validate_submitted_data(array(
            "id" => "required|numeric"
        ));

        $id = $this->input->post('id');
        if ($this->Pcash_model->delete($id)) {
            //delete the files
            echo json_encode(array("success" => true, 'message' => lang('record_deleted')));
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
            $data->balance
        );

        $row_data[] = modal_anchor(get_uri("pcash/modal_form"), "<i class='fa fa-pencil'></i>", array("class" => "edit", "title" => lang('edit_pcash'), "data-post-id" => $data->id))
                . js_anchor("<i class='fa fa-times fa-fw'></i>", array('title' => lang('delete_pcash'), "class" => "delete", "data-id" => $data->id, "data-action-url" => get_uri("pcash/delete"), "data-action" => "delete-confirmation"));

        return $row_data;
    }
    
    
    function edit_form($id)
    {
        $data['model_info'] = $this->db->get_where('petty_cash', array('id' => $id))->row();


        $this->load->view('pcash/edit_form', $data);
    }

    function edit()
    {
        $this->db->where('id', $this->input->post('id'));
        $this->db->update('petty_cash', $this->input->post());

        return redirect('/pcash');
    }
}
