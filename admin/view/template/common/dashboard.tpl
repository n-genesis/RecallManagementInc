<?php echo $header; ?>
<div class="block-header">
  <h1><?php echo $section_title; ?></h1>
</div>
<div class="row clearfix">
  <ol class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ol>
  <!--Dashboard widgets-->
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12"><?php echo $customer; ?></div>
      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12"><?php echo $online; ?></div>
      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
          <div class="info-box hover-expand-effect">
              <a href="#">
              <div class="icon bg-pink">
                  <i class="material-icons">email</i>
              </div>
              </a>
              <div class="content">
                  <div class="text text-uppercase">MESSAGES</div>
                  <div class="number">15</div>
              </div>
          </div>
      </div>
      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
          <div class="info-box hover-expand-effect">
              <a href="#">
              <div class="icon bg-green">
                  <i class="material-icons">assignment</i>
              </div>
              </a>
              <div class="content">
                  <div class="text text-uppercase">Assignment</div>
                  <div class="number">17</div>
              </div>
          </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-3 col-md-3 col-sm-6"><?php echo $activity; ?></div>
    </div>
  </div>
  <!-- END Dashboard widgets-->
  <div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="header">
                    <h2>App Widgets</h2>
                    <ul class="header-dropdown m-r--5">
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                <i class="material-icons">more_vert</i>
                            </a>
                            <ul class="dropdown-menu pull-right">
                                <li><a href="javascript:void(0);">Action</a></li>
                                <li><a href="javascript:void(0);">Another action</a></li>
                                <li><a href="javascript:void(0);">Something else here</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="body">
                    Quis pharetra a pharetra fames blandit. Risus faucibus velit Risus imperdiet mattis neque volutpat, etiam lacinia netus dictum magnis per facilisi sociosqu. Volutpat. Ridiculus nostra.
                </div>
            </div>
        </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>