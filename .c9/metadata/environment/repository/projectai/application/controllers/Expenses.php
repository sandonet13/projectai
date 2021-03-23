{"filter":false,"title":"Expenses.php","tooltip":"/repository/projectai/application/controllers/Expenses.php","undoManager":{"mark":70,"position":70,"stack":[[{"start":{"row":330,"column":39},"end":{"row":331,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":331,"column":0},"end":{"row":331,"column":12},"action":"insert","lines":["            "]}],[{"start":{"row":331,"column":12},"end":{"row":331,"column":13},"action":"insert","lines":["$"],"id":3},{"start":{"row":331,"column":13},"end":{"row":331,"column":14},"action":"insert","lines":["d"]},{"start":{"row":331,"column":14},"end":{"row":331,"column":15},"action":"insert","lines":["a"]},{"start":{"row":331,"column":15},"end":{"row":331,"column":16},"action":"insert","lines":["t"]},{"start":{"row":331,"column":16},"end":{"row":331,"column":17},"action":"insert","lines":["a"]}],[{"start":{"row":331,"column":17},"end":{"row":331,"column":18},"action":"insert","lines":["-"],"id":4},{"start":{"row":331,"column":18},"end":{"row":331,"column":19},"action":"insert","lines":[">"]}],[{"start":{"row":331,"column":19},"end":{"row":331,"column":20},"action":"insert","lines":["l"],"id":5},{"start":{"row":331,"column":20},"end":{"row":331,"column":21},"action":"insert","lines":["o"]},{"start":{"row":331,"column":21},"end":{"row":331,"column":22},"action":"insert","lines":["c"]},{"start":{"row":331,"column":22},"end":{"row":331,"column":23},"action":"insert","lines":["a"]},{"start":{"row":331,"column":23},"end":{"row":331,"column":24},"action":"insert","lines":["t"]},{"start":{"row":331,"column":24},"end":{"row":331,"column":25},"action":"insert","lines":["i"]},{"start":{"row":331,"column":25},"end":{"row":331,"column":26},"action":"insert","lines":["o"]},{"start":{"row":331,"column":26},"end":{"row":331,"column":27},"action":"insert","lines":["n"]}],[{"start":{"row":331,"column":27},"end":{"row":331,"column":28},"action":"insert","lines":[","],"id":6}],[{"start":{"row":27,"column":0},"end":{"row":28,"column":0},"action":"insert","lines":["",""],"id":7},{"start":{"row":28,"column":0},"end":{"row":29,"column":0},"action":"insert","lines":["",""]}],[{"start":{"row":27,"column":0},"end":{"row":27,"column":4},"action":"insert","lines":["    "],"id":8}],[{"start":{"row":27,"column":0},"end":{"row":27,"column":4},"action":"remove","lines":["    "],"id":10}],[{"start":{"row":27,"column":0},"end":{"row":36,"column":5},"action":"insert","lines":["    private function _get_categories_dropdown() {","        $categories = $this->Expense_categories_model->get_all_where(array(\"deleted\" => 0), 0, 0, \"title\")->result();","","        $categories_dropdown = array(array(\"id\" => \"\", \"text\" => \"- \" . lang(\"category\") . \" -\"));","        foreach ($categories as $category) {","            $categories_dropdown[] = array(\"id\" => $category->id, \"text\" => $category->title);","        }","","        return json_encode($categories_dropdown);","    }"],"id":11}],[{"start":{"row":26,"column":5},"end":{"row":27,"column":0},"action":"insert","lines":["",""],"id":12},{"start":{"row":27,"column":0},"end":{"row":27,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":28,"column":26},"end":{"row":28,"column":36},"action":"remove","lines":["categories"],"id":13},{"start":{"row":28,"column":26},"end":{"row":28,"column":27},"action":"insert","lines":["l"]},{"start":{"row":28,"column":27},"end":{"row":28,"column":28},"action":"insert","lines":["o"]},{"start":{"row":28,"column":28},"end":{"row":28,"column":29},"action":"insert","lines":["c"]},{"start":{"row":28,"column":29},"end":{"row":28,"column":30},"action":"insert","lines":["a"]},{"start":{"row":28,"column":30},"end":{"row":28,"column":31},"action":"insert","lines":["t"]},{"start":{"row":28,"column":31},"end":{"row":28,"column":32},"action":"insert","lines":["i"]},{"start":{"row":28,"column":32},"end":{"row":28,"column":33},"action":"insert","lines":["o"]},{"start":{"row":28,"column":33},"end":{"row":28,"column":34},"action":"insert","lines":["n"]}],[{"start":{"row":29,"column":9},"end":{"row":29,"column":10},"action":"remove","lines":["c"],"id":16},{"start":{"row":29,"column":9},"end":{"row":29,"column":10},"action":"remove","lines":["a"]},{"start":{"row":29,"column":9},"end":{"row":29,"column":10},"action":"remove","lines":["t"]},{"start":{"row":29,"column":9},"end":{"row":29,"column":10},"action":"remove","lines":["e"]},{"start":{"row":29,"column":9},"end":{"row":29,"column":10},"action":"remove","lines":["g"]},{"start":{"row":29,"column":9},"end":{"row":29,"column":10},"action":"remove","lines":["o"]},{"start":{"row":29,"column":9},"end":{"row":29,"column":10},"action":"remove","lines":["r"]},{"start":{"row":29,"column":9},"end":{"row":29,"column":10},"action":"remove","lines":["i"]},{"start":{"row":29,"column":9},"end":{"row":29,"column":10},"action":"remove","lines":["e"]},{"start":{"row":29,"column":9},"end":{"row":29,"column":10},"action":"remove","lines":["s"]}],[{"start":{"row":29,"column":9},"end":{"row":29,"column":10},"action":"insert","lines":["l"],"id":17},{"start":{"row":29,"column":10},"end":{"row":29,"column":11},"action":"insert","lines":["o"]},{"start":{"row":29,"column":11},"end":{"row":29,"column":12},"action":"insert","lines":["c"]},{"start":{"row":29,"column":12},"end":{"row":29,"column":13},"action":"insert","lines":["a"]},{"start":{"row":29,"column":13},"end":{"row":29,"column":14},"action":"insert","lines":["t"]},{"start":{"row":29,"column":14},"end":{"row":29,"column":15},"action":"insert","lines":["i"]},{"start":{"row":29,"column":15},"end":{"row":29,"column":16},"action":"insert","lines":["o"]},{"start":{"row":29,"column":16},"end":{"row":29,"column":17},"action":"insert","lines":["n"]}],[{"start":{"row":29,"column":35},"end":{"row":29,"column":45},"action":"remove","lines":["categories"],"id":18},{"start":{"row":29,"column":34},"end":{"row":29,"column":35},"action":"remove","lines":["_"]}],[{"start":{"row":31,"column":9},"end":{"row":31,"column":19},"action":"remove","lines":["categories"],"id":19},{"start":{"row":31,"column":9},"end":{"row":31,"column":10},"action":"insert","lines":["l"]},{"start":{"row":31,"column":10},"end":{"row":31,"column":11},"action":"insert","lines":["o"]},{"start":{"row":31,"column":11},"end":{"row":31,"column":12},"action":"insert","lines":["c"]},{"start":{"row":31,"column":12},"end":{"row":31,"column":13},"action":"insert","lines":["a"]},{"start":{"row":31,"column":13},"end":{"row":31,"column":14},"action":"insert","lines":["t"]},{"start":{"row":31,"column":14},"end":{"row":31,"column":15},"action":"insert","lines":["i"]},{"start":{"row":31,"column":15},"end":{"row":31,"column":16},"action":"insert","lines":["o"]},{"start":{"row":31,"column":16},"end":{"row":31,"column":17},"action":"insert","lines":["n"]}],[{"start":{"row":31,"column":76},"end":{"row":31,"column":84},"action":"remove","lines":["category"],"id":20},{"start":{"row":31,"column":76},"end":{"row":31,"column":77},"action":"insert","lines":["l"]},{"start":{"row":31,"column":77},"end":{"row":31,"column":78},"action":"insert","lines":["o"]},{"start":{"row":31,"column":78},"end":{"row":31,"column":79},"action":"insert","lines":["c"]},{"start":{"row":31,"column":79},"end":{"row":31,"column":80},"action":"insert","lines":["a"]},{"start":{"row":31,"column":80},"end":{"row":31,"column":81},"action":"insert","lines":["t"]},{"start":{"row":31,"column":81},"end":{"row":31,"column":82},"action":"insert","lines":["i"]},{"start":{"row":31,"column":82},"end":{"row":31,"column":83},"action":"insert","lines":["o"]},{"start":{"row":31,"column":83},"end":{"row":31,"column":84},"action":"insert","lines":["n"]}],[{"start":{"row":32,"column":18},"end":{"row":32,"column":28},"action":"remove","lines":["categories"],"id":21},{"start":{"row":32,"column":18},"end":{"row":32,"column":19},"action":"insert","lines":["l"]},{"start":{"row":32,"column":19},"end":{"row":32,"column":20},"action":"insert","lines":["c"]},{"start":{"row":32,"column":20},"end":{"row":32,"column":21},"action":"insert","lines":["o"]},{"start":{"row":32,"column":21},"end":{"row":32,"column":22},"action":"insert","lines":["a"]},{"start":{"row":32,"column":22},"end":{"row":32,"column":23},"action":"insert","lines":["t"]},{"start":{"row":32,"column":23},"end":{"row":32,"column":24},"action":"insert","lines":["i"]},{"start":{"row":32,"column":24},"end":{"row":32,"column":25},"action":"insert","lines":["o"]},{"start":{"row":32,"column":25},"end":{"row":32,"column":26},"action":"insert","lines":["n"]}],[{"start":{"row":32,"column":19},"end":{"row":32,"column":20},"action":"remove","lines":["c"],"id":22}],[{"start":{"row":32,"column":20},"end":{"row":32,"column":21},"action":"insert","lines":["c"],"id":23}],[{"start":{"row":32,"column":31},"end":{"row":32,"column":39},"action":"remove","lines":["category"],"id":24},{"start":{"row":32,"column":31},"end":{"row":32,"column":32},"action":"insert","lines":["l"]},{"start":{"row":32,"column":32},"end":{"row":32,"column":33},"action":"insert","lines":["c"]},{"start":{"row":32,"column":33},"end":{"row":32,"column":34},"action":"insert","lines":["o"]},{"start":{"row":32,"column":34},"end":{"row":32,"column":35},"action":"insert","lines":["a"]},{"start":{"row":32,"column":35},"end":{"row":32,"column":36},"action":"insert","lines":["t"]},{"start":{"row":32,"column":36},"end":{"row":32,"column":37},"action":"insert","lines":["i"]},{"start":{"row":32,"column":37},"end":{"row":32,"column":38},"action":"insert","lines":["o"]},{"start":{"row":32,"column":38},"end":{"row":32,"column":39},"action":"insert","lines":["n"]}],[{"start":{"row":32,"column":38},"end":{"row":32,"column":39},"action":"remove","lines":["n"],"id":25},{"start":{"row":32,"column":37},"end":{"row":32,"column":38},"action":"remove","lines":["o"]},{"start":{"row":32,"column":36},"end":{"row":32,"column":37},"action":"remove","lines":["i"]},{"start":{"row":32,"column":35},"end":{"row":32,"column":36},"action":"remove","lines":["t"]},{"start":{"row":32,"column":34},"end":{"row":32,"column":35},"action":"remove","lines":["a"]},{"start":{"row":32,"column":33},"end":{"row":32,"column":34},"action":"remove","lines":["o"]},{"start":{"row":32,"column":32},"end":{"row":32,"column":33},"action":"remove","lines":["c"]}],[{"start":{"row":32,"column":32},"end":{"row":32,"column":33},"action":"insert","lines":["c"],"id":26},{"start":{"row":32,"column":33},"end":{"row":32,"column":34},"action":"insert","lines":["o"]},{"start":{"row":32,"column":34},"end":{"row":32,"column":35},"action":"insert","lines":["a"]},{"start":{"row":32,"column":35},"end":{"row":32,"column":36},"action":"insert","lines":["t"]},{"start":{"row":32,"column":36},"end":{"row":32,"column":37},"action":"insert","lines":["i"]},{"start":{"row":32,"column":37},"end":{"row":32,"column":38},"action":"insert","lines":["o"]},{"start":{"row":32,"column":38},"end":{"row":32,"column":39},"action":"insert","lines":["n"]}],[{"start":{"row":32,"column":38},"end":{"row":32,"column":39},"action":"remove","lines":["n"],"id":27},{"start":{"row":32,"column":37},"end":{"row":32,"column":38},"action":"remove","lines":["o"]},{"start":{"row":32,"column":36},"end":{"row":32,"column":37},"action":"remove","lines":["i"]},{"start":{"row":32,"column":35},"end":{"row":32,"column":36},"action":"remove","lines":["t"]},{"start":{"row":32,"column":34},"end":{"row":32,"column":35},"action":"remove","lines":["a"]},{"start":{"row":32,"column":33},"end":{"row":32,"column":34},"action":"remove","lines":["o"]},{"start":{"row":32,"column":32},"end":{"row":32,"column":33},"action":"remove","lines":["c"]}],[{"start":{"row":32,"column":32},"end":{"row":32,"column":33},"action":"insert","lines":["o"],"id":28},{"start":{"row":32,"column":33},"end":{"row":32,"column":34},"action":"insert","lines":["c"]},{"start":{"row":32,"column":34},"end":{"row":32,"column":35},"action":"insert","lines":["a"]},{"start":{"row":32,"column":35},"end":{"row":32,"column":36},"action":"insert","lines":["t"]},{"start":{"row":32,"column":36},"end":{"row":32,"column":37},"action":"insert","lines":["i"]},{"start":{"row":32,"column":37},"end":{"row":32,"column":38},"action":"insert","lines":["o"]},{"start":{"row":32,"column":38},"end":{"row":32,"column":39},"action":"insert","lines":["n"]}],[{"start":{"row":33,"column":13},"end":{"row":33,"column":23},"action":"remove","lines":["categories"],"id":29},{"start":{"row":33,"column":13},"end":{"row":33,"column":14},"action":"insert","lines":["l"]},{"start":{"row":33,"column":14},"end":{"row":33,"column":15},"action":"insert","lines":["c"]},{"start":{"row":33,"column":15},"end":{"row":33,"column":16},"action":"insert","lines":["o"]},{"start":{"row":33,"column":16},"end":{"row":33,"column":17},"action":"insert","lines":["a"]},{"start":{"row":33,"column":17},"end":{"row":33,"column":18},"action":"insert","lines":["t"]},{"start":{"row":33,"column":18},"end":{"row":33,"column":19},"action":"insert","lines":["i"]},{"start":{"row":33,"column":19},"end":{"row":33,"column":20},"action":"insert","lines":["o"]},{"start":{"row":33,"column":20},"end":{"row":33,"column":21},"action":"insert","lines":["n"]}],[{"start":{"row":33,"column":20},"end":{"row":33,"column":21},"action":"remove","lines":["n"],"id":30},{"start":{"row":33,"column":19},"end":{"row":33,"column":20},"action":"remove","lines":["o"]},{"start":{"row":33,"column":18},"end":{"row":33,"column":19},"action":"remove","lines":["i"]},{"start":{"row":33,"column":17},"end":{"row":33,"column":18},"action":"remove","lines":["t"]},{"start":{"row":33,"column":16},"end":{"row":33,"column":17},"action":"remove","lines":["a"]},{"start":{"row":33,"column":15},"end":{"row":33,"column":16},"action":"remove","lines":["o"]},{"start":{"row":33,"column":14},"end":{"row":33,"column":15},"action":"remove","lines":["c"]}],[{"start":{"row":33,"column":14},"end":{"row":33,"column":15},"action":"insert","lines":["o"],"id":31},{"start":{"row":33,"column":15},"end":{"row":33,"column":16},"action":"insert","lines":["c"]},{"start":{"row":33,"column":16},"end":{"row":33,"column":17},"action":"insert","lines":["a"]},{"start":{"row":33,"column":17},"end":{"row":33,"column":18},"action":"insert","lines":["t"]},{"start":{"row":33,"column":18},"end":{"row":33,"column":19},"action":"insert","lines":["i"]},{"start":{"row":33,"column":19},"end":{"row":33,"column":20},"action":"insert","lines":["o"]},{"start":{"row":33,"column":20},"end":{"row":33,"column":21},"action":"insert","lines":["n"]}],[{"start":{"row":33,"column":50},"end":{"row":33,"column":58},"action":"remove","lines":["category"],"id":32},{"start":{"row":33,"column":50},"end":{"row":33,"column":51},"action":"insert","lines":["l"]},{"start":{"row":33,"column":51},"end":{"row":33,"column":52},"action":"insert","lines":["c"]},{"start":{"row":33,"column":52},"end":{"row":33,"column":53},"action":"insert","lines":["o"]},{"start":{"row":33,"column":53},"end":{"row":33,"column":54},"action":"insert","lines":["a"]},{"start":{"row":33,"column":54},"end":{"row":33,"column":55},"action":"insert","lines":["t"]},{"start":{"row":33,"column":55},"end":{"row":33,"column":56},"action":"insert","lines":["i"]}],[{"start":{"row":33,"column":55},"end":{"row":33,"column":56},"action":"remove","lines":["i"],"id":33},{"start":{"row":33,"column":54},"end":{"row":33,"column":55},"action":"remove","lines":["t"]},{"start":{"row":33,"column":53},"end":{"row":33,"column":54},"action":"remove","lines":["a"]},{"start":{"row":33,"column":52},"end":{"row":33,"column":53},"action":"remove","lines":["o"]},{"start":{"row":33,"column":51},"end":{"row":33,"column":52},"action":"remove","lines":["c"]}],[{"start":{"row":33,"column":51},"end":{"row":33,"column":52},"action":"insert","lines":["o"],"id":34},{"start":{"row":33,"column":52},"end":{"row":33,"column":53},"action":"insert","lines":["c"]},{"start":{"row":33,"column":53},"end":{"row":33,"column":54},"action":"insert","lines":["a"]},{"start":{"row":33,"column":54},"end":{"row":33,"column":55},"action":"insert","lines":["t"]},{"start":{"row":33,"column":55},"end":{"row":33,"column":56},"action":"insert","lines":["i"]},{"start":{"row":33,"column":56},"end":{"row":33,"column":57},"action":"insert","lines":["o"]},{"start":{"row":33,"column":57},"end":{"row":33,"column":58},"action":"insert","lines":["n"]}],[{"start":{"row":33,"column":75},"end":{"row":33,"column":83},"action":"remove","lines":["category"],"id":35},{"start":{"row":33,"column":75},"end":{"row":33,"column":76},"action":"insert","lines":["l"]},{"start":{"row":33,"column":76},"end":{"row":33,"column":77},"action":"insert","lines":["c"]},{"start":{"row":33,"column":77},"end":{"row":33,"column":78},"action":"insert","lines":["o"]},{"start":{"row":33,"column":78},"end":{"row":33,"column":79},"action":"insert","lines":["a"]},{"start":{"row":33,"column":79},"end":{"row":33,"column":80},"action":"insert","lines":["t"]},{"start":{"row":33,"column":80},"end":{"row":33,"column":81},"action":"insert","lines":["i"]}],[{"start":{"row":33,"column":80},"end":{"row":33,"column":81},"action":"remove","lines":["i"],"id":36},{"start":{"row":33,"column":79},"end":{"row":33,"column":80},"action":"remove","lines":["t"]},{"start":{"row":33,"column":78},"end":{"row":33,"column":79},"action":"remove","lines":["a"]},{"start":{"row":33,"column":77},"end":{"row":33,"column":78},"action":"remove","lines":["o"]},{"start":{"row":33,"column":76},"end":{"row":33,"column":77},"action":"remove","lines":["c"]}],[{"start":{"row":33,"column":76},"end":{"row":33,"column":77},"action":"insert","lines":["o"],"id":37},{"start":{"row":33,"column":77},"end":{"row":33,"column":78},"action":"insert","lines":["c"]},{"start":{"row":33,"column":78},"end":{"row":33,"column":79},"action":"insert","lines":["a"]},{"start":{"row":33,"column":79},"end":{"row":33,"column":80},"action":"insert","lines":["t"]},{"start":{"row":33,"column":80},"end":{"row":33,"column":81},"action":"insert","lines":["i"]},{"start":{"row":33,"column":81},"end":{"row":33,"column":82},"action":"insert","lines":["o"]},{"start":{"row":33,"column":82},"end":{"row":33,"column":83},"action":"insert","lines":["n"]}],[{"start":{"row":22,"column":77},"end":{"row":23,"column":0},"action":"insert","lines":["",""],"id":38},{"start":{"row":23,"column":0},"end":{"row":23,"column":8},"action":"insert","lines":["        "]}],[{"start":{"row":23,"column":4},"end":{"row":23,"column":8},"action":"remove","lines":["    "],"id":39},{"start":{"row":23,"column":0},"end":{"row":23,"column":4},"action":"remove","lines":["    "]}],[{"start":{"row":23,"column":0},"end":{"row":24,"column":0},"action":"insert","lines":["        $view_data['members_dropdown'] = $this->_get_team_members_dropdown();",""],"id":40}],[{"start":{"row":23,"column":77},"end":{"row":24,"column":0},"action":"remove","lines":["",""],"id":41}],[{"start":{"row":23,"column":20},"end":{"row":23,"column":27},"action":"remove","lines":["members"],"id":42},{"start":{"row":23,"column":20},"end":{"row":23,"column":21},"action":"insert","lines":["l"]},{"start":{"row":23,"column":21},"end":{"row":23,"column":22},"action":"insert","lines":["c"]},{"start":{"row":23,"column":22},"end":{"row":23,"column":23},"action":"insert","lines":["o"]},{"start":{"row":23,"column":23},"end":{"row":23,"column":24},"action":"insert","lines":["a"]},{"start":{"row":23,"column":24},"end":{"row":23,"column":25},"action":"insert","lines":["t"]},{"start":{"row":23,"column":25},"end":{"row":23,"column":26},"action":"insert","lines":["i"]},{"start":{"row":23,"column":26},"end":{"row":23,"column":27},"action":"insert","lines":["o"]},{"start":{"row":23,"column":27},"end":{"row":23,"column":28},"action":"insert","lines":["n"]}],[{"start":{"row":23,"column":27},"end":{"row":23,"column":28},"action":"remove","lines":["n"],"id":43},{"start":{"row":23,"column":26},"end":{"row":23,"column":27},"action":"remove","lines":["o"]},{"start":{"row":23,"column":25},"end":{"row":23,"column":26},"action":"remove","lines":["i"]},{"start":{"row":23,"column":24},"end":{"row":23,"column":25},"action":"remove","lines":["t"]},{"start":{"row":23,"column":23},"end":{"row":23,"column":24},"action":"remove","lines":["a"]},{"start":{"row":23,"column":22},"end":{"row":23,"column":23},"action":"remove","lines":["o"]},{"start":{"row":23,"column":21},"end":{"row":23,"column":22},"action":"remove","lines":["c"]}],[{"start":{"row":23,"column":21},"end":{"row":23,"column":22},"action":"insert","lines":["o"],"id":44},{"start":{"row":23,"column":22},"end":{"row":23,"column":23},"action":"insert","lines":["c"]},{"start":{"row":23,"column":23},"end":{"row":23,"column":24},"action":"insert","lines":["a"]},{"start":{"row":23,"column":24},"end":{"row":23,"column":25},"action":"insert","lines":["t"]},{"start":{"row":23,"column":25},"end":{"row":23,"column":26},"action":"insert","lines":["i"]},{"start":{"row":23,"column":26},"end":{"row":23,"column":27},"action":"insert","lines":["o"]},{"start":{"row":23,"column":27},"end":{"row":23,"column":28},"action":"insert","lines":["n"]}],[{"start":{"row":23,"column":50},"end":{"row":23,"column":77},"action":"remove","lines":["get_team_members_dropdown()"],"id":45},{"start":{"row":23,"column":50},"end":{"row":23,"column":74},"action":"insert","lines":["_get_location_dropdown()"]}],[{"start":{"row":23,"column":50},"end":{"row":23,"column":51},"action":"remove","lines":["_"],"id":46}],[{"start":{"row":37,"column":28},"end":{"row":37,"column":38},"action":"remove","lines":["categories"],"id":47},{"start":{"row":37,"column":28},"end":{"row":37,"column":29},"action":"insert","lines":["l"]},{"start":{"row":37,"column":29},"end":{"row":37,"column":30},"action":"insert","lines":["o"]},{"start":{"row":37,"column":30},"end":{"row":37,"column":31},"action":"insert","lines":["c"]},{"start":{"row":37,"column":31},"end":{"row":37,"column":32},"action":"insert","lines":["a"]},{"start":{"row":37,"column":32},"end":{"row":37,"column":33},"action":"insert","lines":["t"]},{"start":{"row":37,"column":33},"end":{"row":37,"column":34},"action":"insert","lines":["i"]},{"start":{"row":37,"column":34},"end":{"row":37,"column":35},"action":"insert","lines":["o"]},{"start":{"row":37,"column":35},"end":{"row":37,"column":36},"action":"insert","lines":["n"]}],[{"start":{"row":89,"column":111},"end":{"row":90,"column":0},"action":"insert","lines":["",""],"id":48},{"start":{"row":90,"column":0},"end":{"row":90,"column":8},"action":"insert","lines":["        "]}],[{"start":{"row":90,"column":4},"end":{"row":90,"column":8},"action":"remove","lines":["    "],"id":49},{"start":{"row":90,"column":0},"end":{"row":90,"column":4},"action":"remove","lines":["    "]}],[{"start":{"row":90,"column":0},"end":{"row":91,"column":0},"action":"insert","lines":["        $view_data['categories_dropdown'] = $this->Expense_categories_model->get_dropdown_list(array(\"title\"));",""],"id":50}],[{"start":{"row":90,"column":111},"end":{"row":91,"column":0},"action":"remove","lines":["",""],"id":51}],[{"start":{"row":90,"column":20},"end":{"row":90,"column":30},"action":"remove","lines":["categories"],"id":52},{"start":{"row":90,"column":20},"end":{"row":90,"column":21},"action":"insert","lines":["l"]},{"start":{"row":90,"column":21},"end":{"row":90,"column":22},"action":"insert","lines":["o"]},{"start":{"row":90,"column":22},"end":{"row":90,"column":23},"action":"insert","lines":["c"]},{"start":{"row":90,"column":23},"end":{"row":90,"column":24},"action":"insert","lines":["a"]},{"start":{"row":90,"column":24},"end":{"row":90,"column":25},"action":"insert","lines":["t"]},{"start":{"row":90,"column":25},"end":{"row":90,"column":26},"action":"insert","lines":["i"]},{"start":{"row":90,"column":26},"end":{"row":90,"column":27},"action":"insert","lines":["o"]},{"start":{"row":90,"column":27},"end":{"row":90,"column":28},"action":"insert","lines":["n"]}],[{"start":{"row":90,"column":57},"end":{"row":90,"column":67},"action":"remove","lines":["categories"],"id":53},{"start":{"row":90,"column":56},"end":{"row":90,"column":57},"action":"remove","lines":["_"]}],[{"start":{"row":90,"column":56},"end":{"row":90,"column":57},"action":"insert","lines":["s"],"id":54}],[{"start":{"row":90,"column":90},"end":{"row":90,"column":95},"action":"remove","lines":["title"],"id":55},{"start":{"row":90,"column":90},"end":{"row":90,"column":91},"action":"insert","lines":["l"]},{"start":{"row":90,"column":91},"end":{"row":90,"column":92},"action":"insert","lines":["c"]},{"start":{"row":90,"column":92},"end":{"row":90,"column":93},"action":"insert","lines":["o"]},{"start":{"row":90,"column":93},"end":{"row":90,"column":94},"action":"insert","lines":["a"]},{"start":{"row":90,"column":94},"end":{"row":90,"column":95},"action":"insert","lines":["t"]},{"start":{"row":90,"column":95},"end":{"row":90,"column":96},"action":"insert","lines":["i"]},{"start":{"row":90,"column":96},"end":{"row":90,"column":97},"action":"insert","lines":["o"]},{"start":{"row":90,"column":97},"end":{"row":90,"column":98},"action":"insert","lines":["n"]}],[{"start":{"row":90,"column":91},"end":{"row":90,"column":92},"action":"remove","lines":["c"],"id":56}],[{"start":{"row":90,"column":92},"end":{"row":90,"column":93},"action":"insert","lines":["c"],"id":57}],[{"start":{"row":30,"column":86},"end":{"row":30,"column":91},"action":"remove","lines":["title"],"id":58},{"start":{"row":30,"column":86},"end":{"row":30,"column":87},"action":"insert","lines":["l"]},{"start":{"row":30,"column":87},"end":{"row":30,"column":88},"action":"insert","lines":["o"]},{"start":{"row":30,"column":88},"end":{"row":30,"column":89},"action":"insert","lines":["c"]},{"start":{"row":30,"column":89},"end":{"row":30,"column":90},"action":"insert","lines":["a"]},{"start":{"row":30,"column":90},"end":{"row":30,"column":91},"action":"insert","lines":["t"]},{"start":{"row":30,"column":91},"end":{"row":30,"column":92},"action":"insert","lines":["i"]},{"start":{"row":30,"column":92},"end":{"row":30,"column":93},"action":"insert","lines":["o"]},{"start":{"row":30,"column":93},"end":{"row":30,"column":94},"action":"insert","lines":["n"]}],[{"start":{"row":123,"column":34},"end":{"row":124,"column":0},"action":"insert","lines":["",""],"id":59},{"start":{"row":124,"column":0},"end":{"row":124,"column":12},"action":"insert","lines":["            "]}],[{"start":{"row":124,"column":12},"end":{"row":124,"column":14},"action":"insert","lines":["\"\""],"id":60}],[{"start":{"row":124,"column":13},"end":{"row":124,"column":14},"action":"insert","lines":["l"],"id":61},{"start":{"row":124,"column":14},"end":{"row":124,"column":15},"action":"insert","lines":["c"]},{"start":{"row":124,"column":15},"end":{"row":124,"column":16},"action":"insert","lines":["o"]},{"start":{"row":124,"column":16},"end":{"row":124,"column":17},"action":"insert","lines":["a"]},{"start":{"row":124,"column":17},"end":{"row":124,"column":18},"action":"insert","lines":["t"]},{"start":{"row":124,"column":18},"end":{"row":124,"column":19},"action":"insert","lines":["i"]},{"start":{"row":124,"column":19},"end":{"row":124,"column":20},"action":"insert","lines":["o"]}],[{"start":{"row":124,"column":19},"end":{"row":124,"column":20},"action":"remove","lines":["o"],"id":62},{"start":{"row":124,"column":18},"end":{"row":124,"column":19},"action":"remove","lines":["i"]},{"start":{"row":124,"column":17},"end":{"row":124,"column":18},"action":"remove","lines":["t"]},{"start":{"row":124,"column":16},"end":{"row":124,"column":17},"action":"remove","lines":["a"]},{"start":{"row":124,"column":15},"end":{"row":124,"column":16},"action":"remove","lines":["o"]},{"start":{"row":124,"column":14},"end":{"row":124,"column":15},"action":"remove","lines":["c"]}],[{"start":{"row":124,"column":14},"end":{"row":124,"column":15},"action":"insert","lines":["o"],"id":63},{"start":{"row":124,"column":15},"end":{"row":124,"column":16},"action":"insert","lines":["c"]},{"start":{"row":124,"column":16},"end":{"row":124,"column":17},"action":"insert","lines":["a"]},{"start":{"row":124,"column":17},"end":{"row":124,"column":18},"action":"insert","lines":["t"]},{"start":{"row":124,"column":18},"end":{"row":124,"column":19},"action":"insert","lines":["i"]},{"start":{"row":124,"column":19},"end":{"row":124,"column":20},"action":"insert","lines":["o"]},{"start":{"row":124,"column":20},"end":{"row":124,"column":21},"action":"insert","lines":["n"]}],[{"start":{"row":124,"column":22},"end":{"row":124,"column":23},"action":"insert","lines":[" "],"id":64},{"start":{"row":124,"column":23},"end":{"row":124,"column":24},"action":"insert","lines":["="]},{"start":{"row":124,"column":24},"end":{"row":124,"column":25},"action":"insert","lines":[">"]}],[{"start":{"row":124,"column":25},"end":{"row":124,"column":26},"action":"insert","lines":[" "],"id":65}],[{"start":{"row":124,"column":26},"end":{"row":124,"column":28},"action":"insert","lines":["\"\""],"id":66}],[{"start":{"row":124,"column":27},"end":{"row":124,"column":28},"action":"insert","lines":["r"],"id":67},{"start":{"row":124,"column":28},"end":{"row":124,"column":29},"action":"insert","lines":["e"]},{"start":{"row":124,"column":29},"end":{"row":124,"column":30},"action":"insert","lines":["q"]},{"start":{"row":124,"column":30},"end":{"row":124,"column":31},"action":"insert","lines":["u"]},{"start":{"row":124,"column":31},"end":{"row":124,"column":32},"action":"insert","lines":["i"]},{"start":{"row":124,"column":32},"end":{"row":124,"column":33},"action":"insert","lines":["r"]},{"start":{"row":124,"column":33},"end":{"row":124,"column":34},"action":"insert","lines":["e"]},{"start":{"row":124,"column":34},"end":{"row":124,"column":35},"action":"insert","lines":["d"]}],[{"start":{"row":123,"column":34},"end":{"row":123,"column":35},"action":"insert","lines":[","],"id":68}],[{"start":{"row":145,"column":111},"end":{"row":146,"column":0},"action":"insert","lines":["",""],"id":69},{"start":{"row":146,"column":0},"end":{"row":146,"column":12},"action":"insert","lines":["            "]}],[{"start":{"row":146,"column":8},"end":{"row":146,"column":12},"action":"remove","lines":["    "],"id":70},{"start":{"row":146,"column":4},"end":{"row":146,"column":8},"action":"remove","lines":["    "]}],[{"start":{"row":146,"column":0},"end":{"row":146,"column":4},"action":"remove","lines":["    "],"id":72}],[{"start":{"row":146,"column":0},"end":{"row":147,"column":0},"action":"insert","lines":["            \"category_id\" => $this->input->post('category_id'),",""],"id":73}],[{"start":{"row":146,"column":63},"end":{"row":147,"column":0},"action":"remove","lines":["",""],"id":74}],[{"start":{"row":146,"column":13},"end":{"row":146,"column":24},"action":"remove","lines":["category_id"],"id":75},{"start":{"row":146,"column":13},"end":{"row":146,"column":14},"action":"insert","lines":["l"]},{"start":{"row":146,"column":14},"end":{"row":146,"column":15},"action":"insert","lines":["o"]},{"start":{"row":146,"column":15},"end":{"row":146,"column":16},"action":"insert","lines":["c"]},{"start":{"row":146,"column":16},"end":{"row":146,"column":17},"action":"insert","lines":["a"]},{"start":{"row":146,"column":17},"end":{"row":146,"column":18},"action":"insert","lines":["t"]},{"start":{"row":146,"column":18},"end":{"row":146,"column":19},"action":"insert","lines":["i"]},{"start":{"row":146,"column":19},"end":{"row":146,"column":20},"action":"insert","lines":["o"]},{"start":{"row":146,"column":20},"end":{"row":146,"column":21},"action":"insert","lines":["n"]}],[{"start":{"row":146,"column":46},"end":{"row":146,"column":57},"action":"remove","lines":["category_id"],"id":76},{"start":{"row":146,"column":46},"end":{"row":146,"column":47},"action":"insert","lines":["l"]},{"start":{"row":146,"column":47},"end":{"row":146,"column":48},"action":"insert","lines":["o"]},{"start":{"row":146,"column":48},"end":{"row":146,"column":49},"action":"insert","lines":["c"]},{"start":{"row":146,"column":49},"end":{"row":146,"column":50},"action":"insert","lines":["a"]},{"start":{"row":146,"column":50},"end":{"row":146,"column":51},"action":"insert","lines":["t"]},{"start":{"row":146,"column":51},"end":{"row":146,"column":52},"action":"insert","lines":["i"]},{"start":{"row":146,"column":52},"end":{"row":146,"column":53},"action":"insert","lines":["o"]},{"start":{"row":146,"column":53},"end":{"row":146,"column":54},"action":"insert","lines":["n"]}]]},"ace":{"folds":[],"scrolltop":3056,"scrollleft":0,"selection":{"start":{"row":241,"column":8},"end":{"row":241,"column":76},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1615966324977,"hash":"ee389d9346bee1abeb1950b113b406668a7461bf"}