<?php echo $header; ?>
<section class="container-fluid">
<div class="pt-2 pb-5 min-height">
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="row">
    <?php echo $column_left; ?>
    <section class="col-md-6">
        <h2 class="title-underline"><?php echo $text_my_account; ?></h2>
        
        <section class="panel-top-section">
            <?php echo $content_top; ?>
        </section>

<!-- Options   
<div class="row">
    <div class="col-md-4 col-sm-12">
        <div class="card">
            <div class="card-block text-center">
                <a href="#" class="">
                <div class="block icon-block text-center">
                    <i class="md-icon box-icon icon-bg pill bg-primary text-white">verified_user</i>
                    <h6 class="box-title">Icon Box Title</h6>
                </div>
                </a>
            </div>
        </div>
    </div>
</div>        
-->     
        <hr />
        <!-- System message -->
        <article class="user-message">
            <header>
                <h4>Notification</h4>
            </header>
            
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
        </article>
        
        <hr />
        
        <!-- Panel Main Section -->
        <section class="panel-main">
            
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
        
        
      </section>
    <?php echo $column_right; ?>
  </div>

</div>
</section>
<?php echo $footer; ?> 