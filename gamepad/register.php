<?php
	require './common/db.php';
	require './common/function.php';
	//获取用户输入
	$phone=getData('phone','post');
	$user=getData('user','post');
	$psw=getData('psw','post');
	$psws=getData('psws','post');
	$code=getData('code','post');
		//验证是否全部输入
		if($phone==''){
			$msg='请输入手机号';
			require './register.html';
		}else if($user==''){
			$msg='请输入用户名';
			require './register.html';
		}else if($psw==''){
			$msg='请输入密码';
			require './register.html';
		}else if($psws==''){
			$msg='请确认密码';
			require './register.html';
		}else if($psws!=$psw){
			$msg='两次密码不一致，请重新确认密码';
			require './register.html';
		}else if($code==''){
			$msg='请输入验证码';
			require './register.html';
		}else{
			$sql2='insert into user(username,password,phone) values(?,?,?)';
			db_stmy_exec($sql2,'sss',[$user,$psws,$phone]);
			$msg='注册成功，请前往登录';
			require './register.html';
		}

?>
	<!--$sql="select * from student where phone=? and password=?";
	$r=db_fetch($sql,0,'ss',[$name,$pass]);
	if($r!=null){//登陆成功
		//echo '登录成功';
//		header("location:index.php");
//		$stuno=$r[0]['stuno'];
		require './index.html';//加载抽题页面
	}else{//登录失败
		$msg='用户名或密码错误';
		require './login.html';
//		echo "错误";
	 }-->