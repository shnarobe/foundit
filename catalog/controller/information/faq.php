<?php
class ControllerInformationFaq extends Controller{
	
	public function index(){
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => "Frequently Asked Questions"/*$this->language->get('text_account')*/,
			'href' => $this->url->link('information/faq', '', 'SSL')
		);

		
		$data['header']=$this->load->controller('common/header');
		$data['footer']=$this->load->controller('common/footer');
		$data['tutorial']=$this->url->link("information/tutorial");
		$this->response->setOutput($this->load->view('information/faq',$data));
		
	}
	
	
	
}



?>