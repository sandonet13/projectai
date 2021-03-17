<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Material extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->access_only_team_members();
    }

    function index()
    {
        $this->check_module_availability("module_note");

        $this->template->rander("material/index");
    }

    private function _make_row($data)
    {
        $public_icon = "";
        // $title = modal_anchor(get_uri("notes/view/" . $data->id), $public_icon . $data->title, array("title" => lang('note'), "data-post-id" => $data->id));

        // if ($data->labels_list) {
        //     $note_labels = make_labels_view_data($data->labels_list, true);
        //     $title .= "<br />" . $note_labels;
        // }

        // $files_link = "";
        // if ($data->files) {
        //     $files = unserialize($data->files);
        //     if (count($files)) {
        //         foreach ($files as $key => $value) {
        //             $file_name = get_array_value($value, "file_name");
        //             $link = " fa fa-" . get_file_icon(strtolower(pathinfo($file_name, PATHINFO_EXTENSION)));
        //             $files_link .= js_anchor(" ", array('title' => "", "data-toggle" => "app-modal", "data-sidebar" => "0", "class" => "pull-left font-22 mr10 $link", "title" => remove_file_prefix($file_name), "data-url" => get_uri("notes/file_preview/" . $data->id . "/" . $key)));
        //         }
        //     }
        // }

        $spesification = $data->specification;
        $qty = $data->qty;
		$unit_price = $data->unit_price;
		$num_format = number_format($unit_price,0, ',', '.');
		$tot = $qty * $unit_price;
		$num_format_tot = number_format($tot,0, ',', '.');
		
		$format_date = $data->mr_date_register;
		$newDate = date("Y-m-d", strtotime($format_date));
	
        $actions = modal_anchor(get_uri("material/view/" . $data->id_asset_req), "<i class='fa fa-bolt'></i>", array("class" => "edit", "title" => lang('note_details'), "data-modal-title" => lang("note"), "data-post-id" => $data->id_asset_req));



        if ($this->login_user->is_admin || $this->login_user->user_type == "staff") {
            $actions = modal_anchor(get_uri("/material/edit_form/" . $data->id_asset_req), "<i class='fa fa-pencil'></i>", array("class" => "edit", "title" => lang('edit_note'), "data-post-id" => $data->id_asset_req))
                . js_anchor("<i class='fa fa-times fa-fw'></i>", array('title' => lang('delete_note'), "class" => "delete", "data-id" => $data->id_asset_req, "data-action-url" => get_uri("material/delete/" . $data->id_asset_req), "data-action" => "delete-confirmation"));
        }

        $invoice = $data->invoice;
        $po = $data->po;
        $do = $data->do;
        $sp3 = $data->sp3;
		
		if(strpos($do, 'content/uploads') == true){
			$do = '<a href="' . $data->do . '">' . $data->do . '</a>';
		}else{
			$do = '<a href="' . base_url('files/system/' . $data->do) . '">' . $data->do . '</a>';
		}
		
		if(strpos($sp3, 'content/uploads') == true){
			$sp3 = '<a href="' . $data->sp3 . '">' . $data->sp3 . '</a>';
		}else{
			$sp3 = '<a href="' . base_url('files/system/' . $data->sp3) . '">' . $data->sp3 . '</a>';
		}
		
		if(strpos($po, 'content/uploads') == true){
			$po = '<a href="' . $data->po . '">' . $data->po . '</a>';
		}else{
			$po = '<a href="' . base_url('files/system/' . $data->po) . '">' . $data->po . '</a>';
		}
		
		if(strpos($invoice, 'content/uploads') == true){
			$invoice = '<a href="' . $data->invoice . '">' . $data->invoice . '</a>';
		}else{
			$invoice = '<a href="' . base_url('files/system/' . $data->invoice) . '">' . $data->invoice . '</a>';
		}
		
		$status = $data->status;
		if($status == "Completed"){
			$status = '<span class="label label-success large">' . $data->status . '</span>';
		}
		
		$priority = $data->priority;
		if($priority == "High"){
			$priority = '<span class="label label-danger large">' . $data->priority . '</span>';
		}
		if($priority == "Medium"){
			$priority = '<span class="label label-warning large">' . $data->priority . '</span>';
		}
		if($priority == "Low"){
			$priority = '<span class="label label-info large">' . $data->priority . '</span>';
		}
		
		$measurement = $data->measurement;
		if($measurement == 1){
			$measurement = "BKS";
		}
		if($measurement == 2){
			$measurement = "Drum";
		}
		if($measurement == 3){
			$measurement = "Kaleng";
		}
		if($measurement == 4){
			$measurement = "Kg";
		}
		if($measurement == 5){
			$measurement = "Lembar";
		}
		if($measurement == 6){
			$measurement = "Lente";
		}
		if($measurement == 7){
			$measurement = "LMB";
		}
		if($measurement == 8){
			$measurement = "Lot";
		}
		if($measurement == 9){
			$measurement = "Meter";
		}
		if($measurement == 10){
			$measurement = "Pack";
		}
		if($measurement == 11){
			$measurement = "Pcs";
		}
		if($measurement == 12){
			$measurement = "Roll";
		}
		if($measurement == 13){
			$measurement = "Set";
		}
		if($measurement == 14){
			$measurement = "Unit";
		}
		if($measurement == 15){
			$measurement = "Pasang";
		}
		if($measurement == 16){
			$measurement = "Lusin";
		}
		if($measurement == 17){
			$measurement = "Batang";
		}
		if($measurement == 18){
			$measurement = "Cm";
		}
		if($measurement == 19){
			$measurement = "Liter";
		}
		

			
		
        return array(
            $data->item_description,
            $spesification,
            $newDate,
            $data->no_mr_asset,
            $qty,
            $measurement,
            $data->notes,
            $status,
            $data->po_no,
            $do,
            $po,
            $invoice,
            $sp3,
            "Rp" . $num_format,
			"Rp" . $num_format_tot,
            $priority,
            $actions
        );

    }

    function list_data()
    {
        $this->load->model('Material_model');
        $list_data = $this->Material_model->get_list()->result();
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
        $this->load->view('material/modal_form', $view_data);
    }

    function save()
    {

        $config['upload_path'] = './files/system/';
        $config['allowed_types'] = 'pdf';
        $config['max_size'] = 30000;

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('invoice')) {
            $fileData = $this->upload->data();

            $upload = [
                'nama_file' => $fileData['file_name'],
                'tipe_file' => $fileData['file_type'],
                'ukuran_file' => $fileData['file_size'],
            ];

            $_POST['invoice'] = $upload['nama_file'];
        }
        if ($this->upload->do_upload('do')) {
            $fileData = $this->upload->data();

            $upload = [
                'nama_file' => $fileData['file_name'],
                'tipe_file' => $fileData['file_type'],
                'ukuran_file' => $fileData['file_size'],
            ];

            $_POST['do'] = $upload['nama_file'];
        }
        if ($this->upload->do_upload('po')) {
            $fileData = $this->upload->data();

            $upload = [
                'nama_file' => $fileData['file_name'],
                'tipe_file' => $fileData['file_type'],
                'ukuran_file' => $fileData['file_size'],
            ];

            $_POST['po'] = $upload['nama_file'];
        }
        if ($this->upload->do_upload('sp3')) {
            $fileData = $this->upload->data();

            $upload = [
                'nama_file' => $fileData['file_name'],
                'tipe_file' => $fileData['file_type'],
                'ukuran_file' => $fileData['file_size'],
            ];

            $_POST['sp3'] = $upload['nama_file'];
        }


        $this->load->model('Material_model');
        $this->db->insert('material_request', $this->input->post());
        return redirect('/material');
    }

    function delete($id)
    {
        $this->db->where('id_asset_req', $id);
        $this->db->delete('material_request');

        echo json_encode(array("success" => true, 'message' => lang('record_deleted')));
    }


    function edit_form($id)
    {
        $data['model_info'] = $this->db->get_where('material_request', array('id_asset_req' => $id))->row();


        $this->load->view('material/edit_form', $data);
    }

    function edit()
    {
        $config['upload_path'] = './files/system/';
        $config['allowed_types'] = 'pdf';
        $config['max_size'] = 30000;

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('invoice')) {
            $fileData = $this->upload->data();

            $upload = [
                'nama_file' => $fileData['file_name'],
                'tipe_file' => $fileData['file_type'],
                'ukuran_file' => $fileData['file_size'],
            ];

            $_POST['invoice'] = $upload['nama_file'];
        }
        if ($this->upload->do_upload('do')) {
            $fileData = $this->upload->data();

            $upload = [
                'nama_file' => $fileData['file_name'],
                'tipe_file' => $fileData['file_type'],
                'ukuran_file' => $fileData['file_size'],
            ];

            $_POST['do'] = $upload['nama_file'];
        }
        if ($this->upload->do_upload('po')) {
            $fileData = $this->upload->data();

            $upload = [
                'nama_file' => $fileData['file_name'],
                'tipe_file' => $fileData['file_type'],
                'ukuran_file' => $fileData['file_size'],
            ];

            $_POST['po'] = $upload['nama_file'];
        }
        if ($this->upload->do_upload('sp3')) {
            $fileData = $this->upload->data();

            $upload = [
                'nama_file' => $fileData['file_name'],
                'tipe_file' => $fileData['file_type'],
                'ukuran_file' => $fileData['file_size'],
            ];

            $_POST['sp3'] = $upload['nama_file'];
        }

        $this->db->where('id_asset_req', $this->input->post('id_asset_req'));
        $this->db->update('material_request', $this->input->post());

        return redirect('/material');
    }
}
