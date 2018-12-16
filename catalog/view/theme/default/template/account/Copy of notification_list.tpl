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
      <div class="row">
        <!--
        <?php foreach ($notifications as $notification) { ?>
        <div class="col-md-12 col-sm-12">
        <article class="user-message">
            <div class="card card-outline-primary rectangle">
                <div class="card-block">
                    <div class="blog block mt-0">
                        <div class="post-meta">
                            <h6>
                                <i class="fa fa-user"></i><a href="#x" class="author ml-1">Admin</a><i class="fa fa-calendar ml-2"></i><a href="#x" class="date ml-1"><?php echo $notification['date_added'] ?></a><i class="fa fa-tag ml-2"></i><a href="#x" class="category ml-1">Category</a>
                            </h6>
                        </div>
                        <?php if($notification['mark_as_read']){ ?>
                           <h5 class="text-success m-0">
                               <i class="md-icon dp24 text-warning">star</i> <?php echo $notification['title'] ?>
                           </h5> 
                        <?php }else{ ?>
                           <h5 class="text-primary m-0"><?php echo $notification['title'] ?></h5>
                        <?php } ?>
                        <p>
                            <?php echo $notification['short_comment']; ?>
                        </p>
                    </div>
                </div>
            </div>
        </article>
        </div>
        <?php } ?>  
        -->
          <?php foreach ($notifications as $notification) { ?>
            <div class="col-md-6 col-sm-12">
            <article class="user-message">
                <div class="card card-outline-primary rectangle">
                    <div class="card-block">
                        <?php if($notification['mark_as_read']){ ?>
                           <h4 class="card-title text-success mb-1">
                               <i><?php echo $notification['title']; ?></i>
                           </h4> 
                        <?php }else{ ?>
                           <h4 class="card-title text-primary m-0"><?php echo $notification['title']; ?></h4>
                        <?php } ?>
                        <h6 class="mb-0">From: Customer Service</h6>
                        <h6>Date: <?php echo $notification['date_added']; ?></h6>
                        <p class="card-text text-primary">
                            <?php echo $notification['short_comment']; ?>
                        </p>
                        <a href="#" class="btn btn-outline-primary rectangle">Read</a>
                    </div><!-- / card-block -->
                </div>
            </article>   
            </div>         
          <?php } ?>
          
       </div>
      </div>
    <?php echo $column_right; ?>
  </div>
</div>
</section>
<?php echo $footer; ?>