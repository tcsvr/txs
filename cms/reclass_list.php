<?php
include('include/init.php');


$sql = "SELECT * FROM tv_rec_class ORDER BY rl_id ASC";
$reclass = getAll($sql);
//多个删除
if($_POST){
    //获取选中的id数组
    $idarr = ($_POST['idarr']);
    //id数组转化为字符串
    $idstr = implode(',',$idarr);
    //用条件删除多个
    $sql = "DELETE FROM tv_rec_class WHERE rl_id IN($idstr)";
    //执行
    $bool = mysql_query($sql);
    //判断删除是否成功，成功则跳转，失败提示
    if($bool && mysql_affected_rows()){
        header('Location:reclass_list.php');
    }else{
        alert('删除失败');
    }

}





include('view/reclass_list.html');
?>