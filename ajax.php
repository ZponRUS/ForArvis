<?
require 'db.php';

$db = new db;
echo json_encode($db->getStaffByBranchId($_POST['id']));