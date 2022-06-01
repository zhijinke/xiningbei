<?php
	//启动会话
	session_start();
	require '../common/db.php';
	require '../common/function.php';
	//获取管理用户名和密码
	$name=getData('username','post');
	$pass=getData('password','post');
	if($name==''){//未点登录
		$msg='';
		require './login.html';
	}else{ //点登陆
		//验证码验证
		//获取验证码
		$code=$_SESSION['code'];
		//获取用户输入的验证码
		$captcha=getData('captcha','post');
		if($code!=$captcha){//验证码不正确
			$msg='验证输入错误';
			require './login.html';
		}else{
			//验证输入用户名和密码是否正确
		$sql="select * from admin where name=? and password=?";
		$r=db_fetch($sql,0,'ss',[$name,$pass]);		
		if($r!=null){//登陆成功
			$_SESSION['usename']=$name;
			header('location:./index.php');
			echo '登陆成功';
		}else{//登录失败
		$msg='用户名或密码错误';
		require './login.html';
	 }
		}
	
	}
	
?>