<?php
include('include/init.php');

if(!isset($_POST['repass']) || empty($_POST['repass'])){
    echo 2 ;exit;
}

// echo $_POST['pass'];
// echo $_POST['repass'];

if($_POST['pass'] != $_POST['repass']){
    echo 0 ;
}else{
    echo 1 ;
    setcookie('pass',$_POST['repass']);
}
