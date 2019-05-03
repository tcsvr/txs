<?php
header('content-type:text/html; charset=utf-8');


session_start();
//包含函数库文件
include('include/function.php');

if(!isset($_SESSION['islog']) || empty($_SESSION['islog'])){
    alert('请先登陆','login.php');
}

//包含配置文件
include('include/config.php');
include_once('include/page/page.php');


// 连接数据库
$con = mysql_connect($hostname,$dbusername,$dbpassword)or die('链接失败！');
//设置编码
mysql_set_charset($dbcharset);
//选择数据库
mysql_select_db($dbtable)or die('选择失败！');


//操作数据库


//侧边栏  案例分类
$sql = "SELECT * FROM tv_rec_class ORDER BY rl_id ASC";
$reclass = getAll($sql);

$sql = "SELECT * FROM tv_new_class ORDER BY nl_id ASC";
$newclass = getAll($sql);

//获取分类id
$rlid = isset($_GET['rlid'])?$_GET['rlid']:1;

$nlid = isset($_GET['nlid'])?$_GET['nlid']:1;

//获取分类名称
$sql = "SELECT * FROM tv_rec_class WHERE rl_id={$rlid}";
$rlname = getOne($sql);

$sql = "SELECT * FROM tv_new_class WHERE nl_id={$nlid}";
$nlname = getOne($sql);





// pre($_POST);




?>