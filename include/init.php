<?php
header('content-type:text/html; charset=utf-8');
session_start();
include('include/mysql.class.php');
include('include/config.php');
include('include/function.php');
include('include/page.class.php');

$mysql = new mysql('localhost','root','root','tcsvr');

//分类ID
$nlid = isset($_GET['nlid'])?$_GET['nlid']:1;
// //分类数据
$mysql->sql ="SELECT * FROM wd_new_class WHERE nl_id = $nlid";


?>