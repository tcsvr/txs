<?php
include('include/init.php');

$nid = isset($_GET['nid'])?$_GET['nid']:0;

$mysql->sql = "SELECT * FROM tv_new WHERE n_id='{$nid}' ";
$newdet = $mysql->getOne();


$nlid = $newdet['nl_id'];

$mysql->sql = "SELECT * FROM tv_new WHERE nl_id='{$nlid}' ORDER BY n_id DESC LIMIT 4";

$tnew = $mysql->getAll();







include('view/newdet.html');
?>