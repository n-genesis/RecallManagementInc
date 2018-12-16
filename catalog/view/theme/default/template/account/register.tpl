<?php echo $header; ?>
<section id="account-register">
<section class="container-fluid">
<div class="min-padding">
  
<section class="row justify-content-center">
    <div class="col-md-7 col-ms-12 mt-5">
      <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
      <?php } ?>
    </div>
</section>

<div class="row">
  <div class="col-md-5 ml-md-5 ">
    <div class="form-wrapper">
    <div class="text-center">
    <h1><?php echo $heading_title; ?></h1>
    <p><?php echo $text_account_already; ?></p>
    </div>
    <hr />
    <ul class="nav nav-pills nav-justified"  role="tablist">
        <li class="nav-item">
          <a class="nav-link active" data-toggle="tab" href="#personal-tab" role="tab">Personal</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="tab" href="#address-tab" role="tab">Address</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="tab" href="#password-tab" role="tab">Password</a>
        </li>
    </ul>
    <hr />
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
    <div class="tab-content">
      <div class="tab-pane active" id="personal-tab" role="tabpanel">
      <div id="account">
        <legend><?php echo $text_your_details; ?></legend>
        <div class="form-group required" style="display: <?php echo (count($customer_groups) > 1 ? 'block' : 'none'); ?>;">
          <label class=""><?php echo $entry_customer_group; ?></label>
          <div class="">
            <?php foreach ($customer_groups as $customer_group) { ?>
            <?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
            <div class="radio">
              <label>
                <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
                <?php echo $customer_group['name']; ?></label>
            </div>
            <?php } else { ?>
            <div class="radio">
              <label>
                <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" />
                <?php echo $customer_group['name']; ?></label>
            </div>
            <?php } ?>
            <?php } ?>
          </div>
        </div>
        <div class="form-group required">
          <label class="" for="input-firstname"><?php echo $entry_firstname; ?></label>
          <div class="">
            <input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-firstname" class="form-control" />
            <?php if ($error_firstname) { ?>
            <div class="text-danger"><?php echo $error_firstname; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group required">
          <label class="" for="input-lastname"><?php echo $entry_lastname; ?></label>
          <div class="">
            <input type="text" name="lastname" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" id="input-lastname" class="form-control" />
            <?php if ($error_lastname) { ?>
            <div class="text-danger"><?php echo $error_lastname; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group required">
          <label class="" for="input-email"><?php echo $entry_email; ?></label>
          <div class="">
            <input type="email" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
            <?php if ($error_email) { ?>
            <div class="text-danger"><?php echo $error_email; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group required">
          <label class="" for="input-telephone"><?php echo $entry_telephone; ?></label>
          <div class="">
            <input type="tel" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-telephone" class="form-control" />
            <?php if ($error_telephone) { ?>
            <div class="text-danger"><?php echo $error_telephone; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group">
          <label class="" for="input-fax"><?php echo $entry_fax; ?></label>
          <div class="">
            <input type="text" name="fax" value="<?php echo $fax; ?>" placeholder="<?php echo $entry_fax; ?>" id="input-fax" class="form-control" />
          </div>
        </div>
      </div>
      </div>
      <div class="tab-pane" id="address-tab" role="tabpanel">
      <div id="address">
        <legend><?php echo $text_your_address; ?></legend>
        <div class="form-group">
          <label class="" for="input-company"><?php echo $entry_company; ?></label>
          <div class="">
            <input type="text" name="company" value="<?php echo $company; ?>" placeholder="<?php echo $entry_company; ?>" id="input-company" class="form-control" />
          </div>
        </div>
        <div class="form-group required">
          <label class="" for="input-address-1"><?php echo $entry_address_1; ?></label>
          <div class="">
            <input type="text" name="address_1" value="<?php echo $address_1; ?>" placeholder="<?php echo $entry_address_1; ?>" id="input-address-1" class="form-control" />
            <?php if ($error_address_1) { ?>
            <div class="text-danger"><?php echo $error_address_1; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group">
          <label class="" for="input-address-2"><?php echo $entry_address_2; ?></label>
          <div class="">
            <input type="text" name="address_2" value="<?php echo $address_2; ?>" placeholder="<?php echo $entry_address_2; ?>" id="input-address-2" class="form-control" />
          </div>
        </div>
        <div class="form-group required">
          <label class="" for="input-city"><?php echo $entry_city; ?></label>
          <div class="">
            <input type="text" name="city" value="<?php echo $city; ?>" placeholder="<?php echo $entry_city; ?>" id="input-city" class="form-control" />
            <?php if ($error_city) { ?>
            <div class="text-danger"><?php echo $error_city; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group required">
          <label class="" for="input-postcode"><?php echo $entry_postcode; ?></label>
          <div class="">
            <input type="text" name="postcode" value="<?php echo $postcode; ?>" placeholder="<?php echo $entry_postcode; ?>" id="input-postcode" class="form-control" />
            <?php if ($error_postcode) { ?>
            <div class="text-danger"><?php echo $error_postcode; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group required">
          <label class="" for="input-country"><?php echo $entry_country; ?></label>
          <div class="">
            <select name="country_id" id="input-country" class="form-control">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($countries as $country) { ?>
              <?php if ($country['country_id'] == $country_id) { ?>
              <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
            <?php if ($error_country) { ?>
            <div class="text-danger"><?php echo $error_country; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group required">
          <label class="" for="input-zone"><?php echo $entry_zone; ?></label>
          <div class="">
            <select name="zone_id" id="input-zone" class="form-control">
            </select>
            <?php if ($error_zone) { ?>
            <div class="text-danger"><?php echo $error_zone; ?></div>
            <?php } ?>
          </div>
        </div>
      </div>
      </div>

      <div class="tab-pane" id="password-tab" role="tabpanel">
      <div id="password">
        <legend><?php echo $text_your_password; ?></legend>
        <div class="form-group required">
          <label class="" for="input-password"><?php echo $entry_password; ?></label>
          <div class="">
            <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
            <?php if ($error_password) { ?>
            <div class="text-danger"><?php echo $error_password; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group required">
          <label class="" for="input-confirm"><?php echo $entry_confirm; ?></label>
          <div class="">
            <input type="password" name="confirm" value="<?php echo $confirm; ?>" placeholder="<?php echo $entry_confirm; ?>" id="input-confirm" class="form-control" />
            <?php if ($error_confirm) { ?>
            <div class="text-danger"><?php echo $error_confirm; ?></div>
            <?php } ?>
          </div>
        </div>
      </div>

      <div id="newsletter" style="display:none;">
          <legend><?php echo $text_newsletter; ?></legend>
          <div class="form-group">
            <label class=""><?php echo $entry_newsletter; ?></label>
            <div class="">
              <?php if ($newsletter) { ?>
              <div class="radio radio-primary">
                <label class="hidden"><input type="radio"></label>
                <input type="radio" name="newsletter" id="radio1" value="0" checked="checked">
                <label for="radio1">
                    <span><?php echo $text_yes; ?></span>
                </label>
            </div>
            <div class="radio radio-primary">
                <label class="hidden"><input type="radio"></label>
                <input type="radio" name="newsletter" id="radio2" value="1">
                <label for="radio2">
                    <?php echo $text_no; ?>
                </label>
            </div>
              <label class="radio-inline">
                <input type="radio" name="newsletter" value="1" checked="checked" />
                <?php echo $text_yes; ?></label>
              <label class="radio-inline">
                <input type="radio" name="newsletter" value="0" />
                <?php echo $text_no; ?></label>
              <?php } else { ?>
              <div class="btn-group mr-2">
                <div class="radio radio-primary">
                    <label class="hidden"><input type="radio"></label>
                    <input type="radio" name="newsletter" id="radio1" value="0">
                    <label for="radio1"><span><?php echo $text_yes; ?>, Sign me up for your newsletter</span></label>
                </div>
              </div>
            <div class="btn-group mr-2">
            <div class="radio radio-primary">
                <label class="hidden"><input type="radio"></label>
                <input type="radio" name="newsletter" id="radio2" value="1" checked="checked">
                <label for="radio2"><?php echo $text_no; ?> thank you, I get enough emails</label>
            </div>
            </div>
              <?php } ?>
            </div>
          </div>
        </div>
      </div>
  
    </div>

  <hr />

      <?php echo $captcha; ?>
      <?php if ($text_agree) { ?>
      <div class="buttons text-center">
        <div class=""><?php echo $text_agree; ?>
          <?php if ($agree) { ?>
          <input type="checkbox" name="agree" value="1" checked="checked" />
          <?php } else { ?>
          <input type="checkbox" name="agree" value="1" />
          <?php } ?>
          &nbsp;
          <input type="submit" value="<?php echo $text_submit; ?>" class="btn btn-primary" />
        </div>
      </div>
      <?php } else { ?>
      <div class="buttons">
        <div class="">
          <input type="submit" value="<?php echo $text_submit; ?>" class="btn btn-primary" />
        </div>
      </div>
      <?php } ?>

    </div>
    </form>

  </div>
  <!-- Video column -->
  <div class="col-md-6 hidden-sm-down align-self-center">
      <div id="account-vid" class="card">
          <div class="card-block text-center">
              <h4 class="card-title">Why Sign Up?</h4>
              <p class="card-text">Watch our informitive video on how we are changing to help provide our customer with better serve.</p>
          </div><!-- / card-block -->
          <div align="center" class="embed-responsive embed-responsive-16by9">
              <video controls class="embed-responsive-item" poster="">
                  <source src="media/intro_animation.mp4" type="video/mp4">
              </video>
          </div>
      </div>
      
  </div>
</div>
  
</div>

</div>
</section>
</section>
<script type="text/javascript"><!--
$(function(){
$('select[name=\'country_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=account/account/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
		},
		complete: function() {
			$('.fa-spin').remove();
		},
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('input[name=\'postcode\']').parent().parent().addClass('required');
			} else {
				$('input[name=\'postcode\']').parent().parent().removeClass('required');
			}

			html = '<option value=""><?php echo $text_select; ?></option>';

			if (json['zone'] && json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
					html += '<option value="' + json['zone'][i]['zone_id'] + '"';

					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
						html += ' selected="selected"';
					}

					html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}

			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
});
//--></script>
<?php echo $footer; ?>
