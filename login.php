<?php
session_start();
include('config.php');
$username = $_POST['username'];
$password = hash("haval224,3", $_POST['password']);
if($username == '' || $password == ''){
    header("location: loginredirect.php");
}
try{
$db = $conn->prepare("SELECT * FROM student_details where STUDENT_ID = :username AND PASSWORD = :password");
$db->bindValue(':username', $username);
$db->bindValue(':password', $password);
$db->execute();
$rows = $db->fetch(PDO::FETCH_ASSOC);
$failed = '<i>Invalid Username/Password. Please try again.</i>';
if($rows > 0){
    header("location: dashboardfiles/dashboard.php");
    $_SESSION['username'] = $username;
    $_SESSION['password'] = $password;
    $_SESSION['fullname'] = $rows['LASTNAME']. ', '. $rows['FIRSTNAME'];
}else{
    $_SESSION['FAILED'] = $failed;
    session_write_close();
    header("location: loginredirect.php");
    exit;
}
}catch(PDOException $e){
    $e->getMessage();
    $conn = null;
}



