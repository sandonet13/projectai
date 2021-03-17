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

        $this->template->rander("pcash/index");
    }

    private function _make_row($data)
    {
        $public_icon = "";
        $location = $data->location;
        $balance = $data->balance;
        $actions = modal_anchor(get_uri("pcash/view/" . $data->id), "<i class='fa fa-bolt'></i>", array("class" => "edit", "title" => lang('note_details'), "data-modal-title" => lang("note"), "data-post-id" => $data->id));
        $format_date = $data->date_time;
		$newDate = date("Y-m-d", strtotime($format_date));


        if ($this->login_user->is_admin || $this->login_user->user_type == "staff") {
            $actions = modal_anchor(get_uri("/pcash/edit_form/" . $data->id), "<i class='fa fa-pencil'></i>", array("class" => "edit", "title" => lang('edit_note'), "data-post-id" => $data->id))
                . js_anchor("<i class='fa fa-times fa-fw'></i>", array('title' => lang('delete_note'), "class" => "delete", "data-id" => $data->id, "data-action-url" => get_uri("pcash/delete/" . $data->id), "data-action" => "delete-confirmation"));
        }
		
        return array(
            $location,
            $newDate,
            $balance,
            $actions
        );

    }

    function list_data()
    {
        $this->load->model('Pcash_model');
        $list_data = $this->Pcash_model->get_list()->result();
        $result = array();
        foreach ($list_data as $data) {
            $result[] = $this->_make_row($data);
        }
        echo json_encode(array("data" => $result));
    }

    function modal_form()
    {
        $view_data['model_info'] = $this->Notes_model->get_one($this->input->post('id'));
        $view_data['project_id'] = $this->input->post('project_id') ? $this->input->post('project_id') : $view_data['model_info']->project_id;
        $view_data['client_id'] = $this->input->post('client_id') ? $this->input->post('client_id') : $view_data['model_info']->client_id;
        $view_data['user_id'] = $this->input->post('user_id') ? $this->input->post('user_id') : $view_data['model_info']->user_id;

        //check permission for saved note
        // if ($view_data['model_info']->id) {
        //     $this->validate_access_to_note($view_data['model_info'], true);
        // }

        $view_data['label_suggestions'] = $this->make_labels_dropdown("note", $view_data['model_info']->labels, false);
        $this->load->view('pcash/modal_form', $view_data);
    }

    function save()
    {

        $this->load->model('Pcash_model');
        $this->db->insert('petty_cash', $this->input->post());
        return redirect('/pcash');
    }

    function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('petty_cash');

        echo json_encode(array("success" => true, 'message' => lang('record_deleted')));
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
