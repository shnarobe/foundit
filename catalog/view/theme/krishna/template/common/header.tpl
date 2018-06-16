<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<!--<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />-->
<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/all.js" integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe" crossorigin="anonymous"></script>
<!--<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
<script src="https://use.fontawesome.com/c53376383d.js"></script>-->

<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/krishna/stylesheet/krishna.css" rel="stylesheet"><!-- Krishna theme addition-->
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/theme/krishna/javascript/common.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery.elevatezoom.min.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<style>
.a{
font-color:white;

}
.li{
font-color:white;
}
.navbar-inverse {
     border-color: #3c4a55;/*#191970*/
	     border-radius: 0px;
		 margin-bottom:0px;
		 /*rgba(34,34,34,1.0)*/
}
.nav .open>a, .nav .open>a:hover {
    background-color:transparent;
}/*
#menu .nav >li >a{styles for category menus,such as dezsktops
	color:#232f3e;
	text-decoration:none;
	font-size:14px;

}*/
.dropdown-content {/*for drop down menus in the nav,such as account and seller account the other styles are inherited from #top-links .dropdown-menu a
    display: none;
    */
}
.dropdown:hover .dropdown-content{
display:block;
}
#menu{
border-color: #3c4a55 #1f90bb #145e7a;
}
/*media queries for screen sizes below 900 pixels*/
@media screen and (max-width: 900px) {
   #top-links ul li{
        z-index:1;
   }
   
   #upper-top h3{
        font-size:17px;
   }
}  


</style>
<!--<nav >--><!-- top menu-->
	<div id="upper-top" class="container-fluid">
		<!--<div class='row'>-->
			<span style="float:left;"  ><img src="image/cache/catalog/demo/imac_3-74x74.jpg"/></span>
			<span style="float:left;"  ><img src="image/cache/catalog/demo/iphone_3-74x74.jpg"/></span>
			<span style="padding-left:0px; padding-right:0px; float:left;"><a href="<?php echo $home."#content"; ?>"><h3 style='color:#191970;'>Find whatever you're looking for! <button type='button' class='btn btn-info' style=''>Shop Now!</button></h3></a></span>
			<!--<span class="col-sm-1"><img src="image/catalog/demo/hp_1-74x74.jpg"/></span>-->
			<span class="col-sm-1"><img src="image/catalog/demo/ipod_nano_3-74x74.jpg"/></span>
			<span style="padding-left:0px; padding-right:0px; float:left;"><a href="<?php echo $register; ?>"><h3 style="color:#191970;">Start selling your products for free! <button type="button" class="btn btn-warning" style="">Sell Now!</button></h3></a></span>
			<!--<span class="col-sm-1"><img src="image/catalog/demo/iphone_5-74x74.jpg"/></span>
			<span class="col-sm-1"><img src="image/catalog/demo/hp_1-74x74.jpg"/></span>
			<span class="col-sm-1"><img src="image/catalog/demo/ipod_nano_3-74x74.jpg"/></span>
			<span class="col-sm-1"><img src="image/catalog/demo/ipod_nano_4-74x74.jpg"/></span>
			<span class="col-sm-1"><img src="image/catalog/demo/samsung_tab_2-74x74.jpg"/></span>
			<span class="col-sm-1"><img src="image/catalog/demo/nikon_d300_4-74x74.jpg"/></span>-->
			<!--<span class="col-sm-1"><img src="image/cache/catalog/demo/ipod_nano_5-74x74.jpg"/></span>-->
		<!--</div>-->
	</div>

<!--</nav>-->


<nav id="top" style="background-color:#3c4a55;">
  <div class="container">
	<div class="row">
	<div class="col-sm-2">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h4><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h4>
          <?php } ?>
        </div>
      </div>
    <div class="col-sm-5">
	<?php echo $search; ?>
   </div>
   <div class="col-sm-5">
   <a href="<?php echo $howItWorks;?>"><button class="btn btn-info btn-md"> <i class="fas fa-cogs"></i>How does it all work?</button></a>
   
     <a style="color:#ffffff; font-size:14px; padding-left:20px;" href="<?php echo $contact; ?>"><i class="fa fa-phone"></i> Contact us!</a>
   </div>
   
  <!-- <button class="btn btn-danger btn-md">Christmas Shop</button>-->
	</div><!-- 1st row-->
	</div><!--end first container-->
	
	<div class="container">
	<div class="row">
	
<!--testing git again -->
    
	<div id="currency-menu" class="col-sm-1">
      <?php echo $currency; ?>
    <?php //echo $language; ?>
	</div>
	<div class="col-sm-7">
	</div>
      <div class="col-sm-4 pull-right" style="height:30px; float:right;">
	  <div id="top-links" class="nav">
      <ul class="list-inline">
       <!-- <li><a href="<?php //echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php //echo $telephone; ?></span></li>-->
        <li  class="dropdown" >
		<a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"> <i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class=" dropdown-menu" id="test">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        <li ><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a>
		</li>
		
        <!--<li><a href="<?php //echo $shopping_cart; ?>" title="<?php //echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php //echo $text_shopping_cart; ?></span></a></li>-->
        <!--<li ><a href="<?php //echo $checkout; ?>" title="<?php //echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php //echo $text_checkout; ?></span></a></li>-->
      </ul>
    </div>
	
      </div>
     <div class="col-sm-2 pull-right" style="float:right;">
		<?php echo $cart; ?>
		</div>
    

	
	</div><!-- second row-->
	
  </div>
</nav>
<?php if ($categories) { ?>

  <nav id="menu" class="navbar " style="background-color: #f5f5f5;background-image: none; border-radius: 0px; border-color: #3c4a55 transparent #ddd transparent;">
  <div class="container-fluid" style="padding-left:0px; padding-right:0px;">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  
</div>
</nav>
<?php } ?>
