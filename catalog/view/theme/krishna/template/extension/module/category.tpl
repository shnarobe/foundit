<div class="container">
  <?php foreach ($categories as $key=>&$category) { ?>
  <?php if ($category['category_id'] == $category_id) { ?>
  <a href="<?php echo $category['href']; ?>" class=" active"><h3><?php echo $category['name']; ?></h3></a>
  <?php if ($category['children']) { ?>
  <ul>
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['category_id'] == $child_id) {//if this was the sucategory item clicked on ?>
  <li><a href="<?php echo $child['href']; ?>" class=" active">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a></li>
  <?php } else { ?>
  <li><a href="<?php echo $child['href']; ?>" class="">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a></li>
  <?php } ?>
  <?php } ?>
  </ul>
  <?php } ?>
  <?php unset($categories[$key]);
	break;
  
  } //first get the selected category so it appears on top,then remove it from array
	//endloop  ?>
	<?php } ?>
	<h3 class="">Other Categories</h3>
	<ul>
	<?php foreach ($categories as &$category) { ?>
  <li><a href="<?php echo $category['href']; ?>" class=""><?php echo $category['name']; ?></a></li>
  <?php } ?>
  </ul>
</div>
