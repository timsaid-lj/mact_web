<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
	<link rel="stylesheet" href="${ctxStatic}/jingle/css/auth.css">
	<link href="${ctxStatic}/mobiscroll/css/mobiscroll.frame.css" rel="stylesheet" type="text/css" />
	<link href="${ctxStatic}/mobiscroll/css/mobiscroll.frame.android-holo.css" rel="stylesheet" type="text/css" />
	<link href="${ctxStatic}/mobiscroll/css/mobiscroll.scroller.css" rel="stylesheet" type="text/css" />
	<link href="${ctxStatic}/mobiscroll/css/mobiscroll.android-holo-light.css" rel="stylesheet" type="text/css" />
	<link href="${ctxStatic}/layer-mobile/need/layer.css" rel="stylesheet" type="text/css" />
<style type="text/css">
	#contentTable{
		display: block;
		list-style: none;
		margin: 0;
		padding: 0;
	}
	#contentTable li{
			list-style: none;
			display: block;
			width: 100%;
	}
	#messageBox{
		color: red;
		display: block;
		text-align: center;
		font-size: 16px;
		margin: 0;
		height: 50px;
		line-height: 80px;
		overflow: hidden;
	}
</style>


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
								<input type="hidden" id = "CurrentId" value="${mactUser.id}" hidden="hidden">
								<div class="lowin-input" style="margin-top: 30%; font-size: 16px;font-family: monospace;line-height: 2;" >

									<ul id="contentTable">
										<c:forEach items="${page.list}" var="mactBdi">
											<li>
												<input name="scores" type="radio" id="${mactBdi.id}" sort="${mactBdi.sort}" value="${mactBdi.bdivalue}" bdigroup="${mactBdi.bdigroup}"/>&nbsp;
													${mactBdi.sort}.&nbsp;${mactBdi.project}
											</li>
										</c:forEach>
									</ul>
								</div>
								<h1  id="messageBox"></h1>
								<input id="nextBtn" class="lowin-btn login-btn " style="margin-top: 20%;" type="button" value="下一题"/>
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
		if($('input:radio[name="scores"]:checked').length===0){
			$("#messageBox").text("请先作答");
		}else{
		var sort =  parseInt($('input:radio[name="scores"]:checked').attr("sort"));
		var CurrentId = $("#CurrentId").val();
		var scores= $('input:radio[name="scores"]:checked').val();
		var phq9Id= $('input:radio[name="scores"]:checked').attr("id");
		var bdigroup= $('input:radio[name="scores"]:checked').attr("bdigroup");
		var type =  2;
		var url="${ctx}/mact/userphq9/mactUserPhq9/savePhq9?sort="+sort+"&CurrentId="+CurrentId+"&phq9Id="+phq9Id+"&scores="+scores+"&type="+type+"&bdigroup="+bdigroup;
		$.ajax({
			url:url,
			type:"GET",
			dataType:"json",
			success:function(result){
				if(result.data == "" || result.data == null){
					window.location.href="${ctx}/mact/mobile/mactRadio?id="+CurrentId;
				}else {
					$("#messageBox").text("");
					var html=''
					result.data.forEach(item=>{
						html+='<li>'
						html+='<input name="scores" type="radio" id="'+item.id+'" sort="'+item.sort+'" value="'+item.bdivalue+'" bdigroup="'+item.bdigroup+'"/>'
						html+='&nbsp;'+item.sort+'.&nbsp;'+item.project
					html+='</li>'
					})

					$('#contentTable').html(html)

				}
			}
		});
		}
	})
</script>


</body>
</html>