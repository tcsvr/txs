<?php
include('include/init.php');


 
    if(!isset($_POST['username']) || empty($_POST['username'])){
        echo 2 ;exit;
    }
    //用户名要验证和清除左右空格
    $username = trim($_POST['username']);
    $sql = $mysql->sql = "SELECT u_id FROM tv_user WHERE u_name = '{$username}'";
    $reusername = $mysql->getOne();
    // pre($sql);exit;

    if($reusername){
        echo 0 ;exit;
    }else{ 

        $status = preg_match("/\W+/",$username,$match);
        if($status){
            echo 3 ;exit;
        }else{
            if(strlen($username)<4 || strlen($username)>16){
                echo 4 ;exit;
            }
        }
        echo 1 ;
        setcookie('username',$username);

        //密码和确认对比
    }










?>