<?php
include('include/init.php');

$mysql->sql = "SELECT * FROM tv_article WHERE a_id = 2";

$us = $mysql->getOne();

// pre($us);






include('view/usw.html');
?>
