<?php
	session_start();
	//删除session的用户
	unset($_SESSION['usename']);
//	$name=$_SESSION['uname'];
//	echo $name;
	header('location:./login.php');
?>