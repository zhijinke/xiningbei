<?php
function getData($var, $method, $type='string', $default=''){
	switch($method){
		case 'get':    $method = $_GET;    break;
		case 'post':   $method = $_POST;   break;
	}
	$value = isset($method[$var]) ? $method[$var] : $default;
	switch($type){
		case 'string': //字符串 不进行过滤
			$value = is_string($value) ? $value : '';
		break;
		case 'int': //整数
			$value = (int)$value;
		break;
		case 'float': //浮点数
			$value = (float)$value;
		break;
		case 'id': //无符号整数
			$value = max((int)$value, 0);
		break;
		case 'bool': //布尔型
			$value = (bool)$value;
		break;	
		case 'array': //数组型
			$value = is_array($value) ? $value : [];
		break;
		case 'html': //字符串 进行HTML转义
			$value = str_replace(' ','&nbsp;',trim(htmlspecialchars($value)));
		break;
	}
	return $value;
}
?>