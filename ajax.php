<?php
include('include/init.php');

// echo '123';
$nlid = isset($_GET['nlid'])?$_GET['nlid']:1;
// echo $nlid;

$mysql->sql = "SELECT * FROM tv_new WHERE nl_id={$nlid} AND n_isshow=1 ORDER BY n_id DESC LIMIT 4";
$nlse = $mysql->getAll();
// pre($nlse);
//  $nlse = json_encode($nlse);  //把数组转换成json
//  echo $nlse;
foreach($nlse as $v){


echo '<div class="card" >';

echo '<div class="card-body text-success tal">';
    echo '<a href="newdet.php?nid='.$v['n_id'].'" class="tdn">'.
        '<h5 class="nlrd-title">'. $v['n_title'] .'</h5>'.
    '</a>'.
    '<a href="newdet.php?nid='.$v['n_id'].'" class="tdn">'.
        '<p class="nlrd-text">'. $v['n_txt'].'</p>'.
    '</a>';
echo '</div>';
echo '</div>';








}






?>
