
<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Html_to_pdf extends CI_Controller {
 
 public function index()
 {
      $mpdf = new \Mpdf\Mpdf();
      $html = $this->load->view('add_material_request/index.php',[],true);
      $mpdf->WriteHTML($html);
      $mpdf->Output(); // opens in browser
      //$mpdf->Output('arjun.pdf','D'); // it downloads the file into the user system, with give name
 }
 
}