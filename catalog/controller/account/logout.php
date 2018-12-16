<?php
class ControllerAccountLogout extends Controller {
	public function index() {
		if ($this->customer->isLogged()) {
			$this->customer->logout();

			unset($this->session->data['viewed_notification_page']);
            unset($this->session->data['viewed_support_desk_page']);
			unset($this->session->data['comment']);

			$this->response->redirect($this->url->link('account/logout', '', true));
		}

		$this->load->language('account/logout');
        
        //Redirect
        $this->session->data['success'] = $this->language->get('text_message');
        $this->response->redirect($this->url->link('account/login', '', true));
        
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

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_logout'),
			'href' => $this->url->link('account/logout', '', true)
		);

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_message'] = $this->language->get('text_message');

		$data['button_continue'] = $this->language->get('button_continue');

		$data['continue'] = $this->url->link('common/home');

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
        
		//$this->response->setOutput($this->load->view('account/logout', $data));
	}
}
