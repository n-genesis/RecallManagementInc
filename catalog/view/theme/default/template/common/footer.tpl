<footer >
  <div class="container">
    <div class="row mb-4">
      <!-- Footer Widget Starts -->
      <div class="col-md-3 col-xs-12">
        <h5 class="title">Services</h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <!-- Footer Widget Ends -->
      
      <!-- Footer Widget Starts -->
      <div class="col-md-3 col-xs-12">
        <h5 class="title">Industry Rources</h5>
        <ul class="list-unstyled">
          <li><a href="#">Industry News</a></li>
          <li><a href="<?php echo $recall_websites; ?>">Recall Websites</a></li>
          <li><a href="<?php echo $recall_experience; ?>">Recall Experience</a></li>
        </ul>
      </div>
      <!-- Footer Widget Ends -->
      
      <!-- Footer Widget Starts -->
      <div class="col-md-3 col-xs-12">
        <h5 class="title">Account</h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $support_desk; ?>"><?php echo $text_support_desk; ?></a></li>
        </ul>
      </div>
      <!-- Footer Widget Ends -->
      
      <!-- Footer Widget Starts -->
      <div class="col-md-3 col-xs-12">
        <h5 class="title">Contact Information</h5>
        <p class="contact">
        <strong><?php echo $site_name; ?></strong><br />
        9154 Will Clayton Pkwy,<br />
        Humble, TX 77338<br />
        Phone: <?php echo $telephone;?> <br />
        <?php if(!empty($fax)){ ?>
        Fax: <?php echo $fax;?> <br />
        <?php } ?>
        <?php if(!empty($email)){ ?>
        <a href="<?php echo $contact; ?>"><?php echo $email;?></a>
        <?php } ?>
        <a href="https://www.bbb.org/houston/business-reviews/product-development-and-marketing/recall-management-inc-in-humble-tx-22010657/#sealclick" id="bbblink" class="ruvtbul" target="_blank" rel="nofollow"><img src="image/catalog/bbb_logo.png" style="border: 0;" alt="Recall Management, Inc BBB Business Review" /></a>
        </p>
  </div>
  <!-- Footer Widget Ends -->
    </div>
      <div class="row">
          <div class="col-md-6 footer-left-area">
              <p><?php echo $powered; ?></p>
          </div>
          <div class="col-md-6 footer-right-area">
            <a href="<?php echo $privacy; ?>">Privacy Policy</a> | <a href="<?php echo $terms; ?>">Terms &amp; Conditions</a>
          </div>
      </div><!-- / row -->
  </div><!-- / container-fluid -->
</footer>
<!-- / footer -->

<!-- Core JavaScript -->
<script src="catalog/view/theme/default/js/vender/tether.min.js"></script>
<script src="catalog/view/theme/default/js/vender/bootstrap.min.js"></script>
<!-- Smooth Scrolling -->
<script src="catalog/view/theme/default/js/plugin/smooth-scroll.js"></script>
<!-- preloader -->
<script src="catalog/view/theme/default/js/sandbox/sandbox.js"></script>
<!-- Hide Nav -->
<script src="catalog/view/theme/default/js/plugin/hide-nav.js"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
</body>
</html>