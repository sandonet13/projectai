<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Product_model extends CI_Model
{
    private $_table = "material_request";

    public $id_asset_req;
    public $mr_date_register;
    public $no_mr_asset;
    public $item_description;
    public $specification;
    public $qty;
    public $measurement;
    public $notes;
    public $status;
    public $po_no;
	public $do;
	public $po;
	public $invoice;
	public $sp3;
	public $unit_price;
	public $total_price;

    public function rules()
    {
        return [
            ['field' => 'mr_date_register',
            'label' => 'Date Register',
            'rules' => 'required'],

            ['field' => 'no_mr_asset',
            'label' => 'No. MR',
            'rules' => 'numeric'],
            
            ['field' => 'item_description',
            'label' => 'Description',
            'rules' => 'required']
        ];
    }

    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }
    
    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["id_asset_req" => $id])->row();
    }

    public function save()
    {
        $post = $this->input->post();
        $this->id_asset_req = uniqid();
        $this->mr_date_register = $post["mr_date_register"];
        $this->no_mr_asset = $post["no_mr_asset"];
        $this->item_description = $post["item_description"];
		$this->specification = $post["specification"];
        $this->qty = $post["qty"];
        $this->measurement = $post["measurement"];
		$this->notes = $post["notes"];
        $this->status = $post["status"];
        $this->po_no = $post["po_no"];
		$this->do = $post["do"];
        $this->po = $post["po"];
        $this->invoice = $post["invoice"];
		$this->sp3 = $post["sp3"];
        $this->unit_price = $post["unit_price"];
        $this->total_price = $post["total_price"];
        return $this->db->insert($this->_table, $this);
    }

    public function update()
    {
        $post = $this->input->post();
        $this->id_asset_req = $post["id"];
        $this->mr_date_register = $post["mr_date_register"];
        $this->no_mr_asset = $post["no_mr_asset"];
        $this->item_description = $post["item_description"];
		$this->specification = $post["specification"];
        $this->qty = $post["qty"];
        $this->measurement = $post["measurement"];
		$this->notes = $post["notes"];
        $this->status = $post["status"];
        $this->po_no = $post["po_no"];
		$this->do = $post["do"];
        $this->po = $post["po"];
        $this->invoice = $post["invoice"];
		$this->sp3 = $post["sp3"];
        $this->unit_price = $post["unit_price"];
        $this->total_price = $post["total_price"];
        return $this->db->update($this->_table, $this, array('product_id' => $post['id']));
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array("id_asset_req" => $id));
    }
}