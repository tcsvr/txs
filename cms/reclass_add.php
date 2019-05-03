<?php
include('include/init.php');

//先判断是否为提交动作
if($_POST){
    // pre($_POST);
    //判断是否为空
    if(!isset($_POST['rl_title']) || empty($_POST['rl_title'])){
        alert('请填写分类名称');
    }
    //获取数据
    $rl_title = $_POST['rl_title'];

    //
    $sql = "SELECT rl_id FROM tv_rec_class WHERE rl_title='{$rl_title}'";
    $repeat = getOne($sql);
    if($repeat){
        alert('名称重复');
    }

    //写SQL语句
    $sql =  "INSERT INTO tv_rec_class (`rl_title`) VALUES ('{$rl_title}')";
    //执行
    $bool = mysql_query($sql);

    //判断是否添加成功
    if($bool && mysql_affected_rows()){
        alert('添加成功','reclass_list.php');
    }else{
        alert('添加失败');
    }

}



include('view/reclass_add.html');
?>