<?php
class ControllerInformationBuy extends Controller{
	
	public function index(){
		
		$data['header']=$this->load->controller('common/header');
		$data['footer']=$this->load->controller('common/footer');
		$this->response->setOutput($this->load->view('information/buy',$data));
		
	}
	
	
	
}



?>