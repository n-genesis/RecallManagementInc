<?php
class ControllerSupportdeskRepProfile extends Controller {
	private $error = array();
    
	public function index() {
		$this->load->language('support_desk/rep_profile');
        
        if (!$this->customer->isLogged()) {
            $this->session->data['redirect'] = $this->url->link('support_desk/support_desk', '', true);
            $this->session->data['info_notice'] = sprintf($this->language->get('info_notice'),$this->url->link('account/register', '', true));

            $this->response->redirect($this->url->link('account/login', '', true));
            
        }

		$this->document->setTitle($this->language->get('heading_title'));


		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);
        
        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_account'),
            'href'      => $this->url->link('account/account', '', true)
        );
        
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_support_desk'),
            'href' => $this->url->link('support_desk/support_desk')
        );
        
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
            'href' => 'javascript:void(0)'
		);

		$data['heading_title'] = $this->language->get('heading_title');
    
        $this->load->model('support_desk/support_desk');
        
        $user_information = $this->model_support_desk_support_desk->repProfile($this->request->get['username']);
        
        if(!empty($user_information) && !empty($this->request->get['username'])){
            
            $data['breadcrumbs'][] = array(
                'text' => $user_information['firstname']. ' '. $user_information['lastname'],
                'href' => 'javascript:void(0)'
            );
        
            $this->load->model('tool/image');

            if ($user_information['image']) {
                $rep_avatar = $this->model_tool_image->resize($user_information['image'],260,260);
            } else {
                if($this->request->server['HTTPS']) {
                    $rep_avatar = $this->config->get('config_ssl') . 'image/user_avatar/user-avatar-blue.png';
                }else {
                    $rep_avatar = $this->config->get('config_url') . 'image/user_avatar/user-avatar-blue.png';
                }
            }

            $data['user_info'] = array();
            
            $data['user_info'] = array(
                'rep_username' => $user_information['username'],
                'rep_fullname' => $user_information['firstname']. ' '. $user_information['lastname'],
                'rep_email' => $user_information['email'],
                'rep_avatar' => $rep_avatar
            );
        }else{
            
        }

		

		$data['fax'] = $this->config->get('config_fax');
		$data['open'] = nl2br($this->config->get('config_open'));
		$data['comment'] = $this->config->get('config_comment');


		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('account/header');

		$this->response->setOutput($this->load->view('support_desk/rep_profile', $data));
	}
}
