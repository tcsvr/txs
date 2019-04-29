<?php
include('include/init.php');

$mysql->sql = "SELECT * FROM tv_article WHERE a_id = 3";

$jion = $mysql->getOne();

// pre($us);






include('view/jion.html');
?>
