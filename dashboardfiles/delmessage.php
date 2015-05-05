<?php
session_start();
require_once ('../config.php');
$ID1 = $_SESSION['FID'];
$ID = $_GET['ID'];
$sql = $conn->query("DELETE  FROM message_details where ID = '$ID' ");
$sql->execute();
?>
