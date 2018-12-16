<?php
class ControllerAccountLiveCustomerSupport extends Controller {
	public function index() {
		
	}

	public function adminLoggedIn() {
	    $this->load->language('account/live_customer_support');

        $json = array();

        if ($this->user->isOnline()) {
            /*
             * Quick fix for not showing alert on support page
             * by checking if a session value is set
             */
            if(!empty($this->session->data['viewed_support_desk_page'])){
                $json['viewed'] = 'yes';
            }
            $json['admin_loggedin'] = 'yes';
            $json['message'] = sprintf($this->language->get('text_support_message'), $this->url->link('account/support_desk', '', true));
        } else {
            $json['admin_loggedin'] = 'no';
        }

        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
	}
}