<?php
include('include/init.php');

$mysql->sql = "SELECT * FROM tv_article WHERE a_id = 3";

$jion = $mysql->getOne();


// [username] => 
//     [sex] => on
//     [ages] => 
//     [phone] => 
//     [email] => 
// txt
// pre($us);
$uid = isset($_COOKIE['uid'])?$_COOKIE['uid']:'';

if($_GET){

    if(!isset($_GET['txt']) || empty($_GET['txt']) ){

        alert('请填写留言');
    }else if(!isset($_GET['phone']) || empty($_GET['phone']) ){

        alert('请填写电话');

    }else{

        $name = isset($_GET['username'])?$_GET['username']:'';
        $sex = isset($_GET['sex'])?$_GET['sex']:'';
        $ages = isset($_GET['ages'])?$_GET['ages']:'';
        $phone = isset($_GET['phone'])?$_GET['phone']:'';
        $email = isset($_GET['email'])?$_GET['email']:'';
        $txt = isset($_GET['txt'])?$_GET['txt']:'';
        $time = time();
        // pre($uid);
        // 添加的
        $mysql->data = array(
            'm_name'=>$name,
            'm_email'=>$email,
            'm_phone'=>$phone,
            'm_time'=>$time,
            'm_content'=>$txt,
            'm_sex'=>$sex,
            'm_ages'=>$ages,
            'u_id'=>$uid,
        );
     
        $mysql->table = "tv_message";
        $bool = $mysql->insert();
        
        if($bool){
            alert('ok');
        }else{
            alert('内容填写错误');
        }
    }


}




include('view/jion.html');
?>
