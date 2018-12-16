<?php if ($logged) { ?>
<div class="card hidden-sm-down">
    <!--
        <img style="border:2px solid #3f50b5; " class="card-img-top mx-auto d-block circle mt-4" src="https://placeimg.com/230/230/people" title="Account Portal">
    -->
    
    
    <div class="card-block">
        <a href="<?php echo $account; ?>">
        <h4 class="card-title text-center"><?php echo $text_username; ?></h4>
        </a>
        <p class="card-text text-center">
            <a href="<?php echo $edit; ?>">Edit Account</a>
        </p>
    </div>
    <ul class="list-group list-group-flush">
        <a href="<?php echo $order; ?>" class="list-group-item"><span class="im im-icon-Notepad mr-2" style="font-size: 28px;"></span> <?php echo $text_order; ?></a>
        <a href="<?php echo $notification; ?>" class="list-group-item"><span class="im im-icon-Speach-Bubble3 mr-2" style="font-size: 28px;"></span> <?php echo $text_notification; ?></a>
        <a href="<?php echo $address; ?>" class="list-group-item"><span class="im im-icon-Address-Book2 mr-2" style="font-size: 28px;"></span> <?php echo $text_address; ?></a>
        <a href="<?php echo $download; ?>" class="list-group-item"><span class="im im-icon-Download mr-2" style="font-size: 28px;"></span> <?php echo $text_download; ?></a>
        <a href="<?php echo $wishlist; ?>" class="list-group-item"><span class="im im-icon-Library-2 mr-2" style="font-size: 28px;"></span> <?php echo $text_wishlist; ?></a>
        <a href="<?php echo $newsletter; ?>" class="list-group-item"><span class="im im-icon-Speach-Bubble3 mr-2" style="font-size: 28px;"></span> <?php echo $text_newsletter; ?></a>
        <a href="<?php echo $password; ?>" class="list-group-item"><span class="im im-icon-Key-2 mr-2" style="font-size: 28px;"></span> <?php echo $text_password; ?></a>
        <a href="<?php echo $logout; ?>" class="list-group-item"><span class="im im-icon-Power-2 mr-2" style="font-size: 28px;"></span> <?php echo $text_logout; ?></a>
    </ul>
</div>
<?php } ?>