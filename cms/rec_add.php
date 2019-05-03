<?php
include('include/init.php');


//
if($_POST){
  if($_POST['rl_id']=='0'){
    alert('请选择分类');
  }

    if(!isset($_POST['r_title']) || empty($_POST['r_title'])){
		alert('请填写标题');
	}
    if(!isset($_POST['r_txt']) || empty($_POST['r_txt'])){
		alert('请填写简介');
	}
	if(!isset($_POST['editorValue']) || empty($_POST['editorValue'])){
		alert('请填写详情');
    }
    //简单的数据
    $r_isshow = isset($_POST['r_isshow'])?$_POST['r_isshow']:0;
    $rl_id = $_POST['rl_id'];
    $r_title = $_POST['r_title'];
    $r_txt = $_POST['r_txt'];
    $r_detail = $_POST['editorValue'];


    //文件上传
    if(!isset($_FILES['upload']['name']) || empty($_FILES['upload']['name'])){
        alert('请上传文件');
    }else{
        //上传操作
        $name = 'upload';
        $uri = _UPLOADS_;
        $images = upload($name,$uri);
        $r_img = $images['filename'];  //我们要的数据

        //生成缩略图
        $img = _UPLOAD_.$r_img;      //图片来源地址
        $info = getimagesize($img); //取得图像参数
        $son_w = $info[0];
        $son_h = $info[1];

        $son_width = 80;   //缩略图的宽
        $son_height = $son_h*$son_width/$son_w;  //缩略图的高
        $url = _THUMBS_;   //缩略图存放路径
        $thumpath = substr(strrchr($r_img, '/'),1); //缩略图的名称

        $r_thumb = thumb_img($img,$son_width,$son_height,$url,$thumpath); //我们要的数据 缩略图
        
    }
    //
    $sql = "INSERT INTO tv_rec
    (`r_title`,`r_img`,`r_thumb`,`r_txt`,`r_isshow`,`rl_id`,`r_detail`)
    VALUES
    ('{$r_title}','{$r_img}','{$r_thumb}','{$r_txt}','{$r_isshow}','{$rl_id}','{$r_detail}')";
    //
    $bool = mysql_query($sql);
    //
    if($bool && mysql_affected_rows()){
		header('Location:rec_list.php?rlid='.$rlid);
	}else{
		alert('添加失败！','rec_add.php');
	}


}


include('view/rec_add.html');
?>