<?php

/**
 * \ DB Class
 */
class db{
	
	private $dbname = 'arvis';
	private $dbuser = 'admin';
	private $dbpass = '123456';

	function __construct(){
		require 'rb.php';
		R::setup('mysql:host=localhost;dbname='.$this->dbname, $this->dbuser, $this->dbpass);
	}

	public function getBranchById($id){
		$branch = R::load('branches', $id);
		return $branch;
	}

	public function getAllBranchesIds(){
		$branches = R::getAll('SELECT * FROM branches');
		return $branches;
	}

	// Alphabetet
	public function getStaffByBranchId($id){
		$staff = R::find('staff', ' branch_id = '.$id);
		$array_name = [];
		foreach ($staff as $key => $row){
		    $array_name[$key] = $row['fio'];
		}
		array_multisort($array_name, SORT_ASC, $staff);
		return $staff;
	}
}
