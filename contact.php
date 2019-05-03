<?php
include('include/init.php');

$mysql->sql = "SELECT * FROM tv_article WHERE a_id = 2";

$contact = $mysql->getOne();

// pre($contact);






include('view/common/footer.html');
?>
