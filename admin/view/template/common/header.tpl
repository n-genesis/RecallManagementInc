<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>" />
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>" />
    <?php } ?>
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
    <link href="view/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="view/plugins/node-waves/waves.min.css" rel="stylesheet" />
    <link href="view/plugins/animate-css/animate.css" rel="stylesheet" />
    <link href="view/css/style.min.css" rel="stylesheet" />
    <link href="view/css/themes/theme-blue.min.css" rel="stylesheet" />
    <link rel="icon" href="view/images/favcon.png" type="image/png">
    <!-- Jquery Core Js -->
    <script src="view/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap Core Js -->
    <script src="view/plugins/bootstrap/js/bootstrap.js"></script>
    <?php foreach ($styles as $style) { ?>
    <link type="text/css" href="<?php echo $style['href']; ?>" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
    <?php } ?>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
    <?php } ?>
    <?php foreach ($scripts as $script) { ?>
    <script type="text/javascript" src="<?php echo $script; ?>"></script>
    <?php } ?>
</head>
<body class="theme-blue">
<!-- Overlay For Sidebars -->
<div class="overlay"></div>
<!-- #END# Overlay For Sidebars -->
<!-- Top Bar -->
<nav class="navbar">
    <div class="container-fluid">
        <div class="navbar-header">
            <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
            <a href="javascript:void(0);" class="bars"></a>
            <a class="navbar-brand" href="<?php echo $home; ?>">
                RMI Web &amp; CRM Administrator
            </a>
        </div>
        <?php if ($logged) { ?>
        <div class="collapse navbar-collapse" id="navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button">
                        <span>Settings</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="javascript:void(0);" target="_blank" class=" waves-effect waves-block">View Frontend</a></li>
                        <li><a href="javascript:void(0);" class=" waves-effect waves-block">Another action</a></li>
                        <li><a href="javascript:void(0);" class=" waves-effect waves-block">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="javascript:void(0);" class=" waves-effect waves-block">Separated link</a></li>
                    </ul>
                </li>
                <li>
                    <a href="<?php echo $logout; ?>">Logout</a>
                </li>
            </ul>
        </div>
        <?php } ?>
    </div>
</nav>
<!-- #Top Bar -->
<?php if($column_left){ ?>
<section>
    <?php echo $column_left; ?>
</section>
<?php } ?>
<section class="<?php echo ($column_left ? 'content' : 'login' ); ?>">
<div class="<?php echo ($column_left ? 'container-fluid' : 'container' ); ?>">
