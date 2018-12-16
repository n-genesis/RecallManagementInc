<?php echo $header; ?>
<section class="container-fluid">
<div class="pt-2 pb-5 min-height">
    
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  
  <div class="row">
      <aside class="col-md-3">
        <div class="card">
          <img class="card-img-top mx-auto d-block circle mt-4" src="https://docs.atlassian.com/aui/5.1/docs/img/user-avatar-blue-96@2x.png" alt="Card image cap">
          <div class="card-block">
            <p class="card-text text-center"><a href="<?php echo $edit; ?>">Edit Account</a></p>
            <h4 class="card-title text-center"><?php echo $text_username; ?></h4>
          </div>
          <ul class="list-group list-group-flush">
            <a href="<?php echo $order; ?>" class="list-group-item"><?php echo $text_order; ?></a>
            <a href="<?php echo $address; ?>" class="list-group-item"><?php echo $text_address; ?></a>
            <a href="<?php echo $download; ?>" class="list-group-item"><?php echo $text_download; ?></a>
            <a href="<?php echo $transaction; ?>" class="list-group-item"><?php echo $text_transaction; ?></a>
            <a href="<?php echo $wishlist; ?>" class="list-group-item"><?php echo $text_wishlist; ?></a>
            <a href="<?php echo $newsletter; ?>" class="list-group-item"><?php echo $text_newsletter; ?></a>
            <a href="<?php echo $password; ?>" class="list-group-item"><?php echo $text_password; ?></a>
            <a href="<?php echo $logout; ?>" class="list-group-item"><?php echo $text_logout; ?></a>
          </ul>
        </div> 
      </aside>
    <section class="col-md-6">
        <h2 class="title-underline"><?php echo $text_my_account; ?></h2>
        <!-- System notice -->
        <div class="card card-outline-primary rectangle">
            <div class="card-block">
                <h5 class="card-title text-primary m-0">New Message</h5>
                <h5><small class="mb-4">From: Customer Service</small></h5>
                <p class="card-text text-primary">
                    With supporting text below as a natural lead-in to additional content. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                </p>
                <a href="#" class="btn btn-outline-primary rectangle">Read</a>
            </div><!-- / card-block -->
        </div>
        <h2 class="title-underline">Claim Activity</h2>
        <div class="card text-left">
            <div class="card-header">
                Case #CDFG35975-24
            </div><!-- / card-header -->
            <div class="card-block">
                <h4 class="card-title">Comment Title</h4>
                <p class="card-text">
                    With supporting text below as a natural lead-in to additional content. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                </p>
                <a href="#" class="btn btn-sm btn-outline-primary">View</a>
                <a href="#" class="btn btn-sm btn-outline-info">Mark As Read</a>
            </div><!-- / card-block -->
        </div>
      </section>
    <div class="col-md-3">
        <h3 class="title-underline">Customer Service</h3>
        <div class="card card-outline-inverse rectangle">
            <div class="card-block">
                <h4 class="card-title">Need Help?</h4>
                <p class="card-text">
                    We are here to assist you however we can. We are a number of ways to contact us to make is easy for you.
                </p>
                <a href="#" class="btn btn-primary btn-block">Message</a>
                <a href="#" class="btn btn-primary btn-block">Chat</a>
                <a href="#" class="btn btn-primary btn-block">Call</a>
            </div><!-- / card-block -->
        </div>       
    </div>
  </div>

</div>
</section>
<?php echo $footer; ?> 