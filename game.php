<?php
include('include/init.php');

$mysql->sql = "SELECT * FROM tv_rec WHERE rl_id = 2 ORDER BY r_id DESC";

$game = $mysql->getAll();

// pre($game);






include('view/game.html');
?>
