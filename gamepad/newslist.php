<?php
	require './common/db.php';
	require './common/function.php';
	$newslist=db_fetch("select * from news order by time desc  limit 6");
	$news=db_fetch("select * from news  order by id limit 8");
	require './newslist.html';
?>