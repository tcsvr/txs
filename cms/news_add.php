<?php
include('include/init.php');


//
if($_POST){
  if($_POST['nl_id']=='0'){
    alert('请选择分类');
  }

    if(!isset($_POST['n_title']) || empty($_POST['n_title'])){
		alert('请填写标题');
	}
	if(!isset($_POST['editorValue']) || empty($_POST['editorValue'])){
		alert('请填写详情');
    }
    //简单的数据
    $n_isshow = isset($_POST['n_isshow'])?$_POST['n_isshow']:0;
    $nl_id = $_POST['nl_id'];
    $n_title = $_POST['n_title'];
    $n_txt = $_POST['n_txt'];
    $n_detai = $_POST['editorValue'];
    $n_time = time();

    //文件上传
    if(!isset($_FILES['upload']['name']) || empty($_FILES['upload']['name'])){
        alert('请上传文件');
    }else{
        //上传操作
        $name = 'upload';
        $uri = _UPLOADS_;
        $images = upload($name,$uri);
        $n_img = $images['filename'];  //我们要的数据

        //生成缩略图
        $img = _UPLOAD_.$n_img;      //图片来源地址
        $info = getimagesize($img); //取得图像参数
        $son_w = $info[0];
        $son_h = $info[1];

        $son_width = 80;   //缩略图的宽
        $son_height = $son_h*$son_width/$son_w;  //缩略图的高
        $url = _THUMBS_;   //缩略图存放路径
        $thumpath = substr(strrchr($n_img, '/'),1); //缩略图的名称

        $n_thumb = thumb_img($img,$son_width,$son_height,$url,$thumpath); //我们要的数据 缩略图
        
    }
    //
    $sql = "INSERT INTO tv_new
    (`n_title`,`n_img`,`n_thumb`,`n_txt`,`n_isshow`,`nl_id`,`n_detai`,`n_time`)
    VALUES
    ('{$n_title}','{$n_img}','{$n_thumb}','{$n_txt}','{$n_isshow}',
    '{$nl_id}','{$n_detai}','{$n_time}')";
    //
    $bool = mysql_query($sql);
    //
    if($bool && mysql_affected_rows()){
		header('Location:news_list.php?nlid='.$nl_id);
	}else{
		alert('添加失败！','news_add.php');
	}


}


include('view/news_add.html');
?>