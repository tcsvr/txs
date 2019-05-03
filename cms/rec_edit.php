<?php
include('include/init.php');

//提交前执行
$rid = isset($_GET['rid'])?$_GET['rid']:0;

$sql = "SELECT * FROM tv_rec WHERE r_id={$rid}";
$rec = getOne($sql);

$deleteImg = $rec['r_img'];
$deleteThumb = $rec['r_thumb'];





//提交后执行
if($_POST){
    // pre($_POST);
    if($_POST['rl_id']=='0'){
        alert('请选择分类');
      }
    if(!isset($_POST['r_title']) || empty($_POST['r_title'])){
		alert('请填写标题');
	}
	if(!isset($_POST['editorValue']) || empty($_POST['editorValue'])){
		alert('请填写详情');
    }
    //简单的数据
    $r_isshow = isset($_POST['r_isshow'])?$_POST['r_isshow']:0;
    $rl_id = $_POST['rl_id'];
    $r_title = $_POST['r_title'];
    $r_txt = isset($_POST['r_txt'])?$_POST['r_txt']:'';
    $r_detail = $_POST['editorValue'];

    //文件上传
    if(!isset($_FILES['upload']['name']) || empty($_FILES['upload']['name'])){
        //没上传文件
        $sql = "UPDATE tv_rec SET `r_title`='{$r_title}',`r_txt`='{$r_txt}',`r_detail`='{$r_detail}',`r_isshow`='{$r_isshow}',`rl_id`='{$rl_id}' WHERE r_id={$rid}";
        
    }else{
        //如果原图片存在且大于0
        //删除原图片
        if(file_exists(_UPLOADS_.$deleteImg) && filesize(_UPLOADS_.$deleteImg) >0){
            unlink(_UPLOADS_.$deleteImg);
        }
        if(file_exists(_THUMBS_.$deleteThumb) && filesize(_THUMBS_.$deleteThumb) >0){
            unlink(_THUMBS_.$deleteThumb);
        }
        
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
        
        $sql = "UPDATE tv_rec SET `r_title`='{$r_title}',`r_img`='{$r_img}',`r_thumb`='{$r_thumb}',`r_txt`='{$r_txt}',`r_detail`='{$r_detail}',`r_isshow`='{$r_isshow}',`rl_id`='{$rl_id}' WHERE r_id={$rid}";

        
    }
    $bool = mysql_query($sql);
    // var_dump($bool);exit;
    if($bool && mysql_affected_rows()){
        header('Location:rec_list.php?rlid='.$rl_id);
    }else{
        alert('修改失败！','rec_edit.php?rid='.$rid);
    }
 
    


}




include('view/rec_edit.html');
?>