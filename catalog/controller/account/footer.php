<?php
class ControllerAccountFooter extends Controller {
	public function index() {
		$this->load->language('account/footer');

		$data['scripts'] = $this->document->getScripts('footer');
        
        //Version notice
        $data['version_notes'] = sprintf($this->language->get('version_notes'),$this->url->link('information/information', 'information_id=5', true));
        
        
		$data['text_information'] = $this->language->get('text_information');
		$data['text_service'] = $this->language->get('text_service');
		$data['text_extra'] = $this->language->get('text_extra');
		$data['text_contact'] = $this->language->get('text_contact');
		$data['text_return'] = $this->language->get('text_return');
		$data['text_sitemap'] = $this->language->get('text_sitemap');
		$data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$data['text_voucher'] = $this->language->get('text_voucher');
		$data['text_affiliate'] = $this->language->get('text_affiliate');
		$data['text_special'] = $this->language->get('text_special');
		$data['text_account'] = $this->language->get('text_account');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_support_desk'] = $this->language->get('text_support_desk');
		$data['text_newsletter'] = $this->language->get('text_newsletter');

		$this->load->model('catalog/information');

		$data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
		}

		$data['contact'] = $this->url->link('information/contact');
		$data['sitemap'] = $this->url->link('information/sitemap');
		$data['account'] = $this->url->link('account/account', '', true);
		$data['claims'] = $this->url->link('account/claim', '', true);
		$data['support_desk'] = $this->url->link('account/support_desk', '', true);
		$data['newsletter'] = $this->url->link('account/newsletter', '', true);
        $data['recall_experience'] = 'recall_experience';
        $data['recall_websites'] = 'recall_websites';
        $data['terms'] = 'terms';
        $data['privacy'] = 'privacy';
        
        $data['telephone'] = $this->config->get('config_telephone');
        $data['fax'] = $this->config->get('config_fax');
        $data['email'] = $this->config->get('config_email');
        
		$data['powered'] = sprintf($this->language->get('text_powered'), date('Y', time()),$this->config->get('config_name'));
        
        $data['site_name'] = $this->config->get('config_name');

		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');

			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];
			} else {
				$ip = '';
			}

			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];
			} else {
				$url = '';
			}

			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];
			} else {
				$referer = '';
			}

			$this->model_tool_online->addOnline($ip, $this->customer->getId(), $url, $referer);
		}

		return $this->load->view('account/footer', $data);
	}
}
