{"filter":false,"title":"Pcash_model.php","tooltip":"/application/models/Pcash_model.php","undoManager":{"mark":19,"position":19,"stack":[[{"start":{"row":39,"column":0},"end":{"row":39,"column":38},"action":"remove","lines":["        return $this->db->query($sql);"],"id":2},{"start":{"row":39,"column":0},"end":{"row":42,"column":53},"action":"insert","lines":["        WHERE $expenses_table.deleted=0 AND YEAR($expenses_table.expense_date)= $year $where","        GROUP BY MONTH($expenses_table.expense_date)\";","","        return $this->db->query($expenses)->result();"]}],[{"start":{"row":39,"column":0},"end":{"row":42,"column":53},"action":"remove","lines":["        WHERE $expenses_table.deleted=0 AND YEAR($expenses_table.expense_date)= $year $where","        GROUP BY MONTH($expenses_table.expense_date)\";","","        return $this->db->query($expenses)->result();"],"id":3},{"start":{"row":39,"column":0},"end":{"row":41,"column":38},"action":"insert","lines":["            $join_custom_fields","        WHERE $expenses_table.deleted=0 $where\";","        return $this->db->query($sql);"]}],[{"start":{"row":40,"column":45},"end":{"row":40,"column":46},"action":"remove","lines":["e"],"id":4},{"start":{"row":40,"column":44},"end":{"row":40,"column":45},"action":"remove","lines":["r"]},{"start":{"row":40,"column":43},"end":{"row":40,"column":44},"action":"remove","lines":["e"]},{"start":{"row":40,"column":42},"end":{"row":40,"column":43},"action":"remove","lines":["h"]},{"start":{"row":40,"column":41},"end":{"row":40,"column":42},"action":"remove","lines":["w"]},{"start":{"row":40,"column":40},"end":{"row":40,"column":41},"action":"remove","lines":["$"]},{"start":{"row":40,"column":39},"end":{"row":40,"column":40},"action":"remove","lines":[" "]}],[{"start":{"row":40,"column":38},"end":{"row":40,"column":39},"action":"remove","lines":["0"],"id":5}],[{"start":{"row":40,"column":37},"end":{"row":40,"column":38},"action":"remove","lines":["="],"id":6},{"start":{"row":40,"column":36},"end":{"row":40,"column":37},"action":"remove","lines":["d"]},{"start":{"row":40,"column":35},"end":{"row":40,"column":36},"action":"remove","lines":["e"]},{"start":{"row":40,"column":34},"end":{"row":40,"column":35},"action":"remove","lines":["t"]},{"start":{"row":40,"column":33},"end":{"row":40,"column":34},"action":"remove","lines":["e"]},{"start":{"row":40,"column":32},"end":{"row":40,"column":33},"action":"remove","lines":["l"]},{"start":{"row":40,"column":31},"end":{"row":40,"column":32},"action":"remove","lines":["e"]},{"start":{"row":40,"column":30},"end":{"row":40,"column":31},"action":"remove","lines":["d"]},{"start":{"row":40,"column":29},"end":{"row":40,"column":30},"action":"remove","lines":["."]},{"start":{"row":40,"column":28},"end":{"row":40,"column":29},"action":"remove","lines":["e"]},{"start":{"row":40,"column":27},"end":{"row":40,"column":28},"action":"remove","lines":["l"]},{"start":{"row":40,"column":26},"end":{"row":40,"column":27},"action":"remove","lines":["b"]},{"start":{"row":40,"column":25},"end":{"row":40,"column":26},"action":"remove","lines":["a"]},{"start":{"row":40,"column":24},"end":{"row":40,"column":25},"action":"remove","lines":["t"]},{"start":{"row":40,"column":23},"end":{"row":40,"column":24},"action":"remove","lines":["_"]},{"start":{"row":40,"column":22},"end":{"row":40,"column":23},"action":"remove","lines":["s"]},{"start":{"row":40,"column":21},"end":{"row":40,"column":22},"action":"remove","lines":["e"]},{"start":{"row":40,"column":20},"end":{"row":40,"column":21},"action":"remove","lines":["s"]},{"start":{"row":40,"column":19},"end":{"row":40,"column":20},"action":"remove","lines":["n"]},{"start":{"row":40,"column":18},"end":{"row":40,"column":19},"action":"remove","lines":["e"]},{"start":{"row":40,"column":17},"end":{"row":40,"column":18},"action":"remove","lines":["p"]},{"start":{"row":40,"column":16},"end":{"row":40,"column":17},"action":"remove","lines":["x"]}],[{"start":{"row":40,"column":15},"end":{"row":40,"column":16},"action":"remove","lines":["e"],"id":7},{"start":{"row":40,"column":14},"end":{"row":40,"column":15},"action":"remove","lines":["$"]},{"start":{"row":40,"column":13},"end":{"row":40,"column":14},"action":"remove","lines":[" "]},{"start":{"row":40,"column":12},"end":{"row":40,"column":13},"action":"remove","lines":["E"]},{"start":{"row":40,"column":11},"end":{"row":40,"column":12},"action":"remove","lines":["R"]},{"start":{"row":40,"column":10},"end":{"row":40,"column":11},"action":"remove","lines":["E"]},{"start":{"row":40,"column":9},"end":{"row":40,"column":10},"action":"remove","lines":["H"]},{"start":{"row":40,"column":8},"end":{"row":40,"column":9},"action":"remove","lines":["W"]},{"start":{"row":40,"column":4},"end":{"row":40,"column":8},"action":"remove","lines":["    "]}],[{"start":{"row":40,"column":0},"end":{"row":40,"column":4},"action":"remove","lines":["    "],"id":8},{"start":{"row":39,"column":31},"end":{"row":40,"column":0},"action":"remove","lines":["",""]},{"start":{"row":39,"column":30},"end":{"row":39,"column":31},"action":"remove","lines":["s"]},{"start":{"row":39,"column":29},"end":{"row":39,"column":30},"action":"remove","lines":["d"]},{"start":{"row":39,"column":28},"end":{"row":39,"column":29},"action":"remove","lines":["l"]},{"start":{"row":39,"column":27},"end":{"row":39,"column":28},"action":"remove","lines":["e"]},{"start":{"row":39,"column":26},"end":{"row":39,"column":27},"action":"remove","lines":["i"]},{"start":{"row":39,"column":25},"end":{"row":39,"column":26},"action":"remove","lines":["f"]},{"start":{"row":39,"column":24},"end":{"row":39,"column":25},"action":"remove","lines":["_"]},{"start":{"row":39,"column":23},"end":{"row":39,"column":24},"action":"remove","lines":["m"]},{"start":{"row":39,"column":22},"end":{"row":39,"column":23},"action":"remove","lines":["o"]},{"start":{"row":39,"column":21},"end":{"row":39,"column":22},"action":"remove","lines":["t"]},{"start":{"row":39,"column":20},"end":{"row":39,"column":21},"action":"remove","lines":["s"]}],[{"start":{"row":39,"column":19},"end":{"row":39,"column":20},"action":"remove","lines":["u"],"id":9},{"start":{"row":39,"column":18},"end":{"row":39,"column":19},"action":"remove","lines":["c"]},{"start":{"row":39,"column":17},"end":{"row":39,"column":18},"action":"remove","lines":["_"]},{"start":{"row":39,"column":16},"end":{"row":39,"column":17},"action":"remove","lines":["n"]},{"start":{"row":39,"column":15},"end":{"row":39,"column":16},"action":"remove","lines":["i"]},{"start":{"row":39,"column":14},"end":{"row":39,"column":15},"action":"remove","lines":["o"]},{"start":{"row":39,"column":13},"end":{"row":39,"column":14},"action":"remove","lines":["j"]},{"start":{"row":39,"column":12},"end":{"row":39,"column":13},"action":"remove","lines":["$"]},{"start":{"row":39,"column":8},"end":{"row":39,"column":12},"action":"remove","lines":["    "]},{"start":{"row":39,"column":4},"end":{"row":39,"column":8},"action":"remove","lines":["    "]}],[{"start":{"row":39,"column":0},"end":{"row":39,"column":4},"action":"remove","lines":["    "],"id":10},{"start":{"row":38,"column":104},"end":{"row":39,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":36,"column":89},"end":{"row":36,"column":90},"action":"remove","lines":[","],"id":11}],[{"start":{"row":38,"column":105},"end":{"row":38,"column":106},"action":"remove","lines":[";"],"id":12}],[{"start":{"row":38,"column":105},"end":{"row":39,"column":0},"action":"insert","lines":["",""],"id":13},{"start":{"row":39,"column":0},"end":{"row":39,"column":8},"action":"insert","lines":["        "]}],[{"start":{"row":39,"column":8},"end":{"row":39,"column":48},"action":"insert","lines":["WHERE $expenses_table.deleted=0 $where\";"],"id":14}],[{"start":{"row":39,"column":14},"end":{"row":39,"column":29},"action":"remove","lines":["$expenses_table"],"id":15},{"start":{"row":39,"column":14},"end":{"row":39,"column":15},"action":"insert","lines":["$"]},{"start":{"row":39,"column":15},"end":{"row":39,"column":16},"action":"insert","lines":["p"]},{"start":{"row":39,"column":16},"end":{"row":39,"column":17},"action":"insert","lines":["e"]},{"start":{"row":39,"column":17},"end":{"row":39,"column":18},"action":"insert","lines":["t"]},{"start":{"row":39,"column":18},"end":{"row":39,"column":19},"action":"insert","lines":["t"]},{"start":{"row":39,"column":19},"end":{"row":39,"column":20},"action":"insert","lines":["y"]}],[{"start":{"row":39,"column":14},"end":{"row":39,"column":20},"action":"remove","lines":["$petty"],"id":16},{"start":{"row":39,"column":14},"end":{"row":39,"column":26},"action":"insert","lines":["$petty_table"]}],[{"start":{"row":38,"column":103},"end":{"row":38,"column":104},"action":"remove","lines":[";"],"id":17}],[{"start":{"row":39,"column":4},"end":{"row":39,"column":8},"action":"remove","lines":["    "],"id":18},{"start":{"row":39,"column":0},"end":{"row":39,"column":4},"action":"remove","lines":["    "]},{"start":{"row":38,"column":104},"end":{"row":39,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":38,"column":104},"end":{"row":38,"column":105},"action":"insert","lines":[" "],"id":19}],[{"start":{"row":38,"column":103},"end":{"row":38,"column":104},"action":"remove","lines":["\""],"id":20}],[{"start":{"row":38,"column":104},"end":{"row":39,"column":0},"action":"insert","lines":["",""],"id":21},{"start":{"row":39,"column":0},"end":{"row":39,"column":8},"action":"insert","lines":["        "]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":39,"column":8},"end":{"row":39,"column":8},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1616402279545,"hash":"1dc0abd878d7ce6b910e3d9025e36527bd675ad8"}