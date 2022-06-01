<?php
	require 'init.php';
	//添加
	//获取用户输入
	$users=isset($_POST['add'])?$_POST['add']:[];
	if(!empty($users)){
		$sql2='insert into user(username,password,phone) values(?,?,?)';
		//遍历$students,添加考生至数据库
		foreach ($users as $v){
		db_stmy_exec($sql2,'sss',[$v['username'],'123',$v['phone']]);
		}
	}
	//删除
	//获取删除时的id
	$id=getData('id','get','int');
	if($id!=''){//如果ID不等于空
		//sql删除语句
	$sql='delete from user where id=?';
	db_stmy_exec($sql,'i',[$id]);
	}
	//从数据库获取用户信息
	$user=db_fetch('select * from user');
	require './user.html';
?>