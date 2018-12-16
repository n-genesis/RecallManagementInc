<?php
class ControllerAccountHeader extends Controller {
	public function index() {
		// Analytics
		$this->load->model('extension/extension');

		$data['analytics'] = array();

		$analytics = $this->model_extension_extension->getExtensions('analytics');

		foreach ($analytics as $analytic) {
			if ($this->config->get($analytic['code'] . '_status')) {
				$data['analytics'][] = $this->load->controller('analytics/' . $analytic['code'], $this->config->get($analytic['code'] . '_status'));
			}
		}

		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {
			$this->document->addLink($server . 'image/favcon.png', 'icon');
		}

		$data['title'] = $this->document->getTitle();

		$data['base'] = $server;
		$data['description'] = $this->document->getDescription();
		$data['keywords'] = $this->document->getKeywords();
		$data['links'] = $this->document->getLinks();
		$data['styles'] = $this->document->getStyles();
		$data['scripts'] = $this->document->getScripts();
		$data['lang'] = $this->language->get('code');
		$data['direction'] = $this->language->get('direction');

		$data['name'] = $this->config->get('config_name');

		if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
			$data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$data['logo'] = '';
		}

		$this->load->language('account/header');

		$data['text_home'] = $this->language->get('text_home');


		$data['text_account'] = $this->language->get('text_account');
        $data['text_support_title'] = $this->language->get('text_support_title');
        $data['test_support_desk'] = $this->language->get('test_support_desk');
        $data['text_message_us'] = $this->language->get('text_message_us');
		$data['text_login'] = $this->language->get('text_login');
		$data['text_submited_claim'] = $this->language->get('text_submited_claim');
		$data['text_download'] = $this->language->get('text_download');
		$data['text_logout'] = $this->language->get('text_logout');
		$data['text_address'] = $this->language->get('text_address');
        
        //Notifications
        $this->load->model('account/notification');
        
        $new_notifications = $this->model_account_notification->getNewHistoryEntryTotal();
        
        if($new_notifications > 0){
            $data['text_notification'] = sprintf($this->language->get('text_new_notification'),$new_notifications);
        }else{
            $data['text_notification'] = $this->language->get('text_notification');
        }
		
        $data['text_edit_account'] = $this->language->get('text_edit_account');

		$data['home'] = $this->url->link('common/home');
		$data['edit_account'] = $this->url->link('account/edit', '', true);
		$data['account'] = $this->url->link('account/account', '', true);
		$data['login'] = $this->url->link('account/login', '', true);
		$data['claims'] = $this->url->link('account/claim', '', true);
        $data['notification'] = $this->url->link('account/notification', '', true);
		$data['download'] = $this->url->link('account/download', '', true);
		$data['logout'] = $this->url->link('account/logout', '', true);
		$data['contact'] = $this->url->link('account/account_contact');
        $data['support_desk'] = $this->url->link('support_desk/support_desk', '', true);
		$data['telephone'] = $this->config->get('config_telephone');
        $data['stp_telephone'] = str_replace(array('(',')','-',' '), '', $this->config->get('config_telephone'));

		return $this->load->view('account/header', $data);
	}
}
