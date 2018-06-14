<?php


class ControllerCustomFacebook extends Controller {
//edit products	
/*An event is registered before product edit. This event when triggered calls action kris/kris/editProducts. The action
uses model file kris/products to search the product table for the owner. If there is not a match a redirect occurs to list all products
. of course this triggers the after list products events which will list products belomging to the user. But if there is a match then program flow goes to catalog/product/edit as normal. 
*/
public function postProduct(){
	//$fo=fopen("c:/test-catalog-one.txt","w");
	//fwrite($fo,"testing event called");
	//fclose($fo);
	//var_dump(debug_backtrace());
	//var_dump($route);
	//var_dump($data);
	//var_dump($output);
	//var_dump("edit event");
	//before a product is edited chect that the user owns product
	//$id=$this->user->getId();
	//$this->load->model("kris/products");
	//var_dump($id);
	//check for ownership
	//define('DIR_F','./Facebook/');
	require(DIR_SYSTEM.'Facebook/autoload.php');
	$fb = new Facebook\Facebook([
  'app_id' =>'1470371673080392',
  'app_secret' =>'d0ff29b1aafca21bf736a534f9e6dc1d',
  'default_graph_version' => 'v2.11'
	//'default_access_token'=>'EAAU5S5VDAkgBAFtotCvpQ2yRmzosXKZBYMD1N4pC9owbq9yy470WoJ7mGEFbFJRZAiHNZBClaEaZB0XjlvZBKZCe9CYkGidkuswELFshaGttRRJFUiG7rwr09rtf3bj5qhOTVkbGCGxLgdDXfVTHeijgPiePbJydDvUckZAczPL217cRbHknW3N'
  ]);
  
  
  
 //ids for testing 50,57,42
  //get product data from post array
  $product_id=$this->request->post['product_id'];
 // $product_id=50;//$Pdata['product_id'];
  //get seller
  $seller = $this->MsLoader->MsSeller->getSeller($this->MsLoader->MsProduct->getSellerId($product_id));
  //get product
  $product=$this->MsLoader->MsProduct->getProduct($product_id);
 // var_dump($product);
  //seller
	  $sid=$this->MsLoader->MsProduct->getSellerId($product_id);
		$sname=$this->MsLoader->MsSeller->getSellerName($sid);

	  
	  //post product name
	  $product_name=$product['model'];
	  //price
	 $product_price=number_format($product['price'],2);
	  //location
	  	
	  //description
	  foreach($product['languages'] as $lang){
		  $description=htmlspecialchars_decode($lang['description']);
		  
	  }
	  $description=strip_tags($description);
	 // var_dump($description);
	  //var_dump(number_format($product_price));
	  //create image array for fb posting
	  $image=array();
	  //get product photos and add to image array for uploading to fb
	  $img=$this->MsLoader->MsProduct->getProductImages($product_id);
	  $img[]=array('image'=>$product['thumbnail']);//add product thumbnail to array
	 // var_dump($img);
	  foreach($img as $key=>$value){
		  $image[]=array('source' => $fb->fileToUpload(DIR_IMAGE.$value['image']),'message'=>$description,'published'=>false);
		
		  
	  }
	$description=<<<EOD
	Product: $product_name
	Sold by: $sname
	Price: $$product_price
	Buy Now: https://www.founditgd.com/index.php?route=product/product&product_id=$product_id
	$description
EOD;
	
	//for uploading multiple photos as part of one post
/*first the photos are uploaded but not published, then they are published to the page feed node 
$image =array(array('source' => $fb->fileToUpload(DIR_APPLICATION.'controller/custom/photo-0.jpg'),'published'=>false),array('source' => $fb->fileToUpload(DIR_APPLICATION.'controller/custom/photo-12.jpg'),'published'=>false),array('source' => $fb->fileToUpload(DIR_APPLICATION.'controller/custom/photo-22.jpg'),'published'=>false)); 
	
  */
  //$fbApp = new Facebook\FacebookApp('1470371673080392', 'd0ff29b1aafca21bf736a534f9e6dc1d');
  
  /*
  $res = $fb->get('/me', '{access-token}');
$res = $fb->post('/me/feed', ['foo' => 'bar'], '{access-token}');
$res = $fb->delete('/{node-id}', '{access-token}');
  
  */
  //long lived paged access token ,refresh every 60dys..created may 6th 2018
  $systemUserAccessToken="EAAU5S5VDAkgBAGw9CjDKsvwHtWZAzfGbw11Oqssv72J54Ce8ZC8kJftHEjrVdnFi5p4TtIq14YEXP0HkRrxl94gjVS7MuvJiYjsWvoVt7F5ZBMxojmRS94WwcLIQyjfk83hN3yO4reB9xnBycQzx03kPAn7uzSsJKUZAhMnuBQZDZD";
  
  //EAAU5S5VDAkgBAI17oZAzDZB8FhvvlGpyAD95pgBTFU25JIUEQIYvu3VZCy3scSjm6ZASKEY4IWY7DQ77ZBMN4SR1Hf8P2SMhEw0XZBhZB94lLrrNoHdN1IKBnjWAUEGAMOCMZCiAAzFZChDxAZBfZCkDih0FWuaUNISX8V2l0wkLNtI6xuAsLm1jD8U";
  

//for videos  /1706095386306954/videos
/*$data_1 = [
  'title' => 'My Foo Video',
  'description' => 'This video is full of foo and bar action.',
  'source' => $fb->videoToUpload(DIR_APPLICATION.'controller/custom/movie.flv'),
];*/
/*try {
  // Returns a `FacebookFacebookResponse` object
  $response = $fb->post(
    '/183943762177298/feed',
    array (
      'message' => 'ok moto',
      'call_to_action' => '{"type":"BUY_NOW","value":{"link":"http://www.founditgd.com"}}',
      'link' => 'www.founditgd.com',
      'description' => 'this is a very good product.Please buy',
      'caption' => 'product 1'
    ),
    '{access-token}'
  );
} catch(FacebookExceptionsFacebookResponseException $e) {
  echo 'Graph returned an error: ' . $e->getMessage();
  exit;
} catch(FacebookExceptionsFacebookSDKException $e) {
  echo 'Facebook SDK returned an error: ' . $e->getMessage();
  exit;
}
$graphNode = $response->getGraphNode();*/

//$_SESSION['FB_ACCESS_TOKEN']=$systemUserAccessToken;
//$helper = $fb->getRedirectLoginHelper();
//7f1e2d381c143309c53c8acf0e07a3df
//$response = $fb->post('/183943762177298/photos', $data,$fb->getDefaultAccessToken());
try {
//$accessToken = $helper->getAccessToken();
//$str= $_SESSION['FB_ACCESS_TOKEN'];//LL user access token
	
	//get the page access token using the long lived access token, note here that the access token for the query was related to a page associated with the user.
	//echo gettype($str);
	//use code below if u dont have a long lived token and have a short lived user access token, then i can get the page access token
	/* $response=$fb->get('/me/accounts',$systemUserAccessToken); 
     //loop through all user pages which will be a graphEdge object containing grahpNodes
      $graphEdge=$response->getGraphEdge();
	  var_dump($graphEdge);
     foreach($graphEdge as $graphNode){
      	 if($graphNode->getField('id')=="183943762177298"){//get token for this page
      	 	//get access token for page
      	 	$systemUserAccessToken=$graphNode->getField('access_token');
      	 }
      	       	
      	}*/
		/* get long lived paged access token  https://graph.facebook.com/oauth/access_token?             
    client_id=1470371673080392&
    client_secret=d0ff29b1aafca21bf736a534f9e6dc1d&
    grant_type=fb_exchange_token&
    fb_exchange_token=short lived tyoken
	*/
	
	
	//$response=$fb->get('/183943762177298?fields=access_token',$str);
	
	//alternative
	//$request = new FacebookRequest($fbApp,'GET', '/183943762177298', array( 'fields' => 'access_token' ));
	//$response = $request->execute();
	//var_dump($response);
	//$graphObject = $response->getGraphObject();
	//var_dump($graphObject);
	/* handle the result */
	
	//BATCH
/*	$batch = array();
	foreach ($image as $images){
		$batch'photo'.$count
		
		
	}
  'photo-one' => $fb->request('POST', '/me/photos', [
      'message' => 'Foo photo',
      'source' => $fb->fileToUpload('/path/to/photo-one.jpg'),
    ]),
  'photo-two' => $fb->request('POST', '/me/photos', [
      'message' => 'Bar photo',
      'source' => $fb->fileToUpload('/path/to/photo-two.jpg'),
    ]),
  'video-one' => $fb->request('POST', '/me/videos', [
      'title' => 'Baz video',
      'description' => 'My neat baz video',
      'source' => $fb->videoToUpload('/path/to/video-one.mp4'),
    ]),
];

try {
  $responses = $fb->sendBatchRequest($batch);
	
	
	*/
	
	
	
	
	
	
	
		
	//with page access token make api calls to page
	//1. make a post
	//$res = $fb->post('/183943762177298/feed',['message'=>'testing 2017 again'],$systemUserAccessToken);
	//returns the id of the post sent so I can persist in database for user
	//$graphNode=$res->getGraphNode();
      //	return $graphNode->getField('id');
      	       	
   
	$picid=array();	
	
	//2.upload photos
	foreach($image as $images){
	$res = $fb->post('/183943762177298/photos',$images,$systemUserAccessToken);
	$graphNode=$res->getGraphNode();
      	 $picid[]=$graphNode->getField('id');
	}
	//var_dump($picid);
	$num_pic=count($picid);
	$media_array=array();
	for($num=0;$num<$num_pic;$num++){
		
	$media_array[]="{'media_fbid':".$picid[$num]." }";
		
		
	}
	//var_dump(implode(",",$media_array));
	$response = $fb->post(
    '/183943762177298/feed',
    array (
      'attached_media' => '['.implode(",",$media_array).']',
      'published' => 'true',
	  'message'=>$description
	 // 'actions'=>"{'name':'BUY_NOW','link':'http://www.founditgd.com/index.php?route=product/product&product_id=$product_id'}"
	 //  'call_to_action' => "{'type':'BUY_NOW','value':{'link':'http://www.founditgd.com/index.php?route=product/product&product_id=$product_id'}}"
    ),
    $systemUserAccessToken
  );
 // var_dump($response->getGraphNode()->getField('id'));
	//upload video
	//$res = $fb->post('/183943762177298/videos',$data_1,$systemUserAccessToken);
	//retrieve all posts to the page
	/*Each post has an id which can be retrieved after creation and stored back in the database for each user who would have posted them
	*/
	//$res = $fb->get('/183943762177298/posts',$systemUserAccessToken);
	//$graphNode=$res->getGraphNode();
    //  return $graphNode->getField('id');
	//var_dump($res);
	//post photo to my account
   	//$response = $fb->post('/me/photos',$data,$str);
} catch(Facebook\Exceptions\FacebookResponseException $e) {
  // When Graph returns an error
  echo 'Graph returned an error: ' . $e->getMessage();
  exit;
} catch(Facebook\Exceptions\FacebookSDKException $e) {
  // When validation fails or other local issues
  echo 'Facebook SDK returned an error: ' . $e->getMessage();
  exit;
}

//$me = $response->getGraphUser();
//echo 'Logged in as ' . $me->getName();

//$graphNode = $response->getGraphNode();
//var_dump($graphNode);

//echo 'Video ID: ' . $graphNode['id'];




	/*try {
  // Returns a `FacebookFacebookResponse` object
  $response = $fb->post(
    '/183943762177298/feed',
    array (
      'message' => 'john',
      'product' => 'rice'
    ),
    '{access-token}'
  );
} catch(FacebookExceptionsFacebookResponseException $e) {
  echo 'Graph returned an error: ' . $e->getMessage();
  exit;
} catch(FacebookExceptionsFacebookSDKException $e) {
  echo 'Facebook SDK returned an error: ' . $e->getMessage();
  exit;
}
$graphNode = $response->getGraphNode();

UPLOAD MULTIPLE PHOTOS
try {
  // Returns a `FacebookFacebookResponse` object
  $response = $fb->post(
    '/183943762177298/feed',
    array (
      'attached_media' => '[{"media_fbid":"186500161921658","media_fbid":"186489421922732","media_fbid":"186484955256512"}]',
      'published' => 'true'
    ),
    '{access-token}'
  );
} catch(FacebookExceptionsFacebookResponseException $e) {
  echo 'Graph returned an error: ' . $e->getMessage();
  exit;
} catch(FacebookExceptionsFacebookSDKException $e) {
  echo 'Facebook SDK returned an error: ' . $e->getMessage();
  exit;
}
$graphNode = $response->getGraphNode();


batch requsts
$batch = [
  'photo-one' => $fb->request('POST', '/me/photos', [
      'message' => 'Foo photo',
      'source' => $fb->fileToUpload('/path/to/photo-one.jpg'),
    ]),
  'photo-two' => $fb->request('POST', '/me/photos', [
      'message' => 'Bar photo',
      'source' => $fb->fileToUpload('/path/to/photo-two.jpg'),
    ]),
  'video-one' => $fb->request('POST', '/me/videos', [
      'title' => 'Baz video',
      'description' => 'My neat baz video',
      'source' => $fb->videoToUpload('/path/to/video-one.mp4'),
    ]),
];

try {
  $responses = $fb->sendBatchRequest($batch);
*/
	
	

}
}
?>