<?php
include('include/init.php');

$mysql->sql = "SELECT * FROM tv_rec WHERE rl_id = 3 ORDER BY r_id DESC";

$move = $mysql->getAll();

// pre($game);






include('view/move.html');
?>