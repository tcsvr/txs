<?php
include('include/init.php');


//删除
$rid = isset($_GET['rid'])?$_GET['rid']:0;

$sql = "SELECT `r_img`,`r_thumb` FROM tv_rec WHERE r_id={$rid}";
$rec = getOne($sql);

$deleteImg = $rec['r_img'];
$deleteThumb = $rec['r_thumb'];

//判断文件存在 且大于0
if(file_exists(_UPLOADS_.$deleteImg) && filesize(_UPLOADS_.$deleteImg) >0){
	unlink(_UPLOADS_.$deleteImg);
}
if(file_exists(_THUMBS_.$deleteThumb) && filesize(_THUMBS_.$deleteThumb) >0){
	unlink(_THUMBS_.$deleteThumb);
}



$sql = "DELETE FROM tv_rec WHERE r_id={$rid}";
$bool = mysql_query($sql);



if($bool && mysql_affected_rows()){
	header('Location:rec_list.php?rlid='.$rlid);
}else{
	alert('删除失败！','rec_del.php?rid='.$rid);
}



?>