<?php
	session_start();
	$name=$_SESSION['usename'];
	if(!isset($name)){
		header('location:./login.php');
		
	}
	require '../common/db.php';
	require '../common/function.php';
	
?>