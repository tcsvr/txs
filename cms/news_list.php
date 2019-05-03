<?php
include('include/init.php');






if($_POST){
    $nidarr = $_POST['nidarr'];
    $nidstr = implode(',',$nidarr);
    
    $sql = "DELETE FROM tv_new WHERE n_id IN($nidstr)";
    $bool = mysql_query($sql);

    if($bool && mysql_affected_rows()){
        header('Location:news_list.php?nlid='.$nlid);
    }else{
        alert('删除失败！','news_list.php?nlid='.$nlid);
    }

}

$current = isset($_GET['page'])?$_GET['page']:1;
$limit = 4;  //每页显示个数
$start = ($current - 1) * $limit;
$size = 3; //页数

// 获取总条数
$sql = "SELECT COUNT(n_id) AS count FROM tv_new WHERE nl_id={$nlid}";
$count = getOne($sql);
$count = $count['count'];

//
$sql = "SELECT * FROM tv_new WHERE nl_id={$nlid} ORDER BY n_id DESC LIMIT $start,$limit";
$news = getAll($sql);


// 分页
$page = page($current,$count,$limit,$size,$class='meneame');



include('view/news_list.html');
?>