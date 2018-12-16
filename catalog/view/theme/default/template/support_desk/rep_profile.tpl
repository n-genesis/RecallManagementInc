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
    <div class="row">
        <div class="col-md-12">
            <div class="tab-content">
                <div class="tab-pane active" id="profile">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card rectangle">
                                <div class="card-block">
                                    <img src="<?php echo $user_info['rep_avatar']; ?>" class="mb-3" alt="">
                                    <!-- product-details -->
                                    <div class="about-info-p">
                                        <strong>Full Name</strong>
                                        <br>
                                        <p class="text-muted">
                                            <?php echo $user_info['rep_fullname']; ?>
                                        </p>
                                    </div>
                                    <div class="about-info-p">
                                        <strong>Mobile</strong>
                                        <br>
                                        <p class="text-muted">
                                            (123) 123 1234
                                        </p>
                                    </div>
                                    <div class="about-info-p">
                                        <strong>Email</strong>
                                        <br>
                                        <p class="text-muted">
                                            <?php echo $user_info['rep_email']; ?>
                                        </p>
                                    </div>
                                    <div class="about-info-p m-b-0">
                                        <strong>Location</strong>
                                        <br>
                                        <p class="text-muted">
                                            USA
                                        </p>
                                    </div>
                                    <div class="text-center">
                                    <a href="#x" class="btn btn-sm btn-primary mr-1">Contact</i></a>
                                    <a href="#x" class="btn btn-sm btn-success">Call</a>
                                    </div>
                                </div><!-- / card-block -->
                            </div><!-- / card -->   
                            <div class="card">
                                <div class="card-header">
                                    <h4>Languages</h4>
                                </div>
                                <div class="card-block">
                                    <ul>
                                        <li>English</li>
                                        <li>Franch</li>
                                        <li>Greek</li>
                                    </ul>
                                </div>
                            </div>
    
                        </div>
    
                        <div class="col-md-8">
    
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="my-0">Biography</h4>
                                </div>
                                <div class="card-block">
                                    <p>
                                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
                                    </p>
    
                                    <p>
                                        <strong>But also the leap into electronic typesetting, remaining essentially unchanged.</strong>
                                    </p>
    
                                    <p>
                                        It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                                    </p>
                                </div>
                            </div>
    
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="my-0">Skills</h4>
                                </div>
                                <div class="card-block">
                                    <div class="m-b-15">
                                        <h5>Angular Js <span class="pull-right">60%</span></h5>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-primary wow animated progress-animated" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%; visibility: hidden; animation-name: none;">
                                                <span class="sr-only">60% Complete</span>
                                            </div>
                                        </div>
                                    </div>
    
                                    <div class="m-b-15">
                                        <h5>Javascript <span class="pull-right">90%</span></h5>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-pink wow animated progress-animated" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%; visibility: hidden; animation-name: none;">
                                                <span class="sr-only">90% Complete</span>
                                            </div>
                                        </div>
                                    </div>
    
                                    <div class="m-b-15">
                                        <h5>Wordpress <span class="pull-right">80%</span></h5>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-purple wow animated progress-animated" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%; visibility: hidden; animation-name: none;">
                                                <span class="sr-only">80% Complete</span>
                                            </div>
                                        </div>
                                    </div>
    
                                    <div class="m-b-0">
                                        <h5>HTML5 &amp; CSS3 <span class="pull-right">95%</span></h5>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-info wow animated progress-animated" role="progressbar" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100" style="width: 95%; visibility: hidden; animation-name: none;">
                                                <span class="sr-only">95% Complete</span>
                                            </div>
                                        </div>
                                    </div>
    
                                </div>
                            </div>
    
                        </div>
    
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    </div>
    <?php echo $column_right; ?>
  </div>
</div>
</section>
<?php echo $footer; ?>