<?php
class ControllerCommonProfile extends Controller {
	public function index() {
		$this->load->language('common/profile');
		$data['text_logout'] = $this->language->get('text_logout');
		$data['text_profile'] = $this->language->get('text_profile');

		$this->load->model('user/user');

		$this->load->model('tool/image');

		$user_info = $this->model_user_user->getUser($this->user->getId());

		if ($user_info) {
			$data['firstname'] = $user_info['firstname'];
			$data['lastname'] = $user_info['lastname'];
			$data['username'] = $user_info['username'];

			$data['user_group'] = $user_info['user_group'] ;

			if (is_file(DIR_IMAGE . $user_info['image'])) {
				$data['image'] = $this->model_tool_image->resize($user_info['image'], 45, 45);
			} else {
				$data['image'] = '';
			}
		} else {
			$data['username'] = '';
			$data['image'] = '';
		}

		$data['profile'] = $this->url->link('user/user/edit', 'token=' . $this->session->data['token'] . '&user_id=' . $this->user->getId(), true);
		$data['logout'] = $this->url->link('common/logout', 'token=' . $this->session->data['token'], true);

		return $this->load->view('common/profile', $data);
	}
}
