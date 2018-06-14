<ul class="nav nav-stacked">

  <?php foreach ($categories as $category) { ?>
  <?php if ($category['category_id'] == $category_id) { ?>
  <li role="presentation" class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
     <?php echo $category['name']; ?> <i class="fa fa-angle-right" aria-hidden="true"></i>
    </a>
    <?php //echo $category['href']; ?>
  <?php if ($category['children']) { ?>
  <ul class="dropdown-menu">
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['category_id'] == $child_id) { ?>
	 <li>
 <a href="<?php echo $child['href']; ?>" class=" dropdown-item">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
 </li>
  <?php } else { ?>
  <li>
  <a href="<?php echo $child['href']; ?>" class=" dropdown-item">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  </li>
  <?php } ?>
  <?php } ?>
  </ul>
  <?php } ?>
  <?php } else { ?>
  
  <li>
  <a href="<?php echo $category['href']; ?>" class=""><?php echo $category['name']; ?></a></li>
  <?php } ?>
  <?php } ?>

</ul>
