{"filter":false,"title":"Expenses_model.php","tooltip":"/application/models/Expenses_model.php","undoManager":{"mark":100,"position":100,"stack":[[{"start":{"row":148,"column":0},"end":{"row":154,"column":3},"action":"insert","lines":[" public function upddata_rjct($data) {","        $add_material_request_table = $this->db->dbprefix('add_material_request');","        $this->db->where('mr_no', $data['mr_no']);","        $this->db->where('status_id', $data['status_id']);","        $query = $this->db->update($add_material_request_table ,array('status_id' => 5));","        return true;","  }"],"id":4}],[{"start":{"row":147,"column":5},"end":{"row":148,"column":0},"action":"insert","lines":["",""],"id":5},{"start":{"row":148,"column":0},"end":{"row":148,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":149,"column":17},"end":{"row":149,"column":29},"action":"remove","lines":["upddata_rjct"],"id":6},{"start":{"row":149,"column":17},"end":{"row":149,"column":18},"action":"insert","lines":["w"]},{"start":{"row":149,"column":18},"end":{"row":149,"column":19},"action":"insert","lines":["_"]},{"start":{"row":149,"column":19},"end":{"row":149,"column":20},"action":"insert","lines":["m"]},{"start":{"row":149,"column":20},"end":{"row":149,"column":21},"action":"insert","lines":["o"]},{"start":{"row":149,"column":21},"end":{"row":149,"column":22},"action":"insert","lines":["n"]},{"start":{"row":149,"column":22},"end":{"row":149,"column":23},"action":"insert","lines":["t"]},{"start":{"row":149,"column":23},"end":{"row":149,"column":24},"action":"insert","lines":["h"]},{"start":{"row":149,"column":24},"end":{"row":149,"column":25},"action":"insert","lines":["s"]}],[{"start":{"row":150,"column":7},"end":{"row":150,"column":82},"action":"remove","lines":[" $add_material_request_table = $this->db->dbprefix('add_material_request');"],"id":7},{"start":{"row":150,"column":7},"end":{"row":150,"column":57},"action":"insert","lines":["$expenses_table = $this->db->dbprefix('expenses');"]}],[{"start":{"row":150,"column":7},"end":{"row":150,"column":8},"action":"insert","lines":[" "],"id":8}],[{"start":{"row":152,"column":26},"end":{"row":152,"column":32},"action":"remove","lines":["status"],"id":9},{"start":{"row":152,"column":26},"end":{"row":152,"column":27},"action":"insert","lines":["l"]},{"start":{"row":152,"column":27},"end":{"row":152,"column":28},"action":"insert","lines":["c"]},{"start":{"row":152,"column":28},"end":{"row":152,"column":29},"action":"insert","lines":["o"]},{"start":{"row":152,"column":29},"end":{"row":152,"column":30},"action":"insert","lines":["a"]}],[{"start":{"row":152,"column":29},"end":{"row":152,"column":30},"action":"remove","lines":["a"],"id":10},{"start":{"row":152,"column":28},"end":{"row":152,"column":29},"action":"remove","lines":["o"]},{"start":{"row":152,"column":27},"end":{"row":152,"column":28},"action":"remove","lines":["c"]}],[{"start":{"row":152,"column":27},"end":{"row":152,"column":28},"action":"insert","lines":["o"],"id":11},{"start":{"row":152,"column":28},"end":{"row":152,"column":29},"action":"insert","lines":["c"]},{"start":{"row":152,"column":29},"end":{"row":152,"column":30},"action":"insert","lines":["a"]},{"start":{"row":152,"column":30},"end":{"row":152,"column":31},"action":"insert","lines":["t"]}],[{"start":{"row":152,"column":26},"end":{"row":152,"column":34},"action":"remove","lines":["locat_id"],"id":12},{"start":{"row":152,"column":26},"end":{"row":152,"column":37},"action":"insert","lines":["location_id"]}],[{"start":{"row":152,"column":47},"end":{"row":152,"column":56},"action":"remove","lines":["status_id"],"id":13},{"start":{"row":152,"column":47},"end":{"row":152,"column":48},"action":"insert","lines":["l"]},{"start":{"row":152,"column":48},"end":{"row":152,"column":49},"action":"insert","lines":["c"]},{"start":{"row":152,"column":49},"end":{"row":152,"column":50},"action":"insert","lines":["o"]},{"start":{"row":152,"column":50},"end":{"row":152,"column":51},"action":"insert","lines":["a"]},{"start":{"row":152,"column":51},"end":{"row":152,"column":52},"action":"insert","lines":["t"]},{"start":{"row":152,"column":52},"end":{"row":152,"column":53},"action":"insert","lines":["i"]}],[{"start":{"row":152,"column":52},"end":{"row":152,"column":53},"action":"remove","lines":["i"],"id":14},{"start":{"row":152,"column":51},"end":{"row":152,"column":52},"action":"remove","lines":["t"]},{"start":{"row":152,"column":50},"end":{"row":152,"column":51},"action":"remove","lines":["a"]},{"start":{"row":152,"column":49},"end":{"row":152,"column":50},"action":"remove","lines":["o"]},{"start":{"row":152,"column":48},"end":{"row":152,"column":49},"action":"remove","lines":["c"]}],[{"start":{"row":152,"column":48},"end":{"row":152,"column":49},"action":"insert","lines":["o"],"id":15},{"start":{"row":152,"column":49},"end":{"row":152,"column":50},"action":"insert","lines":["c"]},{"start":{"row":152,"column":50},"end":{"row":152,"column":51},"action":"insert","lines":["a"]},{"start":{"row":152,"column":51},"end":{"row":152,"column":52},"action":"insert","lines":["t"]},{"start":{"row":152,"column":52},"end":{"row":152,"column":53},"action":"insert","lines":["i"]},{"start":{"row":152,"column":53},"end":{"row":152,"column":54},"action":"insert","lines":["o"]},{"start":{"row":152,"column":54},"end":{"row":152,"column":55},"action":"insert","lines":["n"]}],[{"start":{"row":152,"column":47},"end":{"row":152,"column":55},"action":"remove","lines":["location"],"id":16},{"start":{"row":152,"column":47},"end":{"row":152,"column":58},"action":"insert","lines":["location_id"]}],[{"start":{"row":151,"column":19},"end":{"row":151,"column":50},"action":"remove","lines":["where('mr_no', $data['mr_no']);"],"id":17},{"start":{"row":151,"column":19},"end":{"row":151,"column":68},"action":"insert","lines":["where(\"DATE_FORMAT(column_name,'%Y-%m')\", $bulan)"]}],[{"start":{"row":151,"column":68},"end":{"row":151,"column":69},"action":"insert","lines":[";"],"id":18}],[{"start":{"row":151,"column":53},"end":{"row":151,"column":54},"action":"remove","lines":["-"],"id":19},{"start":{"row":151,"column":52},"end":{"row":151,"column":53},"action":"remove","lines":["Y"]},{"start":{"row":151,"column":51},"end":{"row":151,"column":52},"action":"remove","lines":["%"]}],[{"start":{"row":151,"column":58},"end":{"row":151,"column":64},"action":"remove","lines":["$bulan"],"id":20},{"start":{"row":151,"column":58},"end":{"row":151,"column":78},"action":"insert","lines":["$data['location_id']"]}],[{"start":{"row":151,"column":65},"end":{"row":151,"column":76},"action":"remove","lines":["location_id"],"id":21},{"start":{"row":151,"column":65},"end":{"row":151,"column":66},"action":"insert","lines":["d"]},{"start":{"row":151,"column":66},"end":{"row":151,"column":67},"action":"insert","lines":["a"]},{"start":{"row":151,"column":67},"end":{"row":151,"column":68},"action":"insert","lines":["t"]},{"start":{"row":151,"column":68},"end":{"row":151,"column":69},"action":"insert","lines":["e"]}],[{"start":{"row":151,"column":65},"end":{"row":151,"column":69},"action":"remove","lines":["date"],"id":22},{"start":{"row":151,"column":65},"end":{"row":151,"column":77},"action":"insert","lines":["date_request"]}],[{"start":{"row":154,"column":15},"end":{"row":154,"column":20},"action":"remove","lines":["true;"],"id":23},{"start":{"row":154,"column":15},"end":{"row":154,"column":39},"action":"insert","lines":["return $query->result();"]}],[{"start":{"row":154,"column":14},"end":{"row":154,"column":15},"action":"remove","lines":[" "],"id":24},{"start":{"row":154,"column":13},"end":{"row":154,"column":14},"action":"remove","lines":["n"]},{"start":{"row":154,"column":12},"end":{"row":154,"column":13},"action":"remove","lines":["r"]},{"start":{"row":154,"column":11},"end":{"row":154,"column":12},"action":"remove","lines":["u"]},{"start":{"row":154,"column":10},"end":{"row":154,"column":11},"action":"remove","lines":["t"]},{"start":{"row":154,"column":9},"end":{"row":154,"column":10},"action":"remove","lines":["e"]},{"start":{"row":154,"column":8},"end":{"row":154,"column":9},"action":"remove","lines":["r"]}],[{"start":{"row":153,"column":0},"end":{"row":154,"column":32},"action":"remove","lines":["        $query = $this->db->update($add_material_request_table ,array('status_id' => 5));","        return $query->result();"],"id":25},{"start":{"row":153,"column":0},"end":{"row":154,"column":32},"action":"insert","lines":[" $query = $this->db->get();","        return $query->result();"]}],[{"start":{"row":153,"column":1},"end":{"row":153,"column":4},"action":"insert","lines":["   "],"id":26}],[{"start":{"row":153,"column":4},"end":{"row":153,"column":8},"action":"insert","lines":["    "],"id":27}],[{"start":{"row":150,"column":58},"end":{"row":151,"column":0},"action":"insert","lines":["",""],"id":28},{"start":{"row":151,"column":0},"end":{"row":151,"column":8},"action":"insert","lines":["        "]}],[{"start":{"row":151,"column":4},"end":{"row":151,"column":8},"action":"remove","lines":["    "],"id":29},{"start":{"row":151,"column":0},"end":{"row":151,"column":4},"action":"remove","lines":["    "]}],[{"start":{"row":151,"column":0},"end":{"row":152,"column":43},"action":"insert","lines":["$this->db->select('*');","    $this->db->from('tb_pelanggan as pel');"],"id":30}],[{"start":{"row":152,"column":4},"end":{"row":152,"column":8},"action":"insert","lines":["    "],"id":31}],[{"start":{"row":151,"column":0},"end":{"row":151,"column":4},"action":"insert","lines":["    "],"id":32}],[{"start":{"row":151,"column":4},"end":{"row":151,"column":8},"action":"insert","lines":["    "],"id":33}],[{"start":{"row":152,"column":24},"end":{"row":152,"column":45},"action":"remove","lines":["'tb_pelanggan as pel'"],"id":34},{"start":{"row":152,"column":24},"end":{"row":152,"column":25},"action":"insert","lines":["$"]},{"start":{"row":152,"column":25},"end":{"row":152,"column":26},"action":"insert","lines":["e"]}],[{"start":{"row":152,"column":24},"end":{"row":152,"column":26},"action":"remove","lines":["$e"],"id":35},{"start":{"row":152,"column":24},"end":{"row":152,"column":39},"action":"insert","lines":["$expenses_table"]}],[{"start":{"row":153,"column":38},"end":{"row":153,"column":49},"action":"remove","lines":["column_name"],"id":36},{"start":{"row":153,"column":38},"end":{"row":153,"column":39},"action":"insert","lines":["d"]},{"start":{"row":153,"column":39},"end":{"row":153,"column":40},"action":"insert","lines":["a"]},{"start":{"row":153,"column":40},"end":{"row":153,"column":41},"action":"insert","lines":["t"]},{"start":{"row":153,"column":41},"end":{"row":153,"column":42},"action":"insert","lines":["e"]}],[{"start":{"row":153,"column":38},"end":{"row":153,"column":42},"action":"remove","lines":["date"],"id":37},{"start":{"row":153,"column":38},"end":{"row":153,"column":50},"action":"insert","lines":["date_request"]}],[{"start":{"row":149,"column":26},"end":{"row":149,"column":31},"action":"remove","lines":["$data"],"id":38},{"start":{"row":149,"column":26},"end":{"row":149,"column":27},"action":"insert","lines":["$"]},{"start":{"row":149,"column":27},"end":{"row":149,"column":28},"action":"insert","lines":["d"]},{"start":{"row":149,"column":28},"end":{"row":149,"column":29},"action":"insert","lines":["a"]},{"start":{"row":149,"column":29},"end":{"row":149,"column":30},"action":"insert","lines":["t"]},{"start":{"row":149,"column":30},"end":{"row":149,"column":31},"action":"insert","lines":["e"]}],[{"start":{"row":149,"column":31},"end":{"row":149,"column":32},"action":"insert","lines":["_"],"id":39},{"start":{"row":149,"column":32},"end":{"row":149,"column":33},"action":"insert","lines":["r"]},{"start":{"row":149,"column":33},"end":{"row":149,"column":34},"action":"insert","lines":["e"]},{"start":{"row":149,"column":34},"end":{"row":149,"column":35},"action":"insert","lines":["q"]},{"start":{"row":149,"column":35},"end":{"row":149,"column":36},"action":"insert","lines":["u"]},{"start":{"row":149,"column":36},"end":{"row":149,"column":37},"action":"insert","lines":["e"]},{"start":{"row":149,"column":37},"end":{"row":149,"column":38},"action":"insert","lines":["s"]},{"start":{"row":149,"column":38},"end":{"row":149,"column":39},"action":"insert","lines":["t"]}],[{"start":{"row":149,"column":39},"end":{"row":149,"column":40},"action":"insert","lines":[","],"id":40}],[{"start":{"row":149,"column":40},"end":{"row":149,"column":41},"action":"insert","lines":["$"],"id":41},{"start":{"row":149,"column":41},"end":{"row":149,"column":42},"action":"insert","lines":["l"]},{"start":{"row":149,"column":42},"end":{"row":149,"column":43},"action":"insert","lines":["o"]},{"start":{"row":149,"column":43},"end":{"row":149,"column":44},"action":"insert","lines":["a"]}],[{"start":{"row":149,"column":43},"end":{"row":149,"column":44},"action":"remove","lines":["a"],"id":42}],[{"start":{"row":149,"column":43},"end":{"row":149,"column":44},"action":"insert","lines":["c"],"id":43}],[{"start":{"row":149,"column":40},"end":{"row":149,"column":44},"action":"remove","lines":["$loc"],"id":44},{"start":{"row":149,"column":40},"end":{"row":149,"column":52},"action":"insert","lines":["$location_id"]}],[{"start":{"row":154,"column":40},"end":{"row":154,"column":46},"action":"remove","lines":["$data["],"id":45}],[{"start":{"row":154,"column":53},"end":{"row":154,"column":54},"action":"remove","lines":["]"],"id":46}],[{"start":{"row":153,"column":59},"end":{"row":153,"column":65},"action":"remove","lines":["$data["],"id":47}],[{"start":{"row":153,"column":73},"end":{"row":153,"column":74},"action":"remove","lines":["]"],"id":48}],[{"start":{"row":153,"column":72},"end":{"row":153,"column":73},"action":"remove","lines":["'"],"id":49}],[{"start":{"row":153,"column":59},"end":{"row":153,"column":60},"action":"remove","lines":["'"],"id":50}],[{"start":{"row":153,"column":59},"end":{"row":153,"column":60},"action":"insert","lines":["$"],"id":51}],[{"start":{"row":154,"column":52},"end":{"row":154,"column":53},"action":"remove","lines":["'"],"id":52}],[{"start":{"row":154,"column":40},"end":{"row":154,"column":41},"action":"remove","lines":["'"],"id":53}],[{"start":{"row":154,"column":40},"end":{"row":154,"column":41},"action":"insert","lines":["$"],"id":54}],[{"start":{"row":149,"column":26},"end":{"row":149,"column":39},"action":"remove","lines":["$date_request"],"id":55},{"start":{"row":149,"column":26},"end":{"row":149,"column":27},"action":"insert","lines":["$"]},{"start":{"row":149,"column":27},"end":{"row":149,"column":28},"action":"insert","lines":["e"]},{"start":{"row":149,"column":28},"end":{"row":149,"column":29},"action":"insert","lines":["x"]},{"start":{"row":149,"column":29},"end":{"row":149,"column":30},"action":"insert","lines":["p"]},{"start":{"row":149,"column":30},"end":{"row":149,"column":31},"action":"insert","lines":["e"]}],[{"start":{"row":149,"column":31},"end":{"row":149,"column":32},"action":"insert","lines":["n"],"id":56},{"start":{"row":149,"column":32},"end":{"row":149,"column":33},"action":"insert","lines":["s"]},{"start":{"row":149,"column":33},"end":{"row":149,"column":34},"action":"insert","lines":["e"]},{"start":{"row":149,"column":34},"end":{"row":149,"column":35},"action":"insert","lines":["_"]},{"start":{"row":149,"column":35},"end":{"row":149,"column":36},"action":"insert","lines":["D"]},{"start":{"row":149,"column":36},"end":{"row":149,"column":37},"action":"insert","lines":["a"]},{"start":{"row":149,"column":37},"end":{"row":149,"column":38},"action":"insert","lines":["t"]},{"start":{"row":149,"column":38},"end":{"row":149,"column":39},"action":"insert","lines":["e"]}],[{"start":{"row":149,"column":35},"end":{"row":149,"column":36},"action":"remove","lines":["D"],"id":57}],[{"start":{"row":149,"column":35},"end":{"row":149,"column":36},"action":"insert","lines":["d"],"id":58}],[{"start":{"row":153,"column":59},"end":{"row":153,"column":72},"action":"remove","lines":["$date_request"],"id":59},{"start":{"row":153,"column":59},"end":{"row":153,"column":60},"action":"insert","lines":["$"]}],[{"start":{"row":153,"column":59},"end":{"row":153,"column":60},"action":"remove","lines":["$"],"id":60},{"start":{"row":153,"column":59},"end":{"row":153,"column":72},"action":"insert","lines":["$expense_date"]}],[{"start":{"row":153,"column":38},"end":{"row":153,"column":50},"action":"remove","lines":["date_request"],"id":61},{"start":{"row":153,"column":38},"end":{"row":153,"column":39},"action":"insert","lines":["e"]},{"start":{"row":153,"column":39},"end":{"row":153,"column":40},"action":"insert","lines":["z"]}],[{"start":{"row":153,"column":39},"end":{"row":153,"column":40},"action":"remove","lines":["z"],"id":62}],[{"start":{"row":153,"column":39},"end":{"row":153,"column":40},"action":"insert","lines":["x"],"id":63}],[{"start":{"row":153,"column":40},"end":{"row":153,"column":41},"action":"insert","lines":["p"],"id":64}],[{"start":{"row":153,"column":38},"end":{"row":153,"column":41},"action":"remove","lines":["exp"],"id":65},{"start":{"row":153,"column":38},"end":{"row":153,"column":50},"action":"insert","lines":["expense_date"]}],[{"start":{"row":153,"column":25},"end":{"row":153,"column":58},"action":"remove","lines":["\"DATE_FORMAT(expense_date,'%m')\","],"id":66}],[{"start":{"row":153,"column":25},"end":{"row":153,"column":27},"action":"insert","lines":["''"],"id":67}],[{"start":{"row":153,"column":26},"end":{"row":153,"column":27},"action":"insert","lines":["e"],"id":68},{"start":{"row":153,"column":27},"end":{"row":153,"column":28},"action":"insert","lines":["x"]},{"start":{"row":153,"column":28},"end":{"row":153,"column":29},"action":"insert","lines":["p"]},{"start":{"row":153,"column":29},"end":{"row":153,"column":30},"action":"insert","lines":["e"]},{"start":{"row":153,"column":30},"end":{"row":153,"column":31},"action":"insert","lines":["n"]}],[{"start":{"row":153,"column":26},"end":{"row":153,"column":31},"action":"remove","lines":["expen"],"id":69},{"start":{"row":153,"column":26},"end":{"row":153,"column":38},"action":"insert","lines":["expense_date"]}],[{"start":{"row":153,"column":39},"end":{"row":153,"column":40},"action":"insert","lines":[","],"id":70}],[{"start":{"row":149,"column":26},"end":{"row":149,"column":51},"action":"remove","lines":["$expense_date,$location_i"],"id":71},{"start":{"row":149,"column":26},"end":{"row":149,"column":27},"action":"insert","lines":["d"]},{"start":{"row":149,"column":27},"end":{"row":149,"column":28},"action":"insert","lines":["a"]},{"start":{"row":149,"column":28},"end":{"row":149,"column":29},"action":"insert","lines":["t"]},{"start":{"row":149,"column":29},"end":{"row":149,"column":30},"action":"insert","lines":["a"]}],[{"start":{"row":149,"column":26},"end":{"row":149,"column":31},"action":"remove","lines":["datad"],"id":72},{"start":{"row":149,"column":26},"end":{"row":149,"column":27},"action":"insert","lines":["$"]},{"start":{"row":149,"column":27},"end":{"row":149,"column":28},"action":"insert","lines":["d"]},{"start":{"row":149,"column":28},"end":{"row":149,"column":29},"action":"insert","lines":["a"]},{"start":{"row":149,"column":29},"end":{"row":149,"column":30},"action":"insert","lines":["t"]},{"start":{"row":149,"column":30},"end":{"row":149,"column":31},"action":"insert","lines":["a"]}],[{"start":{"row":153,"column":41},"end":{"row":153,"column":42},"action":"insert","lines":["f"],"id":73},{"start":{"row":153,"column":42},"end":{"row":153,"column":43},"action":"insert","lines":["a"]},{"start":{"row":153,"column":43},"end":{"row":153,"column":44},"action":"insert","lines":["t"]},{"start":{"row":153,"column":44},"end":{"row":153,"column":45},"action":"insert","lines":["a"]}],[{"start":{"row":153,"column":44},"end":{"row":153,"column":45},"action":"remove","lines":["a"],"id":74},{"start":{"row":153,"column":43},"end":{"row":153,"column":44},"action":"remove","lines":["t"]},{"start":{"row":153,"column":42},"end":{"row":153,"column":43},"action":"remove","lines":["a"]},{"start":{"row":153,"column":41},"end":{"row":153,"column":42},"action":"remove","lines":["f"]}],[{"start":{"row":153,"column":41},"end":{"row":153,"column":42},"action":"insert","lines":["d"],"id":75},{"start":{"row":153,"column":42},"end":{"row":153,"column":43},"action":"insert","lines":["a"]},{"start":{"row":153,"column":43},"end":{"row":153,"column":44},"action":"insert","lines":["t"]},{"start":{"row":153,"column":44},"end":{"row":153,"column":45},"action":"insert","lines":["a"]},{"start":{"row":153,"column":45},"end":{"row":153,"column":46},"action":"insert","lines":["["]}],[{"start":{"row":153,"column":46},"end":{"row":153,"column":47},"action":"insert","lines":["'"],"id":76}],[{"start":{"row":153,"column":60},"end":{"row":153,"column":61},"action":"insert","lines":["'"],"id":77}],[{"start":{"row":153,"column":47},"end":{"row":153,"column":48},"action":"remove","lines":["$"],"id":78}],[{"start":{"row":154,"column":40},"end":{"row":154,"column":41},"action":"insert","lines":["d"],"id":79},{"start":{"row":154,"column":41},"end":{"row":154,"column":42},"action":"insert","lines":["a"]},{"start":{"row":154,"column":42},"end":{"row":154,"column":43},"action":"insert","lines":["t"]},{"start":{"row":154,"column":43},"end":{"row":154,"column":44},"action":"insert","lines":["a"]},{"start":{"row":154,"column":44},"end":{"row":154,"column":45},"action":"insert","lines":["["]}],[{"start":{"row":154,"column":45},"end":{"row":154,"column":46},"action":"remove","lines":["$"],"id":80}],[{"start":{"row":154,"column":55},"end":{"row":154,"column":56},"action":"remove","lines":["d"],"id":81}],[{"start":{"row":154,"column":55},"end":{"row":154,"column":56},"action":"insert","lines":["="],"id":82},{"start":{"row":154,"column":56},"end":{"row":154,"column":57},"action":"insert","lines":["]"]}],[{"start":{"row":154,"column":56},"end":{"row":154,"column":57},"action":"remove","lines":["]"],"id":83},{"start":{"row":154,"column":55},"end":{"row":154,"column":56},"action":"remove","lines":["="]}],[{"start":{"row":154,"column":55},"end":{"row":154,"column":56},"action":"insert","lines":["]"],"id":84}],[{"start":{"row":154,"column":55},"end":{"row":154,"column":56},"action":"insert","lines":["d"],"id":85},{"start":{"row":154,"column":56},"end":{"row":154,"column":57},"action":"insert","lines":["'"]}],[{"start":{"row":154,"column":45},"end":{"row":154,"column":46},"action":"insert","lines":["'"],"id":86}],[{"start":{"row":153,"column":60},"end":{"row":153,"column":61},"action":"insert","lines":["]"],"id":87}],[{"start":{"row":153,"column":41},"end":{"row":153,"column":42},"action":"insert","lines":["$"],"id":88}],[{"start":{"row":154,"column":40},"end":{"row":154,"column":41},"action":"insert","lines":["$"],"id":89}],[{"start":{"row":157,"column":3},"end":{"row":158,"column":0},"action":"insert","lines":["",""],"id":90},{"start":{"row":158,"column":0},"end":{"row":158,"column":2},"action":"insert","lines":["  "]},{"start":{"row":158,"column":2},"end":{"row":159,"column":0},"action":"insert","lines":["",""]},{"start":{"row":159,"column":0},"end":{"row":159,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":159,"column":2},"end":{"row":209,"column":1},"action":"insert","lines":["public function show_all_data() {","$this->db->select('*');","$this->db->from('employee_info');","$query = $this->db->get();","if ($query->num_rows() > 0) {","return $query->result();","} else {","return false;","}","}","","public function show_data_by_id($id) {","$condition = \"emp_id =\" . \"'\" . $id . \"'\";","$this->db->select('*');","$this->db->from('employee_info');","$this->db->where($condition);","$this->db->limit(1);","$query = $this->db->get();","","if ($query->num_rows() == 1) {","return $query->result();","} else {","return false;","}","}","","public function show_data_by_date($date) {","$condition = \"emp_date_of_join =\" . \"'\" . $date . \"'\";","$this->db->select('*');","$this->db->from('employee_info');","$this->db->where($condition);","$query = $this->db->get();","if ($query->num_rows() > 0) {","return $query->result();","} else {","return false;","}","}","","public function show_data_by_date_range($data) {","$condition = \"emp_date_of_join BETWEEN \" . \"'\" . $data['date1'] . \"'\" . \" AND \" . \"'\" . $data['date2'] . \"'\";","$this->db->select('*');","$this->db->from('employee_info');","$this->db->where($condition);","$query = $this->db->get();","if ($query->num_rows() > 0) {","return $query->result();","} else {","return false;","}","}"],"id":91}],[{"start":{"row":160,"column":0},"end":{"row":160,"column":4},"action":"insert","lines":["    "],"id":92},{"start":{"row":161,"column":0},"end":{"row":161,"column":4},"action":"insert","lines":["    "]},{"start":{"row":162,"column":0},"end":{"row":162,"column":4},"action":"insert","lines":["    "]},{"start":{"row":163,"column":0},"end":{"row":163,"column":4},"action":"insert","lines":["    "]},{"start":{"row":164,"column":0},"end":{"row":164,"column":4},"action":"insert","lines":["    "]},{"start":{"row":165,"column":0},"end":{"row":165,"column":4},"action":"insert","lines":["    "]},{"start":{"row":166,"column":0},"end":{"row":166,"column":4},"action":"insert","lines":["    "]},{"start":{"row":167,"column":0},"end":{"row":167,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":171,"column":0},"end":{"row":171,"column":4},"action":"insert","lines":["    "],"id":93},{"start":{"row":172,"column":0},"end":{"row":172,"column":4},"action":"insert","lines":["    "]},{"start":{"row":173,"column":0},"end":{"row":173,"column":4},"action":"insert","lines":["    "]},{"start":{"row":174,"column":0},"end":{"row":174,"column":4},"action":"insert","lines":["    "]},{"start":{"row":175,"column":0},"end":{"row":175,"column":4},"action":"insert","lines":["    "]},{"start":{"row":176,"column":0},"end":{"row":176,"column":4},"action":"insert","lines":["    "]},{"start":{"row":177,"column":0},"end":{"row":177,"column":4},"action":"insert","lines":["    "]},{"start":{"row":178,"column":0},"end":{"row":178,"column":4},"action":"insert","lines":["    "]},{"start":{"row":179,"column":0},"end":{"row":179,"column":4},"action":"insert","lines":["    "]},{"start":{"row":180,"column":0},"end":{"row":180,"column":4},"action":"insert","lines":["    "]},{"start":{"row":181,"column":0},"end":{"row":181,"column":4},"action":"insert","lines":["    "]},{"start":{"row":182,"column":0},"end":{"row":182,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":186,"column":0},"end":{"row":186,"column":4},"action":"insert","lines":["    "],"id":94},{"start":{"row":187,"column":0},"end":{"row":187,"column":4},"action":"insert","lines":["    "]},{"start":{"row":188,"column":0},"end":{"row":188,"column":4},"action":"insert","lines":["    "]},{"start":{"row":189,"column":0},"end":{"row":189,"column":4},"action":"insert","lines":["    "]},{"start":{"row":190,"column":0},"end":{"row":190,"column":4},"action":"insert","lines":["    "]},{"start":{"row":191,"column":0},"end":{"row":191,"column":4},"action":"insert","lines":["    "]},{"start":{"row":192,"column":0},"end":{"row":192,"column":4},"action":"insert","lines":["    "]},{"start":{"row":193,"column":0},"end":{"row":193,"column":4},"action":"insert","lines":["    "]},{"start":{"row":194,"column":0},"end":{"row":194,"column":4},"action":"insert","lines":["    "]},{"start":{"row":195,"column":0},"end":{"row":195,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":199,"column":0},"end":{"row":199,"column":4},"action":"insert","lines":["    "],"id":95},{"start":{"row":200,"column":0},"end":{"row":200,"column":4},"action":"insert","lines":["    "]},{"start":{"row":201,"column":0},"end":{"row":201,"column":4},"action":"insert","lines":["    "]},{"start":{"row":202,"column":0},"end":{"row":202,"column":4},"action":"insert","lines":["    "]},{"start":{"row":203,"column":0},"end":{"row":203,"column":4},"action":"insert","lines":["    "]},{"start":{"row":204,"column":0},"end":{"row":204,"column":4},"action":"insert","lines":["    "]},{"start":{"row":205,"column":0},"end":{"row":205,"column":4},"action":"insert","lines":["    "]},{"start":{"row":206,"column":0},"end":{"row":206,"column":4},"action":"insert","lines":["    "]},{"start":{"row":207,"column":0},"end":{"row":207,"column":4},"action":"insert","lines":["    "]},{"start":{"row":208,"column":0},"end":{"row":208,"column":4},"action":"insert","lines":["    "]},{"start":{"row":209,"column":0},"end":{"row":209,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":161,"column":21},"end":{"row":161,"column":34},"action":"remove","lines":["employee_info"],"id":96},{"start":{"row":161,"column":21},"end":{"row":161,"column":22},"action":"insert","lines":["e"]},{"start":{"row":161,"column":22},"end":{"row":161,"column":23},"action":"insert","lines":["x"]},{"start":{"row":161,"column":23},"end":{"row":161,"column":24},"action":"insert","lines":["p"]},{"start":{"row":161,"column":24},"end":{"row":161,"column":25},"action":"insert","lines":["e"]},{"start":{"row":161,"column":25},"end":{"row":161,"column":26},"action":"insert","lines":["n"]},{"start":{"row":161,"column":26},"end":{"row":161,"column":27},"action":"insert","lines":["s"]},{"start":{"row":161,"column":27},"end":{"row":161,"column":28},"action":"insert","lines":["e"]},{"start":{"row":161,"column":28},"end":{"row":161,"column":29},"action":"insert","lines":["s"]}],[{"start":{"row":171,"column":18},"end":{"row":171,"column":24},"action":"remove","lines":["emp_id"],"id":97},{"start":{"row":171,"column":18},"end":{"row":171,"column":19},"action":"insert","lines":["i"]},{"start":{"row":171,"column":19},"end":{"row":171,"column":20},"action":"insert","lines":["d"]}],[{"start":{"row":173,"column":21},"end":{"row":173,"column":34},"action":"remove","lines":["employee_info"],"id":98},{"start":{"row":173,"column":21},"end":{"row":173,"column":22},"action":"insert","lines":["e"]},{"start":{"row":173,"column":22},"end":{"row":173,"column":23},"action":"insert","lines":["x"]},{"start":{"row":173,"column":23},"end":{"row":173,"column":24},"action":"insert","lines":["p"]},{"start":{"row":173,"column":24},"end":{"row":173,"column":25},"action":"insert","lines":["e"]},{"start":{"row":173,"column":25},"end":{"row":173,"column":26},"action":"insert","lines":["n"]},{"start":{"row":173,"column":26},"end":{"row":173,"column":27},"action":"insert","lines":["s"]},{"start":{"row":173,"column":27},"end":{"row":173,"column":28},"action":"insert","lines":["e"]},{"start":{"row":173,"column":28},"end":{"row":173,"column":29},"action":"insert","lines":["s"]}],[{"start":{"row":186,"column":18},"end":{"row":186,"column":34},"action":"remove","lines":["emp_date_of_join"],"id":99},{"start":{"row":186,"column":18},"end":{"row":186,"column":19},"action":"insert","lines":["e"]},{"start":{"row":186,"column":19},"end":{"row":186,"column":20},"action":"insert","lines":["x"]},{"start":{"row":186,"column":20},"end":{"row":186,"column":21},"action":"insert","lines":["p"]},{"start":{"row":186,"column":21},"end":{"row":186,"column":22},"action":"insert","lines":["e"]},{"start":{"row":186,"column":22},"end":{"row":186,"column":23},"action":"insert","lines":["n"]},{"start":{"row":186,"column":23},"end":{"row":186,"column":24},"action":"insert","lines":["s"]},{"start":{"row":186,"column":24},"end":{"row":186,"column":25},"action":"insert","lines":["e"]}],[{"start":{"row":186,"column":18},"end":{"row":186,"column":25},"action":"remove","lines":["expense"],"id":100},{"start":{"row":186,"column":18},"end":{"row":186,"column":30},"action":"insert","lines":["expense_date"]}],[{"start":{"row":188,"column":21},"end":{"row":188,"column":34},"action":"remove","lines":["employee_info"],"id":101},{"start":{"row":188,"column":21},"end":{"row":188,"column":22},"action":"insert","lines":["e"]},{"start":{"row":188,"column":22},"end":{"row":188,"column":23},"action":"insert","lines":["x"]},{"start":{"row":188,"column":23},"end":{"row":188,"column":24},"action":"insert","lines":["p"]}],[{"start":{"row":188,"column":21},"end":{"row":188,"column":24},"action":"remove","lines":["exp"],"id":102},{"start":{"row":188,"column":21},"end":{"row":188,"column":29},"action":"insert","lines":["expenses"]}],[{"start":{"row":201,"column":21},"end":{"row":201,"column":34},"action":"remove","lines":["employee_info"],"id":103},{"start":{"row":201,"column":21},"end":{"row":201,"column":22},"action":"insert","lines":["e"]},{"start":{"row":201,"column":22},"end":{"row":201,"column":23},"action":"insert","lines":["x"]}],[{"start":{"row":201,"column":21},"end":{"row":201,"column":23},"action":"remove","lines":["ex"],"id":104},{"start":{"row":201,"column":21},"end":{"row":201,"column":29},"action":"insert","lines":["expenses"]}]]},"ace":{"folds":[],"scrolltop":1883.4375,"scrollleft":0,"selection":{"start":{"row":201,"column":29},"end":{"row":201,"column":29},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":154,"state":"php-start","mode":"ace/mode/php"}},"timestamp":1619407543641,"hash":"c76173e0a8368e5b43735f84cffd2b9ada6885b9"}