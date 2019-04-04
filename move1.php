<?php 
header('content-type:text/html; charset=utf-8');
include('./include/function.php');
if($_POST){
        if(!isset($_POST['cont']) || empty($_POST['cont'])){
            alert('请填写影评');
        }
        if(!isset($_POST['context']) || empty($_POST['context'])){
            alert('请填写留言');
        }
    
        // $cont=$_POST['cont'];
        // $time= time();
        // $info = $cont.'||'.$time."\r\n";
        // $flme = 'pilun.txt';
        // $fh = fopen($flme,'a');
        // $status = fwrite($fh,$info);
        // fclose($fn);
        // if($status){
        //     alert('评论成功');
        // }
    }  
    // $flme = 'pilun.txt';
    // $farr = file($flme);
    // $con = array();
    // pre($_POST);
    // foreach($farr as $v){
    //     $con = explode('||',$v);
    // }
    include("move1.html");
?>
