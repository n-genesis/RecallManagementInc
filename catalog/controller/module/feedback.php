<?php
class ControllerModuleFeedback extends Controller {
	public function index() {
		$this->load->language('module/feedback');

		$data['heading_title'] = $this->language->get('heading_title');
        
		$data['logged'] = $this->customer->isLogged();
        $data['text_feedback_title'] = $this->language->get('text_feedback_title');
		$data['text_hear_from_you'] = $this->language->get('text_hear_from_you');

		return $this->load->view('module/feedback', $data);
	}
}