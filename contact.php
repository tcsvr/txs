<?php
include('include/init.php');

$mysql->sql = "SELECT * FROM tv_article WHERE a_id = 2";

$contact = $mysql->getOne();

// pre($contact);

setcookie('contact',$contact['a_title']);
setcookie('cont',$contact['a_content']);

   pre($_COOKIE['cont']);


// include('view/common/footer.html');
?>
