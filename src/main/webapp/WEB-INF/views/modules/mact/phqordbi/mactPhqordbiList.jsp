<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>参数管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/mact/phqordbi/mactPhqordbi/">参数列表</a></li>
	</ul>
	<form:form id="searchForm" modelAttribute="mactPhqordbi" action="${ctx}/mact/phqordbi/mactPhqordbi/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
	<%--	<thead>
			<tr>当前量表</tr>
			<tr>
				<shiro:hasPermission name="mact:phqordbi:mactPhqordbi:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>--%>
		<tbody>
		<c:forEach items="${page.list}" var="mactPhqordbi">
			<tr style="font-size: large;">
				<td>
					当前量表
				</td>

				<td style="color: green;">
					<c:choose>
						<c:when test="${mactPhqordbi.phqordbi== '1'}">
							phq
						</c:when>
						<c:otherwise>
							bdi
						</c:otherwise>
					</c:choose>
				</td>
				<shiro:hasPermission name="mact:phqordbi:mactPhqordbi:edit"><td>
    				<a href="${ctx}/mact/phqordbi/mactPhqordbi/form?id=${mactPhqordbi.id}">切换</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>

</body>
</html>