<?php
include('include/init.php');


if(!isset($_POST['pass']) || empty($_POST['pass'])){
    echo 2 ;exit;
}
if(strlen($_POST['pass'])<4 || strlen($_POST['pass'])>16){
    echo 3 ;exit;
}else{

    // if($_POST['pass'] != $_POST['repass']){
        echo '1';
        setcookie('password',$_POST['pass']);
        
    }
// $pass = md5($_POST['pass']);
// $sql = $mysql->sql = "INSERT INTO tv_user (`u_name`,`u_password`) VALUES ('{$username}','{$pass}')";

// $bool = mysql_query($sql);
// if(!$bool && mysql_affected_rows()){
//     // echo '4';exit;
// }else{

//     $mysql->sql = "SELECT * FROM tv_user WHERE u_name = '{$username}'";
//     $userinfo = $mysql->getOne();
//     // pre($userinfo);

//     setcookie('islog','1');
//     // 存用户名
//     setcookie('username',$userinfo['u_name']);
//     // 存用户ID
//     setcookie('uid',$userinfo['u_id']);

//     header('Location:user_info.php');
// }
