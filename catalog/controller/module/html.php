<?php
class ControllerModuleHTML extends Controller {
	public function index($setting) {
		if (isset($setting['module_description'][$this->config->get('config_language_id')])) {
			$data['heading_title'] = html_entity_decode($setting['module_description'][$this->config->get('config_language_id')]['title'], ENT_QUOTES, 'UTF-8');
			$data['html'] = html_entity_decode($setting['module_description'][$this->config->get('config_language_id')]['description'], ENT_QUOTES, 'UTF-8');
            if (isset($this->request->get['route'])) {
            if (isset($this->request->get['information_id']) && $this->customer->isLogged()) {
                $data['hide_if_logged'] = true;
            }
        } 
			return $this->load->view('module/html', $data);
		}
	}
}