<?php
class ControllerCustomTest extends Controller{
	
function index(){	
$dr=$this->MsLoader->MsProduct->getProduct('65');
$img=$this->MsLoader->MsProduct->getProductImages('65');
$sid=$this->MsLoader->MsProduct->getSellerId('65');
$name=$this->MsLoader->MsSeller->getSellerName($sid);
var_dump($dr);
var_dump($img);
var_dump($name);
}
}



?>