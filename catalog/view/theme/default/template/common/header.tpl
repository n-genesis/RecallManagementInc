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
<script src="catalog/view/theme/default/js/vender/jquery.min.js"></script>
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
preloader -->
 
<nav class="top-nav top-nav-light">
    <div class="container">
        <span class="left">
            <a href="tel:+1<?php echo $stp_telephone; ?>" class="mr-2"><i class="lnr lnr-phone-handset"></i>+1<?php echo $telephone; ?></a>
            <a href="#"><i class="fa fa-building"></i> Business Info</a>
        </span>
        <!--
        <span class="right">
          Keep up to date on [<a href="#" class="mr-2">
              <i class="animated infinite swing fa fa-bell"></i>
              <i class="fa fa-bell"></i>
               New Recalls</a>]
        </span>
        -->
    </div><!-- / container -->
</nav><!-- / top-nav-primary -->

<!-- navigation menu -->
<nav class="navbar navbar-toggleable-md navbar-inverse sticky-top">
  <div class="container no-padding">
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar-toggle" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button><!-- / navbar-toggler -->
    
    <a class="navbar-brand" href="<?php echo $home; ?>"><img src="image/logo-white.png" alt=""></a>

    <div class="collapse navbar-collapse justify-content-end" id="navbar-toggle">
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" href="#x">Home <span class="sr-only">(current)</span></a></li>

          <li class="nav-item dropdown mega-dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Services <span class="caret"></span></a>
            <div class="dropdown-menu mega-dropdown-menu">
              <div class="row">
              <div class="col-sm-3">
                <p class="m-0 text-center">
                  Sign Up For RMI Portal
                </p>
                <p class="text-center">
                    <a href="<?php echo $rmi_portal; ?>">
                        <img src="image/catalog/figures/services-menu.png" class="border-primary mx-auto d-block mb-2" />
                        Click Here To Learn More
                    </a>
                </p>
              </div>
              <!--
              <div class="col-sm-8">
                <ul>
                  <li class="dropdown-header">Services</li>
                  <?php foreach ($informations as $information) { ?>
                  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                  <?php } ?>
                </ul>
              </div>
              -->
              <?php foreach (array_chunk($informations, ceil(count($informations) / 3)) as $informations) { ?>
                <div class="col-sm-3">
                  <ul>
                    <!--
                    <li class="dropdown-header">&nbsp;</li>
                    -->
                    <?php foreach ($informations as $information) { ?>
                    <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                    <?php } ?>
                  </ul>
                </div>
                <?php } ?>
              </div>
            </div>
          </li>
 
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#x" id="dropdown002" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Service Resources</a>
                <div class="dropdown-menu" aria-labelledby="dropdown002">
                    <!--
                    <a class="dropdown-item" href="#">Recall Activity Board</a>
                    -->
                    <a class="dropdown-item" href="#">Industry News</a>
                    <a class="dropdown-item" href="<?php echo $recall_websites; ?>">Recall Websites</a>
                    <a class="dropdown-item" href="<?php echo $recall_experience; ?>">Recall Experience</a>
                </div>
            </li>
            <li class="nav-item"><a class="nav-link" href="<?php echo $about_us; ?>">About Us</a></li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#x" id="dropdown003" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Contact Us</a>
                <div class="dropdown-menu" aria-labelledby="dropdown003">
                    <a class="dropdown-item" href="<?php echo $contact; ?>">Message Us</a>
                    <a class="dropdown-item" href="#">Consultation</a>
                </div>
            </li>
            <?php if ($logged) { ?>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#x" id="dropdown003" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Account</a>
                <div class="dropdown-menu" aria-labelledby="dropdown003">
                    <a class="dropdown-item" href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
                    <a class="dropdown-item" href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
                </div>
            </li>
            <?php } ?>
        </ul>
        <?php if (!$logged) { ?>
          <a href="index.php?route=account/login" class="btn btn-sm btn btn-outline-secondary ml-2"><i class="fa fa-lock"></i> <?php echo $text_login; ?></a>
        <!--
          <a href="index.php?route=account/login" class="btn btn-sm btn-outline-secondary pill ml-2"><i class="fa fa-lock"></i> Login</a>
        <a href="index.php?route=account/register" class="btn btn-sm btn-outline-secondary pill ml-2"><i class="fa fa-user-circle"></i> Register</a>
        -->
        <?php } ?>
        
    </div><!-- / navbar-collapse -->
                
  </div><!-- container -->
</nav>
<!-- / navigation menu -->
