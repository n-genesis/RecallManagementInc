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
        <main class="message">
            <div class="toolbar">
                <div class="btn-group">
                    <button type="button" class="btn btn-outline-primary">
                        <span class="fa fa-star"></span>
                    </button>
                    <button type="button" class="btn btn-outline-primary">
                        <span class="fa fa-star-o"></span>
                    </button>
                    <button type="button" class="btn btn-outline-primary">
                        <span class="fa fa-bookmark-o"></span>
                    </button>
                </div>
            </div>
            <div class="details">
                <div class="title">
                    <?php echo $notification['title']; ?>
                </div>
                <div class="header">
                    <a href="<?php echo $notification['cs_profile']; ?>" title="Profile">
                        <img class="avatar" src="<?php echo $notification['cs_avatar']; ?>">
                    </a>
                    <div class="from">
                        <a href="<?php echo $notification['cs_profile']; ?>" title="Profile">
                            <span>
                                <?php echo $notification['cs_firstname']; ?> <?php echo $notification['cs_lastname']; ?>  
                            </span>
                        </a>
                        <span class="position"><?php echo $notification['cs_title']; ?></span>
                        <?php echo $notification['cs_email']; ?>
                    </div>
                    <div class="date">
                        <?php echo $notification['date_added']; ?>
                    </div>
                </div>
                <div class="content">
                    <p>
                        <?php echo $notification['comment']; ?>
                    </p>
                </div>
                <div class="attachments">
                    <div class="attachment">
                        <span class="badge badge-danger">zip</span><b>bootstrap.zip</b><i>(2,5MB)</i>
                        <span class="menu"> <a href="#" class="fa fa-search"></a> <a href="#" class="fa fa-share"></a> <a href="#" class="fa fa-cloud-download"></a> </span>
                    </div>
                    <div class="attachment">
                        <span class="badge badge-info">txt</span><b>readme.txt</b><i>(7KB)</i>
                        <span class="menu"> <a href="#" class="fa fa-search"></a> <a href="#" class="fa fa-share"></a> <a href="#" class="fa fa-cloud-download"></a> </span>
                    </div>
                    <div class="attachment">
                        <span class="badge badge-success">xls</span><b>spreadsheet.xls</b><i>(984KB)</i>
                        <span class="menu"> <a href="#" class="fa fa-search"></a> <a href="#" class="fa fa-share"></a> <a href="#" class="fa fa-cloud-download"></a> </span>
                    </div>
                </div>
                <form method="post" action="">
                    <div class="form-group">
                        <textarea class="form-control" id="message" name="body" rows="12" placeholder="Click here to reply" oninput="document.getElementById('ouput').innerHTML = this.value;"></textarea>
                    </div>
                    <div class="form-group">
                        <button tabindex="3" type="submit" class="btn btn-success">
                            Send message
                        </button>
                    </div>
                </form>
                <div id="ouput" class="form-control"></div>
            </div>
        </main>
    </div>
    </div>
    <?php echo $column_right; ?>
  </div>
</div>
</section>
<?php echo $footer; ?>