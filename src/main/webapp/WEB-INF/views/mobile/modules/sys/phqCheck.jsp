<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<link rel="stylesheet" href="${ctxStatic}/jingle/css/auth.css">
	<link href="${ctxStatic}/mobiscroll/css/mobiscroll.frame.css" rel="stylesheet" type="text/css" />
	<link href="${ctxStatic}/mobiscroll/css/mobiscroll.frame.android-holo.css" rel="stylesheet" type="text/css" />
	<link href="${ctxStatic}/mobiscroll/css/mobiscroll.scroller.css" rel="stylesheet" type="text/css" />
	<link href="${ctxStatic}/mobiscroll/css/mobiscroll.android-holo-light.css" rel="stylesheet" type="text/css" />
	<link href="${ctxStatic}/layer-mobile/need/layer.css" rel="stylesheet" type="text/css" />



</head>
<body>
<div id="section_container">
	<section id="login_section" class="active">

		<article data-scroll="true" id="login_article">
			<div class="lowin lowin-blue">

				<div class="lowin-wrapper">
					<div class="lowin-box lowin-login">
						<div class="lowin-box-inner">
							<form id="loginForm">
								<div class="container">

									<div class="one-half-responsive last-column">
										<h3 class="center-if-mobile no-bottom">PHQ-9量表</h3>

									</div>
								</div>

								<input type="hidden" id = "CurrentId" value="${mactUser.id}" hidden="hidden">
								<input type="hidden" id = "phq9Id" value="${phq9One.id}" hidden="hidden">
								<input type="hidden" id = "sort" value="${phq9One.sort}" hidden="hidden">

								<p id="phq9Change">${phq9One.sort}.${phq9One.project}</p>
								request:${requestScope.message}


								<%--<div class="lowin-group">--%>

									<div class="lowin-input" >
										<label>请根据个人情况进行选择：</label>
										<label><input name="scores" type="radio" value="0" />没有</label>
										<label><input name="scores" type="radio" value="1" />有几天</label>
										<label><input name="scores" type="radio" value="2" />一半以上时间</label>
										<label><input name="scores" type="radio" value="3" />几乎天天</label>
									</div>
							<%--	</div>--%>

								<div>&nbsp;</div>

								<input id="nextBtn" class="lowin-btn login-btn " style="margin-top: 4%;" type="button" value="下一题"/>
							</form>
						</div>
					</div>
				</div>
			</div>
		</article>
	</section>
</div>

<script type="text/javascript" language="javascript" src="${ctxStatic}/jquery/jquery-1.9.1.min.js" ></script>
<script src="${ctxStatic}/mobiscroll/js/zepto.min.js"></script>
<script src="${ctxStatic}/mobiscroll/js/mobiscroll.zepto.js"></script>
<script src="${ctxStatic}/mobiscroll/js/mobiscroll.core.js"></script>
<script src="${ctxStatic}/mobiscroll/js/mobiscroll.frame.js"></script>
<script src="${ctxStatic}/mobiscroll/js/mobiscroll.scroller.js"></script>
<script src="${ctxStatic}/mobiscroll/js/mobiscroll.util.datetime.js"></script>
<script src="${ctxStatic}/mobiscroll/js/mobiscroll.datetimebase.js"></script>
<script src="${ctxStatic}/mobiscroll/js/mobiscroll.datetime.js"></script>
<script src="${ctxStatic}/mobiscroll/js/mobiscroll.android-holo-light.js"></script>
<script src="${ctxStatic}/mobiscroll/js/i18n/mobiscroll.i18n.zh.js"></script>
<script src="${ctxStatic}/layer-mobile/layer.js"></script>

<script type="text/javascript">

	$('#nextBtn').click(function () {
        var sort =  parseInt($("#sort").val()) + parseInt(1);
        var CurrentId = $("#CurrentId").val();
        var phq9Id = $("#phq9Id").val();
        var scores= $('input:radio[name="scores"]:checked').val();
        var url="${ctx}/mact/userphq9/mactUserPhq9/savePhq9?sort="+sort+"&CurrentId="+CurrentId+"&phq9Id="+phq9Id+"&scores="+scores;
        alert(scores);
        alert(sort);
        alert(CurrentId);
        alert(phq9Id);
        $.ajax({
            url:url,
            type:"GET",
            dataType:"json",
            success:function(result){
            }
        });
    })



</script>


</body>
</html>