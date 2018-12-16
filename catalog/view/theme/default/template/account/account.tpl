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

        <!-- System message -->
        <?php echo $new_notification; ?>
        
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

<!-- Version notice -->
<div id="version-notice-modal" class="modal fade default-modal-example" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title"><?php echo $text_version_notice_title; ?></h5>
        <!---->
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        
      </div><!-- / modal-header -->
      <div class="modal-body">
        <p><?php echo $text_version_notice; ?></p>
      </div><!-- / modal-body -->
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-default" data-dismiss="modal">Close</button>
        <button type="button" id="notice-agree" class="btn btn-outline-success" data-dismiss="modal">Okay</button>
      </div><!-- / modal-footer -->
    </div><!-- / modal-content -->
  </div><!-- / modal-dialog -->
</div><!-- / modal -->
<!-- / default-modal -->
<script>
$(function(){
    if(localStorage){
        if(localStorage.getItem('<?php echo $version_notice_token; ?>') != 'agreed'){
            $('#version-notice-modal').modal({
                show: true,
                backdrop: 'static',
                keyboard: false
            });
            $('#version-notice-modal #notice-agree').on('click',function(){
                localStorage.setItem('<?php echo $version_notice_token; ?>','agreed');
            });
        }
    }
});
</script>
<?php echo $footer; ?> 