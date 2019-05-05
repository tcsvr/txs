<?php
include('include/init.php');

// $mysql->sql = "SELECT * FROM tv_rec WHERE rl_id = 4 ORDER BY r_id DESC";

// $recsb = $mysql->getAll();

// pre($recsb);
// 分页类的参数
$current = isset($_GET['page'])?$_GET['page']:1;
$limit = 1;
$start = ($current - 1) * $limit;
$size = 3;
// 获取总条数
$mysql->sql = "SELECT COUNT(r_id) AS count FROM tv_rec WHERE rl_id = 4";
$count = $mysql->getOne();
$count = $count['count'];
// 案例列表
$mysql->sql = "SELECT * FROM tv_rec WHERE rl_id = 4 ORDER BY r_id DESC LIMIT $start, $limit";
$recsb = $mysql->getAll();



// 分页类
$pageObj = new Page($current,$count,$limit,$size);
$pagelink = $pageObj->first()->prev()->num()->next()->last()->show();







include('view/recsb.html');
?>