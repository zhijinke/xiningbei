<?php
	require 'init.php';
	$a=getData('a','get','int');
	$id=getData('id','get','int');//获取id
	if($a==1){//
		    $name=isset($_POST['name'])?$_POST['name']:[];
			$price=isset($_POST['price'])?$_POST['price']:[];
			$imgsrc=isset($_POST['imgsrc'])?$_POST['imgsrc']:[];
			$introduce=isset($_POST['introduce'])?$_POST['introduce']:[];
			$sale=isset($_POST['sale'])?$_POST['sale']:[];
			$language=getData('language','post','array');
			$language=implode('',$language);
		    if(!empty($name)&&!empty($price)&&!empty($imgsrc)&&!empty($introduce)&&!empty($sale)&&!empty($language)){
		    	if($id==0){
		    		$sql='insert into game(name,price,imgsrc,introduce,sale,language) values(?,?,?,?,?,?)';	
				    db_stmy_exec($sql,'ssssss',[$name,$price,$imgsrc,$introduce,$sale,$language]);
				    $tip='添加成功';
		    	}else{
		    		$sql2='update game set name=?,price=?,imgsrc=?,introduce=?,sale=?,language=? where id=?';	
				    db_stmy_exec($sql2,'ssssssi',[$name,$price,$imgsrc,$introduce,$sale,$language,$id]);
				    $tip='修改成功';
		    	}
			}else{
				$tip='请全部输入选项';
			}		
	}else{
		$sql1='select * from game where id=?';
		$game=db_fetch($sql1,1,'i',[$id]);
		//var_dump($game);
		
	}
	
	require './game.html';
?>