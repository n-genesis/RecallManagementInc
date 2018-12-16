<?php if ($logged) { ?>
<section class="hidden-sm-down">
<h4 class="title-underline"><?php echo $heading_title; ?></h4>
<div class="card card-outline-inverse rectangle">
    <img class="card-img-top img-fluid d-block" src="image/catalog/cs_1.jpg">
    <div class="card-block">
        <h4 class="card-title"><?php echo $text_customer_service_title; ?></h4>
        <p class="card-text">
            <?php echo $text_customer_service_message; ?>
        </p>
        <div class="form-group" role="group">
          <a href="<?php echo $support_desk; ?>" class="btn btn-outline-primary btn-block"><?php echo $text_support_desk; ?></a>
        </div>
    </div><!-- / card-block -->
</div>
</section>
<?php } ?>