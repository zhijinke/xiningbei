<?php
	require 'init.php';
	//修改
//	$id=getData('id','get','int');
	//删除
	//获取删除时的id
	$id=getData('id','get','int');
	if($id!=''){//如果ID不等于空
		//sql删除语句
	$sql='delete from game where id=?';
	db_stmy_exec($sql,'i',[$id]);
	}
	//遍历数据库的判断题
	$games=db_fetch('select * from game');
	require './gamelist.html';
?>