<?php echo $header; ?>
<section id="account-login">
<section class="container-fluid">
<div class="min-padding">    
<div class="row justify-content-center mt-5">
  <div class="col-md-7 col-sm-12">
      <p class="text-center" style="font-weight:bold;">
          To provide even better professional service we have created an innovative way for our customers to stay informed on the status of their active claims.
      </p>
  </div>
</div>
<section class="row justify-content-center">
    <div class="col-md-7 col-ms-12">
      <?php if ($success) { ?>
        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
      <?php } ?>
      <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
      <?php } ?>
      <?php if ($info_notice) { ?>
        <div class="alert alert-info"><?php echo $info_notice; ?></div>
      <?php } ?>
    </div>
</section>
<div class="row">
    <div class="col-md-4 ml-md-5 custom-form">
        <div class="form-wrapper">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <img src="image/rmi_portal_logo.png" class="mx-auto d-block img-fluid mb-4"/>
            <h2 class="text-center title-underline-center">Log In</h2>
            <div class="form-group input-group mt-4">
                <span class="input-group-addon"><span class="im im-icon-Male-2" style="font-size: 2rem;"></span></span>
                <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" autofocus/>
            </div>
            <div class="form-group input-group">
                <span class="input-group-addon"><span class="im im-icon-Key-2" style="font-size: 2rem;"></span></span>
                <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
            </div>     
            <div class="form-extras ">
                <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
            </div>   
            <div class="form-inline-extras">
            <input type="submit" value="<?php echo $button_login; ?>" class="btn btn-primary" />
              <?php if ($redirect) { ?>
                <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
              <?php } ?>
            </div><!-- / form-inline-extras -->
            </form>
            <p class="mt-2">
                <?php echo $text_agree; ?>
            </p>
        </div>
        <p class="text-center" style="font-weight:bold;">RMI Portal v<?php echo $version; ?></p>
    </div><!-- / form-extras -->
</div><!-- / form-wrapper -->
<div class="row">
    <div class="col-md-4 ml-md-5">
        <div class="card card-outline-primary">
        <div class="card-block text-center">
            <h5 class="card-title text-primary">Create An Account</h5>
            <p class="card-text">
                Register for free to submit a recall, receive notifications, and contact customer service.
            </p>
            <a href="<?php echo $register; ?>" class="btn btn-outline-primary">Register</a>
        </div><!-- / card-block -->
        </div>
    </div>
</div>
</div>
</section>
</section>
<?php echo $footer; ?>