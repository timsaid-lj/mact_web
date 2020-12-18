<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>参数管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/mact/phqordbi/mactPhqordbi/">参数列表</a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="mactPhqordbi" action="${ctx}/mact/phqordbi/mactPhqordbi/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">量表切换：</label>
            <div class="controls">
				<c:choose>
					<c:when test="${mactPhqordbi.phqordbi== '1'}">
						<input  type="radio" name="phqordbi" value="1" checked="checked"/>phq &nbsp;&nbsp;
						<input  type="radio" name="phqordbi" value="2" />bdi
					</c:when>
					<c:otherwise>
						<input  type="radio" name="phqordbi" value="1" />phq &nbsp;&nbsp;
						<input  type="radio" name="phqordbi" value="2" checked="checked"/>bdi
					</c:otherwise>
				</c:choose>
            </div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="mact:phqordbi:mactPhqordbi:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>