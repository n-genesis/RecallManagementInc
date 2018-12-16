<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<!-- Bootstrap 4 core CSS -->
<link href="catalog/view/theme/default/css/bootstrap.css" rel="stylesheet">
<link href="catalog/view/theme/default/css/animate.css" rel="stylesheet">
<link href="catalog/view/theme/default/css/owl.carousel.min.css" rel="stylesheet">
<!-- Fonts -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<!-- Custom Styles -->
<link href="catalog/view/theme/default/css/style.css" rel="stylesheet">
<link href="catalog/view/theme/default/css/main.css" rel="stylesheet" />
<link href="catalog/view/theme/default/css/account.css" rel="stylesheet" />
<script src="catalog/view/theme/default/js/vender/jquery.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/default/js/plugin/bootstrap-notify/bootstrap-notify.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/default/js/sandbox/html5audio.js" type="text/javascript"></script>
<script src="catalog/view/theme/default/js/sandbox/sandboxAccount.js" type="text/javascript"></script>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body>
<!-- preloader
<div id="preloader">
  <div class="spinner spinner-round"></div>
</div>
 -->

<!-- navigation menu -->
<nav class="navbar navbar-toggleable-md navbar-inverse bg-primary sticky-top">
  <div class="container no-padding">
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar-toggle" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button><!-- / navbar-toggler -->
    
    <a class="navbar-brand" href="<?php echo $home; ?>"><img src="image/logo-white-account.png" alt=""></a>

    <div class="collapse navbar-collapse justify-content-end" id="navbar-toggle">
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" href="<?php echo $account; ?>"><?php echo $text_home; ?> <span class="sr-only">(current)</span></a></li>
            <li class="nav-item"><a href="<?php echo $claims; ?>" class="nav-link"><?php echo $text_submited_claim; ?></a>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#x" id="dropdown003" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $text_support_title; ?></a>
                <div class="dropdown-menu" aria-labelledby="dropdown003">
                    <a class="dropdown-item" href="<?php echo $contact; ?>"><?php echo $text_message_us; ?></a>
                    <a class="dropdown-item" href="<?php echo $support_desk; ?>"><?php echo $test_support_desk; ?></a>
                </div>
            </li>
            <li class="nav-item"><a href="<?php echo $notification; ?>" class="nav-link"><?php echo $text_notification; ?></a>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#x" id="dropdown003" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $text_account; ?></a>
                <div class="dropdown-menu" aria-labelledby="dropdown003">
                    <a class="dropdown-item" href="<?php echo $edit_account; ?>"><?php echo $text_edit_account; ?></a>
                    <a class="dropdown-item" href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
                </div>
            </li>
        </ul>      
    </div><!-- / navbar-collapse -->                
  </div><!-- container -->
</nav>
<!-- / navigation menu -->