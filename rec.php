<?php
include('include/init.php');

$mysql->sql = "SELECT * FROM tv_rec WHERE rl_id = 1 ORDER BY r_id DESC";

$rec = $mysql->getAll();

// pre($us);






include('view/rec.html');
?>
