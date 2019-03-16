var ocon = document.getElementById("con");
var oleft = document.getElementById("left")
var oright = document.getElementById("right")
var oul = ocon.getElementsByTagName("ul")[0]
var oli = oul.getElementsByTagName("li");
var speed = 2;
var set = setInterval(move,30)
oul.innerHTML+=oul.innerHTML
var liw = oli[0].offsetWidth;
oul.style.width=(liw*oli.length)+'px';
oul.onmouseover=function(){
    set = clearInterval(set)
}
oul.onmouseout=function(){
    set = setInterval(move,30)
}
left.onclick=function  () {
    speed=-2;
}
right.onclick=function  () {
    speed=2;
}
function move(){
    if(oul.offsetLeft>0){
        oul.style.left='-'+(oul.offsetWidth/2)+'px';
    }
    if(oul.offsetLeft<'-'+(oul.offsetWidth/2)){
        oul.style.left=0;
    }
    oul.style.left=oul.offsetLeft+speed+'px';
}
