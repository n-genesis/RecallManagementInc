<?php
class ControllerAccountNotification extends Controller {
	public function index() {
		if (!$this->customer->isLogged()) {
			$this->session->data['redirect'] = $this->url->link('account/order', '', true);

			$this->response->redirect($this->url->link('account/login', '', true));
		}

		$this->load->language('account/notification_list');

		$this->document->setTitle($this->language->get('heading_title'));
		
        /**
         * Set session when page is view to hide
         * alert UI
         */
        $this->session->data['viewed_notification_page'] = true;
        
		$url = '';

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
		
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
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('account/notification', $url, true)
		);

		$data['heading_title'] = $this->language->get('heading_title');
        
        $this->load->model('account/notification');
        
        $new_notification_total = $this->model_account_notification->getNewHistoryEntryTotal();
        
        if(!empty($new_notification_total)){
           $data['text_inbox_title'] = sprintf($this->language->get('text_inbox_new_title'),$new_notification_total); 
        }else {
            $data['text_inbox_title'] = $this->language->get('text_inbox_title'); 
        }

        $data['inbox'] = $this->url->link('account/notification','',true);
        
        if (isset($this->request->get['page'])) {
            $page = $this->request->get['page'];
        } else {
            $page = 1;
        }

		$data['notifications'] = array();
    
        $this->load->model('tool/image');

        

        $notification_total = $this->model_account_notification->getCustomerHistoryTotal();

        $results = $this->model_account_notification->getCustomerHistories(($page - 1) * 10, 10);

        foreach ($results as $result) {
            if($result['image']) {
                $admin_avatar = $this->model_tool_image->resize($result['image'],60,60);
            } else {
                if($this->request->server['HTTPS']) {
                    $admin_avatar = $this->config->get('config_ssl') . 'image/user_avatar/user-avatar-blue.png';
                }else {
                    $admin_avatar = $this->config->get('config_url') . 'image/user_avatar/user-avatar-blue.png';
                }
            }

            $data['notifications'][] = array(
                'customer_history_id'   => $result['customer_history_id'],
                'customer_id'       => $result['customer_id'],
                'title'     => $result['title'],
                'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
                'short_comment'   => substr($result['comment'],0,250),
                'mark_as_read'  =>  $result['mark_as_read'],
                'cs_firstname' => $result['firstname'],
                'cs_lastname' => $result['lastname'],
                'cs_avatar' => $admin_avatar,
                'cs_title' => $result['cs_title'],
                'cs_username' => $result['username'],
                'cs_email' => $result['email'],
                'link'  => $this->url->link('account/notification/notification_message','notification_id='.$result['customer_history_id'], true)
            );
        }

        $pagination = new Pagination();
        $pagination->total = $notification_total;
        $pagination->page = $page;
        $pagination->limit = 10;
        $pagination->url = $this->url->link('account/notification', 'page={page}', true);

        $data['pagination'] = $pagination->render();

        $data['results'] = sprintf($this->language->get('text_pagination'), ($notification_total) ? (($page - 1) * 10) + 1 : 0, ((($page - 1) * 10) > ($notification_total - 10)) ? $notification_total : ((($page - 1) * 10) + 10), $notification_total, ceil($notification_total / 10));

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['footer'] = $this->load->controller('account/footer');
		$data['header'] = $this->load->controller('account/header');

		$this->response->setOutput($this->load->view('account/notification_list', $data));
	}

	public function getNewNotifications() {
	    $this->load->language('account/notification_list');
        $this->load->model('account/notification');

        $notification_total = $this->model_account_notification->getNewHistoryEntryTotal();
        
        $json = array();

        if ($notification_total > 0) {
            $json['new'] = 'yes';
            $json['message'] = sprintf($this->language->get('text_new_notification_message'), $notification_total, $this->url->link('account/notification', '', true));
            /*
             * Quick fix for not showing alert on notification page
             * by checking if a session value is set
             */
            if(!empty($this->session->data['viewed_notification_page'])){
                $json['viewed'] = 'yes';
            }
            
        } else {
            $json['new'] = 'no';
        }

        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
	}
    
    public function getNewestNotification(){
        $this->load->language('account/notification_list');
        $this->load->model('account/notification');

        $result = $this->model_account_notification->getNewestHistoryEntry();
        $data = array();
        
        if(!empty($result)){
        
        $data['text_new_notification_title'] =  sprintf($this->language->get('text_new_notification_title'), $this->model_account_notification->getNewHistoryEntryTotal());
        
        $data['notifications'] = array(
            'customer_history_id'   => $result['customer_history_id'],
            'customer_id'       => $result['customer_id'],
            'title'     => $result['title'],
            'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
            'short_comment'   => substr($result['comment'],0,250),
            'mark_as_read'  =>  settype($result['mark_as_read'], "integer"),
            'link'  => $this->url->link('account/notification/notification_message','notification_id='.$result['customer_history_id'], true)
            );
        }
        return $this->load->view('account/dashboard_notification', $data);
    }

    public function notification_message() {

        $this->load->language('account/notification_message');

        
        if (isset($this->request->get['notification_id'])) {
            $notification_id = $this->request->get['notification_id'];
        } else {
            $notification_id = 0;
        }
        
        $this->load->model('account/notification');
        $result = $this->model_account_notification->getCustomerHistory($notification_id);
        
        if($notification_id && !empty($result)){
    
            $new_notification_total = $this->model_account_notification->getNewHistoryEntryTotal();
            if(!empty($new_notification_total)){
               $data['text_inbox_title'] = sprintf($this->language->get('text_inbox_new_title'),$new_notification_total); 
            }else {
                $data['text_inbox_title'] = $this->language->get('text_inbox_title'); 
            }
            $data['inbox'] = $this->url->link('account/notification','',true);

            $this->document->setTitle(sprintf($this->language->get('page_title'),$result['title']));
            $this->document->setDescription($this->language->get('event_description'));
             
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
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('account/notification', '', true)
            );
            
            $data['breadcrumbs'][] = array(
                'text' => $result['title'],
                'href' => $this->url->link('account/notification/notification_message','notification_id=' . $notification_id,true)
            );
            
            $this->load->model('tool/image');

            if ($result['image']) {
                $admin_avatar = $this->model_tool_image->resize($result['image'],60,60);
            } else {
                if($this->request->server['HTTPS']) {
                    $admin_avatar = $this->config->get('config_ssl') . 'image/user_avatar/user-avatar-blue.png';
                }else {
                    $admin_avatar = $this->config->get('config_url') . 'image/user_avatar/user-avatar-blue.png';
                }
            }
            
            
            $data['notification'] = array();

            $data['notification'] = array(
                'customer_history_id'   => $result['customer_history_id'],
                'customer_id'       => $result['customer_id'],
                'title'     => $result['title'],
                'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
                'comment'   => nl2br($result['comment']),
                'mark_as_read'  =>  $result['mark_as_read'],
                'cs_firstname' => $result['firstname'],
                'cs_lastname' => $result['lastname'],
                'cs_avatar' => $admin_avatar,
                'cs_title' => $result['cs_title'],
                'cs_username' => $result['username'],
                'cs_profile' => $this->url->link('support_desk/rep_profile', 'username='. $result['username'], true),
                'cs_email' => $result['email']
            );

    
            $data['column_left'] = $this->load->controller('common/column_left');
            $data['column_right'] = $this->load->controller('common/column_right');
            $data['footer'] = $this->load->controller('account/footer');
            $data['header'] = $this->load->controller('account/header');
            
            $this->response->setOutput($this->load->view('account/notification_message', $data));
        }else{
            
        }
    }
    

}