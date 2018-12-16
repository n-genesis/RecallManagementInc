<?php
class ModelAccountNotification extends Model {
	public function getCustomerHistory($customer_history_id) {
		$query = $this->db->query("SELECT CH.customer_history_id, CH.customer_id, CH.title, CH.comment, CH.date_added, CH.mark_as_read, CH.user_id, U.firstname, U.lastname, U.username, U.email, U.image, UG.name as cs_title FROM `customer_history`CH INNER JOIN user U INNER JOIN user_group UG WHERE U.user_group_id = UG.user_group_id && CH.user_id = U.user_id &&`customer_history_id` = '". $customer_history_id ."' && customer_id = '" . (int)$this->customer->getId() . "'");
        
    $this->db->query("UPDATE `customer_history` SET `mark_as_read`= 1 WHERE `customer_history_id` = '". $customer_history_id ."' && customer_id = '" . (int)$this->customer->getId() . "'");
    
		return $query->row;
	}

	public function getCustomerHistories($start = 0, $limit = 20) {
		if ($start < 0) {
			$start = 0;
		}

		if ($limit < 1) {
			$limit = 1;
		}

		$query = $this->db->query("SELECT CH.customer_history_id, CH.customer_id, CH.title, CH.comment, CH.date_added, CH.mark_as_read, CH.user_id, U.firstname, U.lastname, U.username, U.email, U.image, UG.name as cs_title FROM `customer_history`CH INNER JOIN user U INNER JOIN user_group UG WHERE U.user_group_id = UG.user_group_id && CH.user_id = U.user_id && customer_id = '" . (int)$this->customer->getId() . "'  ORDER BY date_added DESC LIMIT " . (int)$start . "," . (int)$limit);

		return $query->rows;
	}
	
	public function getCustomerHistoryTotal() {
        $query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "customer_history` WHERE customer_id = '" . (int)$this->customer->getId() . "'");

        return $query->row['total'];
    }
    
    public function getNewHistoryEntryTotal() {
        $query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "customer_history` WHERE `mark_as_read` < 1 && customer_id = '" . (int)$this->customer->getId() . "'");

        return $query->row['total'];
    }
    
    public function getNewestHistoryEntry(){
        $query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "customer_history` WHERE `mark_as_read` < 1 && customer_id = '" . (int)$this->customer->getId() . "'  ORDER BY `date_added` DESC LIMIT 1");

        return $query->row;
    }

}