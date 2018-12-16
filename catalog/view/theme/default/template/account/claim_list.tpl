<?php echo $header; ?>
<section class="container-fluid">
<div class="pt-2 pb-5 min-height">
  <div class="row">
    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-md-6 col-sm-12'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-md-9 col-sm-12'; ?>
    <?php } else { ?>
    <?php $class = 'col-md-6 col-sm-12'; ?>
    <?php } ?>
    <div class="<?php echo $class; ?>">
    <nav class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumb-item"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </nav>
      <div class="text-center">
          <h1 class="title-underline-center"><?php echo $heading_title; ?></h1>
          <?php if(!empty($text_empty)){ ?>
            <h5><?php echo $text_empty; ?></h5>
            <img src="image/thumbnails/empty-box.png" class="img-fluid mx-auto mb-2" />
            <!--
            <div class="FB-Loading-Card">
            <div><div></div><div></div><div></div></div><div></div><div></div><div></div>
            </div>
            <div class="FB-Loading-Card">
            <div><div></div><div></div><div></div></div><div></div><div></div><div></div>
            </div>
            <div class="FB-Loading-Card">
            <div><div></div><div></div><div></div></div><div></div><div></div><div></div>
            </div>
            <div class="FB-Loading-Card">
            <div><div></div><div></div><div></div></div><div></div><div></div><div></div>
            </div>
            <div class="FB-Loading-Card">
            <div><div></div><div></div><div></div></div><div></div><div></div><div></div>
            </div>
            -->
          <?php } ?>
      </div>
      </div>
    <?php echo $column_right; ?>
  </div>
</div>
</section>
<?php echo $footer; ?>