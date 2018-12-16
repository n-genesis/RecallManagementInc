<?php if(!empty($notifications)){ ?>
<article class="user-message">
    <header><h4><?php echo $text_new_notification_title; ?></h4></header>
    <div class="card card-outline-primary rectangle">
        <div class="card-block">
            <h4 class="card-title text-primary m-0"><?php echo $notifications['title']; ?></h4>
            <h6 class="mb-0">From: Customer Service</h6>
            <h6>Date: <?php echo $notifications['date_added']; ?></h6>
            <p class="card-text text-primary">
                <?php echo $notifications['short_comment']; ?>
            </p>
            <a href="<?php echo $notifications['link']; ?>" class="btn btn-outline-primary rectangle">Read</a>
        </div><!-- / card-block -->
    </div>
</article>
<hr />
<?php } ?>