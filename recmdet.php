<?php
include('include/init.php');
$rid = isset($_GET['rid'])?$_GET['rid']:'0';

$rlid = isset($_GET['rlid'])?$_GET['rlid']:'0';
// pre($rlid);
if($rlid==3){

    $mysql->sql = "SELECT * FROM tv_rec WHERE r_id =$rid ";
    $recmdet = $mysql->getOne();
    include('view/recmdet.html');

}else if($rlid==1){
    $mysql->sql = "SELECT * FROM tv_rec WHERE r_id =$rid ";
    $recmdet = $mysql->getOne();
    include('view/recjdet.html');
}else if($rlid==2){

    $mysql->sql = "SELECT * FROM tv_rec WHERE r_id =$rid ";
    $recmdet = $mysql->getOne();
    include('view/recgdet.html');

}else if($rlid==4){
    $mysql->sql = "SELECT * FROM tv_rec WHERE r_id =$rid ";
    $recmdet = $mysql->getOne();
    include('view/recsdet.html');
}else{
    echo '未找到页面！';
}

// pre($us);






?>
