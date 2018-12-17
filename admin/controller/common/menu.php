<?php
class ControllerCommonMenu extends Controller {
	public function index() {
		$this->load->language('common/menu');

		$data['text_dashboard'] = $this->language->get('text_dashboard');
		$data['text_website_options'] = $this->language->get('text_website_options');
		$data['text_layout'] = $this->language->get('text_layout');
		$data['text_articles'] = $this->language->get('text_articles');
		$data['text_modules'] = $this->language->get('text_modules');
		$data['text_page_layouts'] = $this->language->get('text_page_layouts');
		$data['text_site_themes'] = $this->language->get('text_site_themes');
		$data['text_seo'] = $this->language->get('text_seo');
		$data['text_analytics'] = $this->language->get('text_analytics');
		$data['text_captcha'] = $this->language->get('text_captcha');
		$data['text_rss_feeds'] = $this->language->get('text_rss_feeds');
		$data['text_customer_center'] = $this->language->get('text_customer_center');
		$data['text_customers'] = $this->language->get('text_customers');
		$data['text_customers_online'] = $this->language->get('text_customers_online');
		$data['text_customer_activity'] = $this->language->get('text_customer_activity');
		$data['text_customer_groups'] = $this->language->get('text_customer_groups');
		$data['text_support_desk'] = $this->language->get('text_support_desk');
		$data['text_messages'] = $this->language->get('text_messages');
		$data['text_system'] = $this->language->get('text_system');
		$data['text_settings'] = $this->language->get('text_settings');
		$data['text_languages'] = $this->language->get('text_languages');
		$data['text_countries'] = $this->language->get('text_countries');
		$data['text_zones'] = $this->language->get('text_zones');
		$data['text_users'] = $this->language->get('text_users');
		$data['text_user_groups'] = $this->language->get('text_user_groups');
		$data['text_application'] = $this->language->get('text_application');
		$data['text_newsletter'] = $this->language->get('text_newsletter');
		$data['text_assignment_statuses'] = $this->language->get('text_assignment_statuses');
		$data['text_tools'] = $this->language->get('text_tools');
		$data['text_uploads'] = $this->language->get('text_uploads');
		$data['text_error_log'] = $this->language->get('text_error_log');
		


		$data['home'] = $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true);

		$data['website_option_articles'] = $this->url->link('website/layout_articles', 'token=' . $this->session->data['token'], true);

		$data['analytics'] = $this->url->link('extension/analytics', 'token=' . $this->session->data['token'], true);
		$data['backup'] = $this->url->link('tool/backup', 'token=' . $this->session->data['token'], true);
		$data['captcha'] = $this->url->link('extension/captcha', 'token=' . $this->session->data['token'], true);

		$data['country'] = $this->url->link('localisation/country', 'token=' . $this->session->data['token'], true);
		$data['contact'] = $this->url->link('marketing/contact', 'token=' . $this->session->data['token'], true);

		$data['customer'] = $this->url->link('customer/customer', 'token=' . $this->session->data['token'], true);
		$data['report_customer_activity'] = $this->url->link('report/customer_activity', 'token=' . $this->session->data['token'], true);
		$data['report_customer_online'] = $this->url->link('report/customer_online', 'token=' . $this->session->data['token'], true);
		$data['customer_groups'] = $this->url->link('customer/customer_group', 'token=' . $this->session->data['token'], true);

		$data['download'] = $this->url->link('catalog/download', 'token=' . $this->session->data['token'], true);
		$data['error_log'] = $this->url->link('tool/error_log', 'token=' . $this->session->data['token'], true);
		$data['feed'] = $this->url->link('extension/feed', 'token=' . $this->session->data['token'], true);
		
		$data['geo_zone'] = $this->url->link('localisation/geo_zone', 'token=' . $this->session->data['token'], true);
		$data['information'] = $this->url->link('catalog/information', 'token=' . $this->session->data['token'], true);
		
		$data['language'] = $this->url->link('localisation/language', 'token=' . $this->session->data['token'], true);
		$data['layout_modules'] = $this->url->link('design/layout', 'token=' . $this->session->data['token'], true);
		$data['location'] = $this->url->link('localisation/location', 'token=' . $this->session->data['token'], true);
		
		

		$data['user'] = $this->url->link('user/user', 'token=' . $this->session->data['token'], true);
		$data['user_groups'] = $this->url->link('user/user_permission', 'token=' . $this->session->data['token'], true);
		
		$data['current_route'] = $this->request->get['route'];

		return $this->load->view('common/menu', $data);
	}
}
