<?php
include('include/init.php');

//在提交前执行
//获取分类id
$rlid = isset($_GET['rlid'])?$_GET['rlid']:1;

$sql = "SELECT rl_title FROM tv_rec_class WHERE rl_id='{$rlid}'";
$reclass = getOne($sql);


//提交后执行
if($_POST){
    if(!isset($_POST['rl_title']) || empty($_POST['rl_title'])){
        alert('请填写分类名称');
    }
    //获取数据
    $rl_name = $_POST['rl_title'];

    //
    $sql = "SELECT rl_id FROM tv_rec_class WHERE rl_title='{$rl_name}'";
    $repeat = getOne($sql);
    if($repeat){
        alert('名称分类重复');
    }
    
    $sql = "UPDATE tv_rec_class SET `rl_title`='{$rl_name}' WHERE rl_id='{$rlid}'";
    $bool = mysql_query($sql);

    if($bool && mysql_affected_rows()){
        alert('修改成功','reclass_list.php');
    }else{
        alert('修改失败','reclass_edit.php?caid='.$rlid);
    }

}


include('view/reclass_edit.html');
?>