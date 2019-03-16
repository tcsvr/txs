var objform = document.querySelector("form")
var objuser = document.querySelector("input[name=username]")
var objages = document.querySelector("input[name=ages]")
var objphone = document.querySelector("input[name=phone]")
var objemail = document.querySelector("input[name=email]")
var tip = document.getElementById("tip")
var atip = document.getElementById("atip")
var ptip = document.getElementById("ptip")
objuser.onblur = function () {
    var user = objuser.value
    if (user == "") {
        // alert("姓名不能为空")
        tip.innerHTML = "姓名不能为空!"
        return false;
    }
    if (user.length < 2 || user.length > 6) {
        // alert("姓名长度为2-6")
        tip.innerHTML = "姓名长度为2-6个！"
        return false;
    }
    if (!user.match(/^[\u4E00-\u9FA5]{1,5}$/)) {
        // alert("请输入汉字")
        tip.innerHTML = "请输入汉字！"
        return false;
    }
    return true
}
objuser.onfocus = function () {
    tip.innerHTML = ""
}
objages.onblur = function () {
    var ages = objages.value
    if (ages == "") {
        atip.innerHTML = "请输入年龄!"
        return false;
    }
    if (ages.length<2||ages.length>2){
        atip.innerHTML = "请输入正确年龄!"
        return false;
    }
    if (!ages.match(/^[2-5][0-9]{1}$/g)){
        atip.innerHTML = "年龄范围在20-59!"
        return false;
    }
    return true
}
objages.onfocus = function () {
    atip.innerHTML = ""
}
objphone.onblur = function(){
    var phone = objphone.value
    if(phone ==""){
        ptip.innerHTML="请输入电话！"
        return false;
    }
    if(phone.length>11||phone.length<11){
        ptip.innerHTML="请输入11位的电话号码"
        return false;
    }
    if(!phone.match(/^[1][3|5|7|8|9][0-9]{9}$/g)){
        ptip.innerHTML="输入号码的格式不正确"
        return false;
    }
    return ture;
}
objphone.onfocus = function(){
    ptip.innerHTML=""
}




// objform.onsubmit=function(){

//     // var ages =objsges.value
//     // var phone =objphone.value
//     // var email =objemail.value

//     }


// }
