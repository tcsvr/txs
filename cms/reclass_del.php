<?php
include('include/init.php');


//获取id 如果没有则不能删除
$rlid = isset($_GET['rlid'])?$_GET['rlid']:0;

$sql = "DELETE FROM tv_rec_class WHERE rl_id=$rlid";

$bool = mysql_query($sql);

if($bool && mysql_affected_rows()){
	alert('已删除！','reclass_list.php');
}else{
	alert('删除失败！','reclass_del.php?rlid='.$rlid);
}





?>
