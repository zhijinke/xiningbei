<?php
//获取数据库连接
function db_connect(){
	static $conn=null;
	if(!$conn){
		$ini=parse_ini_file("db.ini");
		$conn=@mysqli_connect($ini['db_host'].":".$ini['db_port'],$ini['db_user'],$ini['db_pass'],$ini['db_name']);
		//选择当前数据库
		//设置数据库返回数据字符集  
		mysqli_set_charset($conn,$ini['charset']);
	}
	return $conn;
}
	/*
	 *执行sql语句（增删改）
	 *@params $sql string 待执行的sql语句模板
	 *@params $type string  参数替换的类型字符串
	 *@params $params array 参数值数组
	 *@return 预处理对象
	 */
	function db_stmy_exec( $sql, $type='', $params=[]){
		//sql语句  类型 传入的参数
		$conn=db_connect();
		$stmt = $conn->prepare($sql);
		if($params!=[]){
			$params=(array) $params;
			//准备参数
			$p=[$type];
			foreach ($params as &$p[]){
			}
			//绑定
			call_user_func_array(array($stmt,'bind_param'),$p);
		}
		$stmt->execute();
		return $stmt;
	}
	/*
	 *执行sql语句（查询）
	 *@params $sql string 待执行的sql语句模板
	 *@params $mode integer 查询返回的结果类模型数字 0：获取结果集的关联数组（全部）
	 * 											1：获取所在结果集的关联数组（一行）
	 * 											2：获取所在结果集的索引数组（一行）
	 *@params $type string  参数替换的类型字符串
	 *@params $params array 参数值数组
	 *@return 结果集的数组
	 */
	function db_fetch( $sql,$mode=0, $type='', $params=[]){
		//执行预处理
		
	$stmt = db_stmy_exec($sql, $type, $params);//获取预处理对象
	//获取结果集
	$result =$stmt->get_result();
	//根据指定格式返回数据
	switch($mode){
		case 1:	
			return $result->fetch_assoc();
		case 2:	
			return current($result->fetch_row());
		default:		
			return $result->fetch_all( MYSQLI_ASSOC);
	}
}
?>