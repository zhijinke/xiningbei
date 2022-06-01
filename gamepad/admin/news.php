<?php
	require 'init.php';
	//获取用户
	$a=getData('a','get','int');
	$id=getData('id','get','int');//获取题目id
	if($a==1){//点击保存
		$title=isset($_POST['title'])?$_POST['title']:[];
		$time=isset($_POST['time'])?$_POST['time']:[];
		$con=isset($_POST['con'])?$_POST['con']:[];
		$imgsrc=isset($_POST['imgsrc'])?$_POST['imgsrc']:[];
		if(!empty($title)&&!empty($time)&&!empty($con)&&!empty($imgsrc)){
		    if($id==0){
		    	$sql='insert into news(title,time,con,imgsrc) values(?,?,?,?)';	
				db_stmy_exec($sql,'ssss',[$title,$time,$con,$imgsrc]);
				$tip='添加成功';
		    }else{
		    		$sql='update news set title=?,time=?,con=?,imgsrc=? where id=?';	
				    db_stmy_exec($sql,'ssssi',[$title,$time,$con,$imgsrc,$id]);
				    $tip='修改成功';
		    }	  
		}else{
				$tip='请全部输入选项';
		}	
	}else{
		$sql1='select * from news where id=?';
		$news=db_fetch($sql1,1,'i',[$id]);
	}	    
	require './news.html';
?>