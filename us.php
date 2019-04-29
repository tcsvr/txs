<?php
include('include/init.php');

$mysql->sql = "SELECT * FROM tv_article WHERE a_id = 1";

$us = $mysql->getOne();

// pre($us);






include('view/us.html');
?>
