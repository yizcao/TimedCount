<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

var min0 = 0;
var min1 = 0;
var sec0 = 0;
var sec1 = 0;
var t;
function timeCount()
{
	if (sec0==9 && sec1==5 && min0==9) {
		min1++;
		min0=sec1=sec0=0;
		document.getElementById('txt').innerHTML = min1 + "" + min0 + " : " + sec1 + "" + sec0;
	}else if (sec0==9 && sec1==5) {
		min0++;
		sec1=sec0=0;
		document.getElementById('txt').innerHTML = min1 + "" + min0 + " : " + sec1 + "" + sec0;
	}else if(sec0==9){
		sec0=0;
		sec1++;
		document.getElementById('txt').innerHTML = min1 + "" + min0 + " : " + sec1 + "" + sec0;
	}else {
		sec0++;
		document.getElementById('txt').innerHTML = min1 + "" + min0 + " : " + sec1 + "" + sec0;
	}

}

function timefunc(){
	timeCount();
	setTimeout("timefunc()",1000);
}



</script>

</head>
<body>

<input type="button" value="开始计时！" onClick="timefunc()">
<p id="txt"></p>
</body>
</html>
