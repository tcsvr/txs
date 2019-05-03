<?php
include('include/init.php');






if($_POST){
    $idarr = $_POST['idarr'];
    $idstr = implode(',',$idarr);
    
    $sql = "DELETE FROM tv_rec WHERE r_id IN($idstr)";
    $bool = mysql_query($sql);

    if($bool && mysql_affected_rows()){
        header('Location:rec_list.php?rlid='.$rlid);
    }else{
        alert('删除失败！','rec_list.php?rlid='.$rlid);
    }

}

// pre($rlid);
$sql = "SELECT count(r_id) AS count FROM tv_rec WHERE rl_id={$rlid} ";
$count = getOne($sql);
$count = $count['count'];


//控制条数 控制页码
$current = isset($_GET['page']) ? $_GET['page'] : 1;
$limit= 4;
$start = ($current - 1) * $limit;
$size = 3;


//案例列表
$sql = "SELECT`r_id`,`r_title`,`r_txt`,`r_thumb`,`r_isshow` FROM tv_rec WHERE rl_id={$rlid}  
ORDER BY r_id DESC LIMIT {$start},{$limit}";
$rlist = getAll($sql);

// 分页
$page = page($current,$count,$limit,$size,$class='meneame');






include('view/rec_list.html');
?>