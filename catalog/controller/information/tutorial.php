<?php
class ControllerInformationTutorial extends Controller{
	
	public function index(){
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => "Tutorials"/*$this->language->get('text_account')*/,
			'href' => $this->url->link('information/tutorial', '', 'SSL')
		);

		
		$data['header']=$this->load->controller('common/header');
		$data['footer']=$this->load->controller('common/footer');
		$this->response->setOutput($this->load->view('information/tutorial',$data));
		
	}
	
	
	
}



?>