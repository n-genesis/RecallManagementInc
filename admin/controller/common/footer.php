<?php
class ControllerCommonFooter extends Controller {
	public function index() {
		//Just output template for now
		return $this->load->view('common/footer');
	}
}
