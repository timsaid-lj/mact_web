<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html style="overflow-x:auto;overflow-y:auto;">
<head>
	<title><sitemesh:title/></title><!--  - Powered By javamg -->
	<%@include file="/WEB-INF/views/include/head.jsp" %>
	<!-- Baidu tongji analytics -->
	<script>var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="//hm.baidu.com/hm.js?82116c626a8d504a5c0675073362ef6f";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s);})();</script>
	<!-- 解决sitemesh 加载不了body样式的bugger -->
	<script>
		$(function(){  
		    if($("#bodyClass")[0] && $("#bodyClass").val() != "")  
		        $("body").attr("class",$("#bodyClass").val());
		});
     </script>
	<sitemesh:head/>
</head>
<body>
	<input id="bodyClass" type="hidden" value="<sitemesh:getProperty property="body.class" />"/>
	<sitemesh:body/>
</body>
</html>