<?php


$host = "localhost";
$username = "root";
$password = "";
global $conn;
try{

$conn = new PDO("mysql:host=localhost;dbname=GRAM", $username, $password);

         $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

}catch(PDOException $e){

            $e->getMessage();
            $conn = null;
}
?>