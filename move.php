<?php
include('include/init.php');

// $mysql->sql = "SELECT * FROM tv_rec WHERE rl_id = 3 ORDER BY r_id DESC";

// $move = $mysql->getAll();

// pre($game);

// 分页类的参数
$current = isset($_GET['page'])?$_GET['page']:1;
$limit = 1;
$start = ($current - 1) * $limit;
$size = 3;
// 获取总条数
$mysql->sql = "SELECT COUNT(r_id) AS count FROM tv_rec WHERE rl_id = 3 ";
$count = $mysql->getOne();
$count = $count['count'];
// 案例列表
$mysql->sql = "SELECT * FROM tv_rec WHERE rl_id = 3 ORDER BY r_id DESC LIMIT $start, $limit";
$move = $mysql->getAll();

// pre($recl);


// 分页类
$pageObj = new Page($current,$count,$limit,$size);
$pagelink = $pageObj->first()->prev()->num()->next()->last()->show();

// pre($pagelink);




include('view/move.html');
?>