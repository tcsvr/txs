<?php 

header('content-type:text/html; charset=utf-8');
include('include/init.php');

$username = isset($_POST['username'])?trim($_POST['username']):'';
$password = isset($_POST['password'])?md5($_POST['password']):'';


$mysql->sql = "SELECT * FROM tv_user WHERE u_name='{$username}' AND u_password='{$password}'";

// pre($sql);
$result = $mysql->getOne();
// pre($result);


// $log = array();
// if($result && mysql_num_rows($result)>0){
// 	$log = mysql_fetch_assoc($result);
// }

if($result){
	// 登录成功
	// 存登录状态
	setcookie('islog','1');
	// 存用户名
	setcookie('username',$result['u_name']);
	// 存ID
	setcookie('uid',$result['u_id']);
	echo 1;
}else{
	// 登录失败
	echo 0;
}






 ?>