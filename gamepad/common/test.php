<?php
require 'db.php';
//$conn=db_connect();
$sql="insert into test(name) values(?)";
db_stmy_exec($sql,'s',['tt1']);
//$sql1="SELECT * from admin";
//$r=db_fetch($sql1);
//var_dump($sql);
?>