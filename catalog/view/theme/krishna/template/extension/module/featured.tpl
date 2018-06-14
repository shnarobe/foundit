<h3 id="kfeature-head"><span><?php echo $heading_title; ?></span></h3>
<div class="row">
<div class="col-sm-9">
<div class="container-fluid owl-carousel" id="carousel-feature">

    
  <?php foreach ($products as $product) { ?>
  
  <div class="item product-layout " >
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img  src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" style="width:50%;  height:auto;" /></a>
	  
      <div class="caption">
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
       <p><?php echo $product['description']; ?></p>
        <?php if ($product['rating']) { ?>
        <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </p>
        <?php } ?>
      </div>
	  </div>
     <!-- <div class="button-group">
        <button type="button" onclick="cart.add('<?php //echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php //echo $button_cart; ?></span></button>
        <button type="button" data-toggle="tooltip" title="<?php //echo $button_wishlist; ?>" onclick="wishlist.add('<?php //echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="<?php //echo $button_compare; ?>" onclick="compare.add('<?php //echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>-->
    </div>
  </div>
  
  <?php } ?>
   
   
   </div>
 
 </div><!--carousel-->
 <div class="container-fluid col-sm-3">
	
	
  <?php foreach ($banners as $banner) { ?>
  <div class="item" >
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-rounded img-responsive" style="width:100%;  height:auto; float:left; padding-bottom:1px;" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-rounded img-responsive" style="width:100%;  height:auto; float:left; padding-bottom:1px;" />
    <?php } ?>
  </div>
  <?php } ?>
  


<!--
<div id="bannerkris-1" class=" row owl-carousel">
  <?php //foreach ($banners as $banner) { ?>
  <div class="item">
    <?php //if ($banner['link']) { ?>
    <a href="<?php //echo $banner['link']; ?>"><img src="<?php //echo $banner['image']; ?>" alt="<?php //echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php //} else { ?>
    <img src="<?php //echo $banner['image']; ?>" alt="<?php //echo $banner['title']; ?>" class="img-responsive" />
    <?php //} ?>
  </div>
  <?php //} ?>
</div>-->


 
 </div>
 </div>
<script><!--
$('#carousel-feature').owlCarousel({
	items: 4,
	autoPlay: false,
	navigation: true,
	navigationText: ['<i class="fa fa-chevron-left "></i>', '<i class="fa fa-chevron-right "></i>'],
	pagination: true
});

$('#bannerkris').owlCarousel({
	items: 1,
	loop:true,
	autoPlay: true,
	singleItem: true,
	navigation: false,
	pagination: false,
	autoWidth:true,
	transitionStyle: 'fade'
});

$('#bannerkris-1').owlCarousel({
	items: 6,
	autoPlay: 3000,
	singleItem: true,
	navigation: false,
	pagination: false,
	transitionStyle: 'fade'
});
--></script>
<style>
/*This is the wrapper for the carousel, if you want to add a border to the entire carousel. to add a border to the items do so in the items*/
.owl-carousel .owl-wrapper-outer{
	box-shadow:none;
	border: 1px solid #ddd;
	
}
/*.owl-carousel .owl-wrapper-outer {
    box-shadow: none;
    /* margin: 30px 0 0; */
    border: 1px solid #ddd;
    /* overflow: visible; */
    /* border-width: 1px 1px 1px 0; */
}*/
</style>

