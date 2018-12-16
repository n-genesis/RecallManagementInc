<?php echo $header; ?>
<div class="page-header dark has-background" style="background-image: url(<? echo $information_image; ?>);">
    <div class="container">
        <h1><?php echo $heading_title; ?></h1>
    </div><!-- / container -->
</div>
<section class="container">
<div class="py-5 min-height">
  <div class="row">
    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
      <?php echo $content_top; ?>
      <article class="min-height">
      <!--
      <h1><?php echo $heading_title; ?></h1>
      -->
      <?php echo $description; ?>
      </article>
      <?php echo $content_bottom; ?>
    </div>
    <?php echo $column_right; ?>
  </div>
</div>
</section>
<?php echo $footer; ?>