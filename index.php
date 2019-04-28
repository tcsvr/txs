<?php
include('include/init.php');
//导航
$mysql->sql = "SELECT * FROM tv_nav WHERE n_isshow = 1";
$nav = $mysql->getAll();
// pre($nav);

//banner图
$mysql->sql = "SELECT * FROM tv_banner WHERE b_isshow = 1 ORDER BY b_id DESC LIMIT 1";
$banner1 = $mysql->getOne();
// pre($banner1);
$mysql->sql = "SELECT * FROM tv_banner WHERE b_isshow = 1 ORDER BY b_id DESC LIMIT 1,4";
$banner = $mysql->getAll();
// pre($banner);

//产品展示
$mysql->sql = "SELECT * FROM tv_rec ORDER BY r_id DESC";
$rec = $mysql->getAll();
// pre($rec);

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

//加入我们
$mysql->sql = "SELECT * FROM tv_jion  WHERE j_isshow=1";
$jion = $mysql->getAll();
// pre($jion);

//联系我们
$mysql->sql = "SELECT * FROM tv_article  WHERE a_id=2";
$contact = $mysql->getAll();
// pre($contact);





include('view/index.html');
?>