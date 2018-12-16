<?php echo $header; ?>
<section class="container">
<div class="min-padding">
<?php if ($error_warning) { ?>
<div class="row justify-content-center mb-4">
<div class="col-8">
<div class="cta bg-primary">
    <div class="row vcenter">
        <div class="col-md-6">
            <h5 class="mb-0 ml-3 text-white">Need Any Help?</h5>
            <p class="mb-0 ml-3 text-white">
                Contact us or call Customer Service <br />During M-F 7:00am - 5:00pm CST
            </p>
        </div>
        <div class="col-md-6 text-right">
            <a href="#" class="btn btn-secondary">Contact</a>
            <span class="text-white">OR</span>
            <a href="#" class="btn btn-secondary mr-4">Call Us</a>
        </div>
    </div><!-- / row -->
</div>
</div>
</div>
<?php } ?>
<div class="row justify-content-center">
    <div class="col-8">
      <?php if ($error_warning) { ?>
        <div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button>
            <i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
        </div>
      <?php } ?>
    </div>
</div>
<div class="row justify-content-center">
<div class="col-md-8 custom-form">
    <div class="form-wrapper">
        <div class="row mb-5">
            <div class="col-md-3 align-self-center text-center">
                <i class="im im-icon-Key-Lock pill bg-primary text-white" style="padding:28px; font-size: 46px;"></i>
            </div>
            <div class="col-md-9">
                <h3 class=""><?php echo $heading_title; ?></h3>
                <h5>Let's find your account.</h5>
                <p><?php echo $text_email; ?></p>
            </div>
        </div>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="form-group required">
             <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
        </div><!-- / form-group -->
        <div class="row justify-content-between">
        <div class="col-md-3">
            <a href="<?php echo $back; ?>" class="btn btn-default"><?php echo $button_back; ?></a>
        </div>
        <div class="col-md-3">
            <button type="submit" class="btn btn-outline-primary">Submit</button>
        </div>   
        </div>
        </form>
        
    </div><!-- / form-wrapper -->
</div><!-- / column -->
</div>
</div>
</section>
<?php echo $footer; ?>