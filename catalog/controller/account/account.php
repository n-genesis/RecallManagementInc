<?php
class ControllerAccountAccount extends Controller {
	public function index() {
		if (!$this->customer->isLogged()) {
			$this->session->data['redirect'] = $this->url->link('account/account', '', true);

			$this->response->redirect($this->url->link('account/login', '', true));
		}

		$this->load->language('account/account');

		$this->document->setTitle($this->language->get('heading_title'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_account'),
			'href' => $this->url->link('account/account', '', true)
		);

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		} 

		$data['heading_title'] = $this->language->get('heading_title');
        
        $this->load->model('account/customer');
        $customer_info = $this->model_account_customer->getCustomer($this->customer->getId());
        $data['text_username'] = $customer_info['firstname'].' '.$customer_info['lastname'];
        
		$data['text_my_account'] = $this->language->get('text_my_account');
		$data['text_my_newsletter'] = $this->language->get('text_my_newsletter');
		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_password'] = $this->language->get('text_password');
		$data['text_address'] = $this->language->get('text_address');
		$data['text_credit_card'] = $this->language->get('text_credit_card');
		$data['text_download'] = $this->language->get('text_download');
		$data['text_newsletter'] = $this->language->get('text_newsletter');
		$data['text_logout'] = $this->language->get('text_logout');

		$data['edit'] = $this->url->link('account/edit', '', true);
		$data['password'] = $this->url->link('account/password', '', true);
		$data['address'] = $this->url->link('account/address', '', true);
		
		$data['credit_cards'] = array();
		
		$files = glob(DIR_APPLICATION . 'controller/credit_card/*.php');
		
		foreach ($files as $file) {
			$code = basename($file, '.php');
			
			if ($this->config->get($code . '_status') && $this->config->get($code)) {
				$this->load->language('credit_card/' . $code);

				$data['credit_cards'][] = array(
					'name' => $this->language->get('heading_title'),
					'href' => $this->url->link('credit_card/' . $code, '', true)
				);
			}
		}
		
		$data['wishlist'] = $this->url->link('account/wishlist');
		$data['download'] = $this->url->link('account/download', '', true);

		$data['newsletter'] = $this->url->link('account/newsletter', '', true);
		$data['logout'] = $this->url->link('account/logout', '', true);
		
        /**
         * Version notice operation Need to fix
         */
        $data['text_version_notice_title'] = $this->language->get('text_version_notice_title');
        $data['text_version_notice'] = sprintf($this->language->get('text_version_notice'),$this->url->link('information/information', 'information_id=5', true));
        $data['version_notice_token'] = $this->language->get('version_notice_token');
        
        $data['new_notification'] = $this->load->controller('account/notification/getNewestNotification');
        
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('account/footer');
		$data['header'] = $this->load->controller('account/header');
		
		$this->response->setOutput($this->load->view('account/account', $data));
	}

	public function country() {
		$json = array();

		$this->load->model('localisation/country');

		$country_info = $this->model_localisation_country->getCountry($this->request->get['country_id']);

		if ($country_info) {
			$this->load->model('localisation/zone');

			$json = array(
				'country_id'        => $country_info['country_id'],
				'name'              => $country_info['name'],
				'iso_code_2'        => $country_info['iso_code_2'],
				'iso_code_3'        => $country_info['iso_code_3'],
				'address_format'    => $country_info['address_format'],
				'postcode_required' => $country_info['postcode_required'],
				'zone'              => $this->model_localisation_zone->getZonesByCountryId($this->request->get['country_id']),
				'status'            => $country_info['status']
			);
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}
