<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>userPhq9管理</title>
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
	<li class="active"><a href="${ctx}/mact/userphq9/mactUserPhq9/">userPhq9列表</a></li>
	<shiro:hasPermission name="mact:userphq9:mactUserPhq9:edit"><li><a href="${ctx}/mact/userphq9/mactUserPhq9/form">userPhq9添加</a></li></shiro:hasPermission>
</ul>
<form:form id="searchForm" modelAttribute="mactUserPhq9" action="${ctx}/mact/userphq9/mactUserPhq9/" method="post" class="breadcrumb form-search">
	<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
	<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
	<ul class="ul-form">
		<li><label>项目：</label>
			<form:input path="phqid" htmlEscape="false" maxlength="64" class="input-medium"/>
		</li>

		<li><label>分值：</label>
			<form:input path="scores" htmlEscape="false" maxlength="2" class="input-medium"/>
		</li>
		<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
		<li class="clearfix"></li>
	</ul>
</form:form>
<sys:message content="${message}"/>
<table id="contentTable" class="table table-striped table-bordered table-condensed">
	<thead>
	<tr>
		<th>用户</th>
		<th>项目</th>
		<th>分值ֵ</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${page.list}" var="mactUserPhq9">
		<tr>
			<td>
					${mactUserPhq9.userName}
			</td>
			<td>
					${mactUserPhq9.project}
			</td>

			<td>
					${mactUserPhq9.scores}
			</td>


		</tr>
	</c:forEach>
	</tbody>
</table>
<div class="pagination">${page}</div>
</body>
</html>