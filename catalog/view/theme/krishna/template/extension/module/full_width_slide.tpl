<?php //var_dump($banners); ?>
<div class="container-fluid" style="padding-right:0; padding-left:0; margin-top:-31px; padding-top:0;">
<div id="fullWidth<?php echo $module; ?>"  class="carousel slide" data-ride="carousel" >

	<!-- Indicators -->
  <ol class="" style="list-style:none;">
    <li data-target="#fullWidth<?php echo $module; ?>" data-slide-to="0" class="active"></li>
    <li data-target="#fullWidth<?php echo $module; ?>" data-slide-to="1"></li>
    <li data-target="#fullWidth<?php echo $module; ?>" data-slide-to="2"></li>
    <li data-target="#fullWidth<?php echo $module; ?>" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox" style="overflow:visible;">
  
  

  <?php $id=0; foreach ($banners as $fullWidth) { ?>
    <?php if ($id==0) { ?>
		<div class="item active">
		
      
	  <img src="<?php echo $fullWidth['image']; ?>" alt="" style="height:auto;" >
      <!--<div class="img-overlay">
	  
	  <div class="carousel-caption" style="">
		<div class="">
		<a href="#consult" onclick="toTop(event)"><button class="btn btn-danger btn-large">Arrange consultation.</button></a>
		</div>
		
		</div>
     
    </div>-->
  </div>
	
   <!-- <a href="<?php //echo $fullWidth['link']; ?>"><img src="<?php //echo $fullWidth['image']; ?>" alt="<?php //echo $fullWidth['title']; ?>" class="img-responsive" /></a>-->
    <?php } else { ?>
		<div class="item ">
		
      
	  <img src="<?php echo $fullWidth['image']; ?>" alt="" style="height:auto;" >
    <!--  <div class="img-overlay">
	  
	  <div class="carousel-caption" style="">
		<div class="">
		<a href="#consult" onclick="toTop(event)"><button class="btn btn-danger btn-large">Arrange consultation.</button></a>
		</div>
		
		</div>
     
    </div>-->
  </div>
	
   <!-- <img src="<?php //echo $fullWidth['image']; ?>" alt="<?php //echo $fullWidth['title']; ?>" class="img-responsive" />-->
    <?php } ?>
	<?php $id++;} ?>
  <!-- Left and right controls -->
  <a class="left carousel-control" href="#fullWidth<?php echo $module;?>" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#fullWidth<?php echo $module;?>" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  
  
  </div>
		
  
</div>

</div>
<style>
.carousel-caption{
	top:20%;
	z-index:9999;
	height:55%;
	background-color:rgba(0,0,0,0.3);
}
.caption-holder{
	position: relative;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
	background-color:rgba(0,0,0,0.3);
}
.img-overlay {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0,0,0,0.1);
}






@media only screen and (min-width: 200px) {
	.carousel-caption{
	/*top:40%;*/
	z-index:9999;
	height:55%;
}
	
}
@media only screen and (min-width: 400px) {
	.carousel-caption{
	top:20%;
	background-color:rgba(0,0,0,0.3);
	z-index:9999;
	height:55%;
}
}

</style>

<script type="text/javascript"><!--



function maxShow(e){
	document.body.style.visibilty="hidden";
	var b=window.outerHeight;
	//b=b-120;
	//get all images
	var a=$('#fullWidth<?php echo $module; ?>').getElementsByTagName("img");
	//loop through array
	for(i=0;i<a.length;i++){
		//alert(a[i].style.height);
		a[i].style.height=b-120;
	}
	document.body.style.visibility="initial";
	
}
$(document).ready(function(){
var e=(Math.max(document.documentElement.clientWidth,window.innerWidth||0),Math.max(document.documentElement.clientHeight,window.innerHeight||0));
wix=e;
e=250;//set height to 250 pixels or leave image height to auto so that it will resizeutomatically
var t=$('#fullWidth<?php echo $module; ?> img');
for(i=0;i<t.length;i++){
	t[i].style.width="100%";
}//t[i].style.height=e+"px", place in for loop to get fixed height images

//classToChange=$('#fullWidth<?php echo $module; ?>').parent().parent().parent();
//$(classToChange).removeClass("container").addClass("container-fluid").css("padding-right:0; padding-left:0;");
});



--></script>
