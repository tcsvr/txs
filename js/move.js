$(".filma>a:eq(0)").mousemove(function(){
    $(".filma>a:lt(1)").css("color","#fd9400")
    $(".filma>span:empty").html("很差")
})
$(".filma>a:eq(1)").mousemove(function(){
    $(".filma>a:lt(2)").css("color","#fd9400")
    $(".filma>span:empty").html("较差")
})
$(".filma>a:eq(2)").mousemove(function(){
    $(".filma>a:lt(3)").css("color","#fd9400")
    $(".filma>span:empty").html("还行")
})
$(".filma>a:eq(3)").mousemove(function(){
    $(".filma>a:lt(4)").css("color","#fd9400")
    $(".filma>span:empty").html("推荐")
})
$(".filma>a:eq(4)").mousemove(function(){
    $(".filma>a:lt(5)").css("color","#fd9400")
    $(".filma>span:empty").html("力荐")
})
$(".filma").mouseout(function(){
    $(".filma>a").css("color","")
    $(".filma>span:last").html("")
})
$( "#menu" ).menu({
        position: { my: "left top", at: "right-85 bottom+5" }
}).css("border","none");
// $("#menu ul li a").mousemove(function(){
//     $("#menu ul li a:lt(4)").css({"background":"rgb(255,255,255,0.5)","color":"rgb(0,0,0)" ,"border":"none"})
    // $("#menu ul li a:lt(4)").css("color","rgb(22,222,22)")
    // $("#menu ul li a:lt(4)").css("border","none")
// })
// $("#menu ul li .fiz").mousemove(function(){
//     $("#menu ul li .fiz").css("background","rgb(255,255,255,0.5)")
//     $("#menu ul li .fiz:lt(4)").css("color","rgb(0,0,0,)")
// })
$(".fiz").css("font-size","1").width("1em").height("1.15em")
// $(".fiz:eq(0)").css("padding-top",".25em")
$(".fiz:eq(0)").css("color","red")
$(".fiz:eq(1)").css("color","green")
$(".fiz:eq(2)").css("color","red")
$(".fiz:eq(3)").css("color","green")