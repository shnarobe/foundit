<?php
class ControllerExtensionModuleFullWidthSlide extends Controller {
	public function index() {
		//this full width slider is added directly to the home page rather than using the backend. When controller/common/home
		//is called vqmod is used to also load this controller in addition to the normal ones like header and footer.
		//vqmod again echos this controller view in the home page below the header.
		//all i need to do in future is modify the banner in the backend that is placed within this slider and it update automatically
		//setting was loaded from controller/content_top as this module was originally designed to be loaded within there 
		static $module = 0;
		//get settings for the module
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "module WHERE name = 'full width'");
		$setting=json_decode($query->row['setting'],true);//get setttings 
		//var_dump($setting);
		$this->load->model('design/banner');
		$this->load->model('tool/image');

		//$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.carousel.css');
		//$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.transitions.css');
		//$this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');

		$data['banners'] = array();

		$results = $this->model_design_banner->getBanner((int)$setting['banner_id']);
		//var_dump($results);
		
		foreach ($results as $result) {
		
			if (is_file(DIR_IMAGE.$result['image'])) {
				
				if ($this->request->server['HTTPS']) {
			$result['image']= $this->config->get('config_ssl') . 'image/' . $result['image'];
			//var_dump($result['image']);
		} else {
			
			$result['image']= $this->config->get('config_url') . 'image/' . $result['image'];
			//var_dump( $result['image']);
		}
				
				
				
				$data['banners'][] = array(//banners are the individual images
					'title' => $result['title'],
					'link'  => $result['link'],
					'image' => $result['image']
					
				);
				//var_dump($data['banners']);
			}
		}

		$data['module'] = $module++;
		//var_dump($data);
		return $this->load->view('extension/module/full_width_slide', $data);
	}
}