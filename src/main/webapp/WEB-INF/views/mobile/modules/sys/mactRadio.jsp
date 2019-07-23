<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%><!DOCTYPE >
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<link rel="stylesheet" href="${ctxStatic}/jingle/css/auth.css">
	<%--整体样式css引用--%>
	<link href="${ctxStatic}/mact/styles/framework.css" rel="stylesheet" type="text/css">
	<script src="${ctxStatic}/jquery/jquery-1.11.3.min.js"></script>
</head>
<body style="background: #F2F9FC;">
<div id="aside_container" >
	<%--当前页面用户id传递--%>
	<input type="hidden" id = "CurrentId" value="${mactUser.id}" hidden="hidden">

	<%-----------------------------分割线-----------------------------------%>
	<div class="decoration"></div>
	<div class="container">
		<div class="one-half-responsive">
			<img src="/uploadImg/image/001.png" alt="img" class="responsive-image">
		</div>
		<div class="one-half-responsive last-column">
			<h3 class="center-if-mobile no-bottom">Awesome project title</h3>
			<br>
			<div class="center-text-mobile">他兴奋的去银行办理业务，发现卡里有比想象中更多的存款</div>
		</div>
	</div>
	<div class="decoration"></div>

	<%------------------------------分割线-----------------------------------%>

		<div class="center-text-mobile">
			<div id="timer">
				<span id="hours">00</span>
				<span>:</span>
				<span id="minute">00</span>
				<span>:</span>
				<span id="second">00</span>
			</div>
			<%--
			<div id="btn">
				<button id="begin">开始</button>
				<button id="pause">暂停</button>
			</div>
			--%>
		</div>



		<div id="beginButton" style="display:block;">
			<input type="button" class="button button-red center-button"
			   value="开始录音" onClick="startrecording()" />
		</div>

		<div id="endButton" style="display:none;">
			<input type="button" class="button button-red center-button"
				   value="结束录音" onClick="stoptrecording()" />
		</div>

	<%--
	<input type="button" value="暂停录音" onClick="pauserecording()" />
	<input type="button" value="继续录音" onClick="resumerecording()" />
	--%>


</div>

<script type="text/javascript">
    function startrecording(){
        document.getElementById("beginButton").style.display="none";
        document.getElementById("endButton").style.display="block";
        $App.startrecording("录音开始")

    }

    function stoptrecording(){
        document.getElementById("beginButton").style.display="block";
        document.getElementById("endButton").style.display="none";
        /*调用android原生stoprecording方法，并传递当前用户id*/
        $App.stoptrecording($("#CurrentId").val())

    }

    function pauserecording(){
        $App.pauserecording("哈哈，我是js调用的")
    }

    function resumerecording(){
        $App.resumerecording("哈哈，我是js调用的")
    }

    function playtape(){
        $App.playtape("哈哈，我是js调用的,开始")
    }


    /*计时器*/
    window.onload = function(){
        var hours = document.getElementById("hours"),
            minute = document.getElementById("minute"),
            second = document.getElementById("second"),
            begin = document.getElementById("beginButton"),
            pause = document.getElementById("endButton"),
            timer = null,
            Hours = 0,
            Minute = 0,
            Second = 0;

        begin.onclick = function(){
            timer = setInterval(function(){
                Second++;
                if(Second > 59){
                    Second = 0;
                    Minute++;
                    if(Minute >59){
                        Minute = 0;
                        Hours++;
                    }
                }


                if(Second < 10){
                    second.innerText = "0" + Second;
                }else{
                    second.innerText = Second;
                }


                if(Minute < 10){
                    minute.innerText = "0" + Minute;
                }else{
                    minute.innerText = Minute;
                }


                if(Hours < 10){
                    hours.innerText = "0" + Hours;
                }else{
                    hours.innerText = Hours;
                }
            },1000)
        }

        pause.onclick = function(){
            clearInterval(timer);
        }

        resert.onclick = function(){
            clearInterval(timer);
            h=m=s=ms=0;
            document.getElementById('mytime').innerHTML="00时00分00秒0000毫秒";
        }
    }


</script>
</body>
</html>