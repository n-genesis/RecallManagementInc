<div class="menu">
  <ul class="list">
      <li class="header">MAIN NAVIGATION</li>
      <li class="<?php echo ($current_route == 'common/dashboard' ? 'active':''); ?>">
          <a href="<?php echo $home; ?>" class="waves-effect waves-block">
              <i class="material-icons">dashboard</i>
              <span><?php echo $text_dashboard; ?></span>
          </a>
      </li>
      <li>
          <a href="javascript:void(0);" class="menu-toggle waves-effect waves-block">
              <i class="material-icons">important_devices</i>
              <span><?php echo $text_website_options; ?></span>
          </a>
      
      <ul class="ml-menu">
          <li>
              <a href="javascript:void(0);" class="menu-toggle">
                  <span><?php echo $text_layout; ?></span>
              </a>
              <ul class="ml-menu">
                  <li>
                      <a href="<?php echo $website_option_articles; ?>">
                          <span><?php echo $text_articles; ?></span>
                      </a>
                  </li>
                  <li>
                      <a href="javascript:void(0);">
                          <span><?php echo $text_modules; ?></span>
                      </a>
                  </li>
                  <li>
                      <a href="javascript:void(0);">
                          <span><?php echo $text_page_layouts; ?></span>
                      </a>
                  </li>
                  <li>
                      <a href="javascript:void(0);">
                          <span><?php echo $text_site_themes; ?></span>
                      </a>
                  </li>
              </ul>
          </li>
          <li>
              <a href="javascript:void(0);" class="menu-toggle">
                  <span><?php echo $text_seo; ?></span>
              </a>
              <ul class="ml-menu">
                  <li>
                      <a href="<?php echo $analytics; ?>">
                          <span><?php echo $text_analytics; ?></span>
                      </a>
                  </li>
                  <li>
                      <a href="javascript:void(0);">
                          <span><?php echo $text_captcha; ?></span>
                      </a>
                  </li>
                  <li>
                      <a href="javascript:void(0);">
                          <span><?php echo $text_rss_feeds; ?></span>
                      </a>
                  </li>
              </ul>
          </li>
      </ul>
      </li>
      <li class="<?php echo ($current_route == 'customer/customer' || $current_route == 'report/customer_activity' || $current_route == 'report/customer_online' || $current_route == 'customer/customer_group' ? 'active':''); ?>">
          <a href="javascript:void(0);" class="menu-toggle waves-effect waves-block">
              <i class="material-icons">contacts</i>
              <span><?php echo $text_customer_center; ?></span>
          </a>
          <ul class="ml-menu">
                <li class="<?php echo ($current_route == 'customer/customer' ? 'active':''); ?>">
                    <a href="<?php echo $customer; ?>">
                        <span><?php echo $text_customers; ?></span>
                    </a>
                </li>
                <li class="<?php echo ($current_route == 'report/customer_activity' ? 'active':''); ?>">
                    <a href="<?php echo $report_customer_activity; ?>">
                        <span><?php echo $text_customer_activity; ?></span>
                    </a>
                </li>
                <li class="<?php echo ($current_route == 'report/customer_online' ? 'active':''); ?>">
                    <a href="<?php echo $report_customer_online; ?>">
                        <span><?php echo $text_customers_online; ?></span>
                    </a>
                </li>
                <li class="<?php echo ($current_route == 'customer/customer_group' ? 'active':''); ?>">
                    <a href="<?php echo $customer_groups; ?>">
                        <span><?php echo $text_customer_groups; ?></span>
                    </a>
                </li>
          </ul>
      </li>
      <li>
          <a href="javascript:void(0);" class="menu-toggle waves-effect waves-block">
              <i class="material-icons">headset_mic</i>
              <span><?php echo $text_support_desk; ?></span>
          </a>
          <ul class="ml-menu">
              <li>
                  <a href="javascript:void(0);">
                      <span><?php echo $text_support_desk; ?></span>
                  </a>
              </li>
              <li>
                  <a href="javascript:void(0);">
                      <span><?php echo $text_messages; ?></span>
                  </a>
              </li>
          </ul>
      </li>
      <li>
          <a href="javascript:void(0);" class="menu-toggle waves-effect waves-block">
              <i class="material-icons">developer_mode</i>
              <span><?php echo $text_system; ?></span>
          </a>
          <ul class="ml-menu">
              <li>
                  <a href="javascript:void(0);" class="menu-toggle">
                      <span><?php echo $text_settings; ?></span>
                  </a>
                  <ul class="ml-menu">
                    <li>
                        <a href="javascript:void(0);">
                            <span><?php echo $text_settings; ?></span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <span><?php echo $text_languages; ?></span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <span><?php echo $text_countries; ?></span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <span><?php echo $text_zones; ?></span>
                        </a>
                    </li>
                  </ul>
              </li>
              <li>
                <a href="javascript:void(0);" class="menu-toggle">
                    <span><?php echo $text_application; ?></span>
                </a>
                <ul class="ml-menu">
                    <li>
                        <a href="javascript:void(0);">
                            <span><?php echo $text_newsletter; ?></span>
                        </a>
                    </li>
                    
                    <li>
                        <a href="javascript:void(0);">
                            <span><?php echo $text_assignment_statuses; ?></span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <span><?php echo $text_tools; ?></span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="javascript:void(0);">
                                    <span><?php echo $text_uploads; ?></span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0);">
                                    <span><?php echo $text_error_log; ?></span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                </li>
          </ul>
      </li>
      <li class="<?php echo ($current_route == 'user/user' || $current_route == 'user/user_permission' ? 'active':''); ?>">
            <a href="javascript:void(0);" class="menu-toggle waves-effect waves-block">
                <i class="material-icons">person</i>
                <span><?php echo $text_users; ?></span>
            </a>
            <ul class="ml-menu">
                <li class="<?php echo ($current_route == 'user/user' ? 'active':''); ?>">
                    <a href="<?php echo $user; ?>">
                        <span><?php echo $text_users; ?></span>
                    </a>
                </li>
                <li class="<?php echo ($current_route == 'user/user_permission' ? 'active':''); ?>">
                    <a href="<?php echo $user_groups; ?>">
                        <span><?php echo $text_user_groups; ?></span>
                    </a>
                </li>
            </ul>
        </li>
  </ul>
</div>