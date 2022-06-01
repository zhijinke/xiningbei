<?php
	require './common/db.php';
	require './common/function.php';
		//获取用户名和密码
	$name=getData('user','post');
	$pass=getData('password','post');
	if($name==''){//未点登录
		$msg='';
		require './login.html';
	}else{ 
		//验证输入用户名和密码是否正确
	$sql="select * from user where phone=? and password=?";
	$r=db_fetch($sql,0,'ss',[$name,$pass]);
	if($r!=null){//登陆成功
		require './indexlogin.php';//加载首页页面
	}else{//登录失败
		$msg='用户名或密码错误';
		require './login.html';
	 }
	}
?>