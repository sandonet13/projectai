{"changed":true,"filter":false,"title":"Html_to_pdf.php","tooltip":"/application/controllers/Html_to_pdf.php","value":"\n<?php\ndefined('BASEPATH') OR exit('No direct script access allowed');\n \nclass Html_to_pdf extends CI_Controller {\n \n public function index()\n {\n      $mpdf = new \\Mpdf\\Mpdf();\n      $html = $this->load->view('add_material_request/index.php',[],true);\n      $mpdf->WriteHTML($html);\n      $mpdf->Output(); // opens in browser\n      //$mpdf->Output('arjun.pdf','D'); // it downloads the file into the user system, with give name\n }\n \n}","undoManager":{"mark":17,"position":17,"stack":[[{"start":{"row":0,"column":0},"end":{"row":15,"column":1},"action":"insert","lines":["","<?php","defined('BASEPATH') OR exit('No direct script access allowed');"," ","class Welcome extends CI_Controller {"," "," public function index()"," {","      $mpdf = new \\Mpdf\\Mpdf();","      $html = $this->load->view('html_to_pdf',[],true);","      $mpdf->WriteHTML($html);","      $mpdf->Output(); // opens in browser","      //$mpdf->Output('arjun.pdf','D'); // it downloads the file into the user system, with give name"," }"," ","}"],"id":1}],[{"start":{"row":4,"column":23},"end":{"row":4,"column":24},"action":"remove","lines":["I"],"id":2},{"start":{"row":4,"column":22},"end":{"row":4,"column":23},"action":"remove","lines":["C"]}],[{"start":{"row":4,"column":22},"end":{"row":4,"column":23},"action":"insert","lines":["M"],"id":3},{"start":{"row":4,"column":23},"end":{"row":4,"column":24},"action":"insert","lines":["Y"]}],[{"start":{"row":4,"column":6},"end":{"row":4,"column":13},"action":"remove","lines":["Welcome"],"id":4},{"start":{"row":4,"column":6},"end":{"row":4,"column":7},"action":"insert","lines":["H"]},{"start":{"row":4,"column":7},"end":{"row":4,"column":8},"action":"insert","lines":["T"]},{"start":{"row":4,"column":8},"end":{"row":4,"column":9},"action":"insert","lines":["M"]},{"start":{"row":4,"column":9},"end":{"row":4,"column":10},"action":"insert","lines":["L"]}],[{"start":{"row":4,"column":9},"end":{"row":4,"column":10},"action":"remove","lines":["L"],"id":5},{"start":{"row":4,"column":8},"end":{"row":4,"column":9},"action":"remove","lines":["M"]},{"start":{"row":4,"column":7},"end":{"row":4,"column":8},"action":"remove","lines":["T"]}],[{"start":{"row":4,"column":7},"end":{"row":4,"column":8},"action":"insert","lines":["t"],"id":6},{"start":{"row":4,"column":8},"end":{"row":4,"column":9},"action":"insert","lines":["m"]},{"start":{"row":4,"column":9},"end":{"row":4,"column":10},"action":"insert","lines":["l"]},{"start":{"row":4,"column":10},"end":{"row":4,"column":11},"action":"insert","lines":["_"]},{"start":{"row":4,"column":11},"end":{"row":4,"column":12},"action":"insert","lines":["t"]},{"start":{"row":4,"column":12},"end":{"row":4,"column":13},"action":"insert","lines":["o"]}],[{"start":{"row":4,"column":13},"end":{"row":4,"column":14},"action":"insert","lines":["_"],"id":7},{"start":{"row":4,"column":14},"end":{"row":4,"column":15},"action":"insert","lines":["p"]},{"start":{"row":4,"column":15},"end":{"row":4,"column":16},"action":"insert","lines":["d"]},{"start":{"row":4,"column":16},"end":{"row":4,"column":17},"action":"insert","lines":["f"]}],[{"start":{"row":4,"column":27},"end":{"row":4,"column":28},"action":"remove","lines":["Y"],"id":8},{"start":{"row":4,"column":26},"end":{"row":4,"column":27},"action":"remove","lines":["M"]}],[{"start":{"row":4,"column":26},"end":{"row":4,"column":27},"action":"insert","lines":["C"],"id":9},{"start":{"row":4,"column":27},"end":{"row":4,"column":28},"action":"insert","lines":["I"]}],[{"start":{"row":9,"column":33},"end":{"row":9,"column":44},"action":"remove","lines":["html_to_pdf"],"id":10},{"start":{"row":9,"column":33},"end":{"row":9,"column":34},"action":"insert","lines":["a"]},{"start":{"row":9,"column":34},"end":{"row":9,"column":35},"action":"insert","lines":["d"]},{"start":{"row":9,"column":35},"end":{"row":9,"column":36},"action":"insert","lines":["d"]},{"start":{"row":9,"column":36},"end":{"row":9,"column":37},"action":"insert","lines":["_"]},{"start":{"row":9,"column":37},"end":{"row":9,"column":38},"action":"insert","lines":["m"]},{"start":{"row":9,"column":38},"end":{"row":9,"column":39},"action":"insert","lines":["a"]},{"start":{"row":9,"column":39},"end":{"row":9,"column":40},"action":"insert","lines":["t"]}],[{"start":{"row":9,"column":40},"end":{"row":9,"column":41},"action":"insert","lines":["e"],"id":11},{"start":{"row":9,"column":41},"end":{"row":9,"column":42},"action":"insert","lines":["r"]},{"start":{"row":9,"column":42},"end":{"row":9,"column":43},"action":"insert","lines":["i"]},{"start":{"row":9,"column":43},"end":{"row":9,"column":44},"action":"insert","lines":["a"]},{"start":{"row":9,"column":44},"end":{"row":9,"column":45},"action":"insert","lines":["l"]},{"start":{"row":9,"column":45},"end":{"row":9,"column":46},"action":"insert","lines":["_"]},{"start":{"row":9,"column":46},"end":{"row":9,"column":47},"action":"insert","lines":["r"]},{"start":{"row":9,"column":47},"end":{"row":9,"column":48},"action":"insert","lines":["e"]},{"start":{"row":9,"column":48},"end":{"row":9,"column":49},"action":"insert","lines":["q"]}],[{"start":{"row":9,"column":49},"end":{"row":9,"column":50},"action":"insert","lines":["u"],"id":12},{"start":{"row":9,"column":50},"end":{"row":9,"column":51},"action":"insert","lines":["e"]},{"start":{"row":9,"column":51},"end":{"row":9,"column":52},"action":"insert","lines":["s"]},{"start":{"row":9,"column":52},"end":{"row":9,"column":53},"action":"insert","lines":["t"]},{"start":{"row":9,"column":53},"end":{"row":9,"column":54},"action":"insert","lines":["/"]}],[{"start":{"row":9,"column":54},"end":{"row":9,"column":55},"action":"insert","lines":["v"],"id":13},{"start":{"row":9,"column":55},"end":{"row":9,"column":56},"action":"insert","lines":["i"]},{"start":{"row":9,"column":56},"end":{"row":9,"column":57},"action":"insert","lines":["e"]},{"start":{"row":9,"column":57},"end":{"row":9,"column":58},"action":"insert","lines":["w"]},{"start":{"row":9,"column":58},"end":{"row":9,"column":59},"action":"insert","lines":["/"]},{"start":{"row":9,"column":59},"end":{"row":9,"column":60},"action":"insert","lines":["2"]},{"start":{"row":9,"column":60},"end":{"row":9,"column":61},"action":"insert","lines":["0"]}],[{"start":{"row":9,"column":33},"end":{"row":9,"column":34},"action":"insert","lines":["/"],"id":14}],[{"start":{"row":9,"column":33},"end":{"row":9,"column":34},"action":"remove","lines":["/"],"id":15}],[{"start":{"row":9,"column":53},"end":{"row":9,"column":61},"action":"remove","lines":["/view/20"],"id":16}],[{"start":{"row":9,"column":53},"end":{"row":9,"column":54},"action":"insert","lines":["/"],"id":17},{"start":{"row":9,"column":54},"end":{"row":9,"column":55},"action":"insert","lines":["i"]},{"start":{"row":9,"column":55},"end":{"row":9,"column":56},"action":"insert","lines":["n"]},{"start":{"row":9,"column":56},"end":{"row":9,"column":57},"action":"insert","lines":["d"]},{"start":{"row":9,"column":57},"end":{"row":9,"column":58},"action":"insert","lines":["e"]}],[{"start":{"row":9,"column":58},"end":{"row":9,"column":59},"action":"insert","lines":["x"],"id":18},{"start":{"row":9,"column":59},"end":{"row":9,"column":60},"action":"insert","lines":["."]},{"start":{"row":9,"column":60},"end":{"row":9,"column":61},"action":"insert","lines":["p"]},{"start":{"row":9,"column":61},"end":{"row":9,"column":62},"action":"insert","lines":["h"]},{"start":{"row":9,"column":62},"end":{"row":9,"column":63},"action":"insert","lines":["p"]}],[{"start":{"row":4,"column":27},"end":{"row":4,"column":28},"action":"remove","lines":["Y"],"id":21},{"start":{"row":4,"column":26},"end":{"row":4,"column":27},"action":"remove","lines":["M"]},{"start":{"row":4,"column":25},"end":{"row":4,"column":26},"action":"remove","lines":[" "]}],[{"start":{"row":4,"column":26},"end":{"row":4,"column":27},"action":"insert","lines":["M"],"id":21},{"start":{"row":4,"column":27},"end":{"row":4,"column":28},"action":"insert","lines":["Y"]}],[{"start":{"row":4,"column":27},"end":{"row":4,"column":28},"action":"remove","lines":["I"],"id":22},{"start":{"row":4,"column":26},"end":{"row":4,"column":27},"action":"remove","lines":["C"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":9,"column":0},"end":{"row":11,"column":42},"isBackwards":true},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1619057657706}