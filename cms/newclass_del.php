<?php
include('include/init.php');


//获取id 如果没有则不能删除
$nlid = isset($_GET['nlid'])?$_GET['nlid']:0;

$sql = "DELETE FROM tv_new_class WHERE nl_id=$nlid";

$bool = mysql_query($sql);

if($bool && mysql_affected_rows()){
	alert('已删除！','newclass_list.php');
}else{
	alert('删除失败！','newclass_del.php?nlid='.$nlid);
}





?>
