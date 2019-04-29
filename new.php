<?php
include('include/init.php');

//新闻动态
//新闻分类
$mysql->sql = "SELECT * FROM tv_new_class WHERE nl_isshow=1";
$new_class = $mysql->getAll();
// pre($new_class);

$mysql->sql = "SELECT * FROM tv_new WHERE nl_id=5 ORDER BY n_id DESC";
$newz = $mysql->getOne();

// pre($nlid);
$mysql->sql = "SELECT * FROM tv_new WHERE nl_id='{$nlid}' ORDER BY n_id DESC LIMIT 4";
$new = $mysql->getAll();
// pre($new);







include('view/new.html');
?>