<?php
include('include/init.php');

//先判断是否为提交动作
if($_POST){
    // pre($_POST);
    //判断是否为空
    if(!isset($_POST['nl_title']) || empty($_POST['nl_title'])){
        alert('请填写分类名称');
    }
    //获取数据
    $nl_title = $_POST['nl_title'];

    //
    $sql = "SELECT nl_id FROM tv_newc_class WHERE nl_title='{$nl_title}'";
    $repeat = getOne($sql);
    if($repeat){
        alert('名称重复');
    }

    //写SQL语句
    $sql =  "INSERT INTO tv_new_class (`nl_title`) VALUES ('{$nl_title}')";
    //执行
    $bool = mysql_query($sql);

    //判断是否添加成功
    if($bool && mysql_affected_rows()){
        alert('添加成功','newclass_list.php');
    }else{
        alert('添加失败');
    }

}



include('view/newclass_add.html');
?>