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
	<script src="${ctxStatic}/jquery/jquery-1.11.3.min.js"></script>
</head>
<body>
<div id="aside_container">
	<input type="text" id = "CurrentId" value="${mactUser.id}" >
	<input type="text" id = "url" value="${ctx}/mact/mobile/userCommit?CurrentId=" >
	<input type="text" id = "pathurl" value="${ctxStatic}/jquery/jquery-1.11.3.min.js" >
	<br>
	这是个图片；

	<input type="button" value="开始录音" onClick="startrecording()" />
	<input type="button" value="结束录音" onClick="stoptrecording()" />


</div>
<div id="section_container">

</div>


<script type="text/javascript">
    function startrecording(){
        $App.startrecording("录音开始")
    }

    function stoptrecording(){
        /*var url = "${ctx}/mact/mobile/userCommit?CurrentId="+$("#CurrentId").val();
        $.ajax({
            url : url,
            type : "GET",
            dataType : "json",
            success:function(result) {
            }
        });*/
        $App.stoptrecording($("#CurrentId").val())
    }

    function playtape(){
        $App.playtape("哈哈，我是js调用的,开始")
    }






</script>
</body>
</html>