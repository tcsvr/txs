<?php
include('include/init.php');

$mysql->sql = "SELECT * FROM tv_rec WHERE rl_id = 4 ORDER BY r_id DESC";

$recsb = $mysql->getAll();

// pre($recsb);






include('view/recsb.html');
?>