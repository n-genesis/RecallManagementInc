<?php echo $header; ?>
<div class="row clearfix">
    <div class="logo">
        <img src="view/images/rmi_portal_logo.png" class="img-responsive center-block" alt="Responsive image">
    </div>
    <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-12 col-xs-12">
    <?php if ($success) { ?>
        <div class="alert alert-success"><?php echo $success; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
    <?php } ?>
    <div class="card">
        <div class="header">
            <h2>Login</h2>
        </div>
        <div class="body">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                <label for="input-username"><?php echo $entry_username; ?></label>
                <div class="input-group">
                    <span class="input-group-addon">
                        <i class="material-icons">person</i>
                    </span>
                    <div class="form-line">
                        <input type="text" name="username" value="<?php echo $username; ?>" placeholder="<?php echo $entry_username; ?>" id="input-username" class="form-control"  required autofocus />
                    </div>
                </div>
                <label for="input-username"><?php echo $entry_password; ?></label>
                <div class="input-group">
                    <span class="input-group-addon">
                        <i class="material-icons">lock</i>
                    </span>
                    <div class="form-line">
                        <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" required />
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-8 p-t-5">
                        <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
                    </div>
                    <div class="col-xs-4">
                        <button class="btn btn-primary btn-block waves-effect" type="submit"><?php echo $button_login; ?></button>
                    </div>
                </div>
                <?php if ($redirect) { ?>
                    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                <?php } ?>
            </form>
        </div>
    </div>
    <p class="text-center"><?php echo $text_footer; ?></p>
    <p class="text-center"><?php echo $text_version; ?></p>
    </div>
</div>
<?php echo $footer; ?>