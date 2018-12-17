<?php
class ControllerCommonColumnLeft extends Controller {
	public function index() {
		$this->load->language('common/footer');

		$data['text_footer'] = $this->language->get('text_footer');
		$data['text_version'] = sprintf($this->language->get('text_version'), VERSION);
		
		if (isset($this->request->get['token']) && isset($this->session->data['token']) && ($this->request->get['token'] == $this->session->data['token'])) {
			$data['profile'] = $this->load->controller('common/profile');
			$data['menu'] = $this->load->controller('common/menu');

			return $this->load->view('common/column_left', $data);
		}
		
	}
}