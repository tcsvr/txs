<?php
include('include/init.php');

$islog = isset($_COOKIE['islog'])?$_COOKIE['islog']:'';
if(!$islog){
	echo '请先登录';
	header('location:login.php');
}else{
    $uid = $_COOKIE['uid'];
    $mysql->sql = "SELECT * FROM tv_user WHERE u_id = '{$uid}'";
    $userinfo = $mysql->getOne();
}
// pre($userinfo);



include('view/user_info.html');
?>