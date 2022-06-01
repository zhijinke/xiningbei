<?php
	require './common/db.php';
	require './common/function.php';
	$gamelist=db_fetch("select * from game  limit 4");
	require './gamelist.html';
?>