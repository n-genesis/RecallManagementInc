<?php
class ModelSupportDeskSupportDesk extends Model {
	public function repProfile($rep_username) {
		$query = $this->db->query("SELECT U.firstname, U.lastname, U.username, U.email, U.image, U.is_logged, UG.name as cs_title FROM user U INNER JOIN user_group UG WHERE U.user_group_id = UG.user_group_id && U.username = '". $rep_username ."'");
    
		return $query->row;
	}

	
}
?>