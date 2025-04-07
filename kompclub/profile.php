<?php

session_start();

include 'temp/header.php';
include 'temp/dbconnect.php';
include 'temp/navbar.php';


$id_user = $_SESSION['id_user'];
$stmt = $mysqli->prepare("SELECT * FROM userss WHERE id = ?");
$stmt->bind_param("i", $id_user);
$stmt->execute();
$result = $stmt->get_result();
$user = $result->fetch_assoc();

if (!$user) {
    session_destroy();
    header("Location: login.php");
    exit();
}
?>