<?php if (empty($hide_if_logged)) { ?>
<div class="">
  <?php if($heading_title) { ?>
    <h2><?php echo $heading_title; ?></h2>
  <?php } ?>
  <?php echo $html; ?>
</div>
<?php } ?>