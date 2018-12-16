<?php
class ControllerModuleAccountCustomerService extends Controller {
	public function index() {
		$this->load->language('module/account_customer_service');

		$data['heading_title'] = $this->language->get('heading_title');
        $data['text_customer_service_title'] = $this->language->get('text_customer_service_title');
        $data['text_customer_service_message'] = $this->language->get('text_customer_service_message');
        $data['text_support_desk'] = $this->language->get('text_support_desk');
        
		$data['logged'] = $this->customer->isLogged();
		$data['support_desk'] = $this->url->link('support_desk/support_desk', '', true);
        $data['stp_telephone'] = str_replace(array('(',')','-',' '), '', $this->config->get('config_telephone'));

		return $this->load->view('module/account_customer_service', $data);
	}
}