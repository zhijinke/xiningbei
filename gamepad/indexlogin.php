<?php
	
//	预约榜
	$subscribe=db_fetch("select * from game where sale='预约中'  limit 5");
	//畅销榜
	$boom=db_fetch("select * from game where sale='已发售'  limit 5");
	//新闻列表
	$newslist=db_fetch("select * from news  order by time desc limit 4");
	//游戏列表
	$games=db_fetch("select * from game  limit 3");
	require './index.html';
?>