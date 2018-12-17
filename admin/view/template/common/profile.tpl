<div class="user-info">
  <div class="image">
      <img src="<?php echo $image; ?>" width="48" height="48" alt="<?php echo $firstname; ?> <?php echo $lastname; ?>" title="<?php echo $username; ?>" />
  </div>
  <div class="info-container">
      <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $firstname; ?> <?php echo $lastname; ?></div>
      <div class="email"><?php echo $user_group; ?></div>
      <div class="btn-group user-helper-dropdown">
          <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
          <ul class="dropdown-menu pull-right">
              <li>
                    <a href="<?php echo $profile; ?>">
                      <i class="material-icons">person</i><?php echo $text_profile; ?>
                    </a>
              </li>
              <li>
                    <a href="<?php echo $logout; ?>">
                      <i class="material-icons">input</i><?php echo $text_logout; ?>
                    </a>
              </li>
          </ul>
      </div>
  </div>
</div>
