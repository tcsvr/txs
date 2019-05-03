<?php
include('include/init.php');

//在提交前执行
//获取分类id
$nlid = isset($_GET['nlid'])?$_GET['nlid']:1;

$sql = "SELECT nl_title FROM tv_new_class WHERE nl_id='{$nlid}'";
$newclass = getOne($sql);


//提交后执行
if($_POST){
    if(!isset($_POST['nl_title']) || empty($_POST['nl_title'])){
        alert('请填写分类名称');
    }
    //获取数据
    $nl_name = $_POST['nl_title'];

    //
    $sql = "SELECT nl_id FROM tv_new_class WHERE nl_title='{$nl_name}'";
    $repeat = getOne($sql);
    if($repeat){
        alert('名称分类重复');
    }
    
    $sql = "UPDATE tv_new_class SET `nl_title`='{$nl_name}' WHERE nl_id='{$nlid}'";
    $bool = mysql_query($sql);

    if($bool && mysql_affected_rows()){
        alert('修改成功','newclass_list.php');
    }else{
        alert('修改失败','newclass_edit.php?caid='.$nlid);
    }

}


include('view/newclass_edit.html');
?>