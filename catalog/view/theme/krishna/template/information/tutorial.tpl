<?php echo $header; ?>
<div class="container-fluid">
<ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
    </ul>
	<div class="col-sm-4">
	<ul>
		<li><a onclick="changeLinks('<?php echo $this->url->link('information/registration');?>');" href="JavaScript:void(0)">Creating a seller account.</a></li>
		<li><a onclick="changeLinks('<?php echo $this->url->link('information/seller-profile');?>');" href="JavaScript:void(0)">Seller profile and stores.</a></li>
		<li><a onclick="changeLinks('<?php echo $this->url->link('information/orders');?>');" href="JavaScript:void(0)">Managing orders.</a></li>
		<li><a onclick="changeLinks('<?php echo $this->url->link('information/fees');?>');" href="JavaScript:void(0)">Seller fees.</a></li>
		<li><a onclick="changeLinks('<?php echo $this->url->link('information/shipping');?>');" href="JavaScript:void(0)">Shipping.</a></li>
		<li><a onclick="changeLinks('<?php echo $this->url->link('information/categories');?>');" href="JavaScript:void(0)">Categories.</a></li>
		<li><a onclick="changeLinks('<?php echo $this->url->link('information/product-attributes');?>');" href="JavaScript:void(0)">Product attributes.</a></li>
		<li><a onclick="changeLinks('<?php echo $this->url->link('information/ratings');?>');" href="JavaScript:void(0)">Ratings and reviews.</a></li>
		<li><a onclick="changeLinks('<?php echo $this->url->link('information/messaging');?>');" href="JavaScript:void(0)">Private messaging.</a></li>
	
	
	
	</ul>
	</div>
	<div class="col-sm-8">
	<iframe id="center-bar" src="<?php echo $this->url->link('information/registration');?>" width="100%" style="border:none;">
	</iframe>
	</div>


</div>
<script>
 function changeLinks(link){
	//event.preventDefault();
	//obj=event.relatedTarget;
	
	$("#center-bar").attr('src',link);
	 console.log(link);
	 
 }


</script>
<?php echo $footer; ?>