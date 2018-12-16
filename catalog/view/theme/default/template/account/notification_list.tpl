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
    <h1 class="title-underline-center text-center"><?php echo $heading_title; ?></h1>
    
    <div class="email-app mb-4">
        <nav>
            <a href="page-inbox-compose.html" class="btn btn-danger btn-block">New Email</a>
            <ul class="nav">
                <li class="nav-item"><a class="nav-link" href="<?php echo $inbox; ?>"><i class="fa fa-inbox"></i> <?php echo $text_inbox_title; ?></a></li>
                <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-star"></i> Stared</a></li>
                <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-bookmark"></i> Important</a></li>
                <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-trash-o"></i> Trash</a></li>
            </ul>
        </nav>
        <main class="inbox">
            <ul class="messages">
                <?php foreach ($notifications as $notification) { ?>
                <li class="message <?php echo ($notification['mark_as_read'] ? '' : 'unread'); ?> ">
                    <a href="<?php echo $notification['link']; ?>">
                    <div class="header">
                        <span class="from"><?php echo $notification['cs_firstname']; ?> <?php echo $notification['cs_lastname']; ?></span>                        
                        <span class="date"> <span class="fa fa-paper-clip"></span> <?php echo $notification['date_added']; ?></span>
                    </div>
                    <div class="position">
                        <span class="title"><?php echo $notification['cs_title']; ?></span>
                    </div>
                    <div class="title">
                        <?php echo $notification['title']; ?>
                    </div>
                    <div class="description">
                        <?php echo $notification['short_comment']; ?>
                    </div>
                    </a>
                </li>
                <?php } ?>
            </ul>
        </main>
    </div>
    
    </div>
    <?php echo $column_right; ?>
  </div>
</div>
</section>
<?php echo $footer; ?>