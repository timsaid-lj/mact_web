<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>phq9管理</title>
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
		<li class="active"><a href="${ctx}/mact/phq9/mactPhq9/">phq9列表</a></li>
		<shiro:hasPermission name="mact:phq9:mactPhq9:edit"><li><a href="${ctx}/mact/phq9/mactPhq9/form">phq9添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="mactPhq9" action="${ctx}/mact/phq9/mactPhq9/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>项目：</label>
				<form:input path="project" htmlEscape="false" maxlength="255" class="input-medium"/>
			</li>
			<li><label>没有：</label>
				<form:input path="none" htmlEscape="false" maxlength="2" class="input-medium"/>
			</li>
			<li><label>有几天：</label>
				<form:input path="days" htmlEscape="false" maxlength="2" class="input-medium"/>
			</li>
			<li><label>一半以上：</label>
				<form:input path="usual" htmlEscape="false" maxlength="2" class="input-medium"/>
			</li>
			<li><label>一半以上：</label>
				<form:input path="often" htmlEscape="false" maxlength="2" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>项目</th>
				<th>排序</th>
				<th>没有</th>
				<th>有几天</th>
				<th>一半以上</th>
				<th>天天</th>
				<th>创建时间</th>
				<shiro:hasPermission name="mact:phq9:mactPhq9:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="mactPhq9">
			<tr>
				<td><a href="${ctx}/mact/phq9/mactPhq9/form?id=${mactPhq9.id}">
					${mactPhq9.project}
				</a></td>
				<td>
					${mactPhq9.sort}
				</td>
				<td>
					${mactPhq9.none}
				</td>
				<td>
					${mactPhq9.days}
				</td>
				<td>
					${mactPhq9.usual}
				</td>
				<td>
					${mactPhq9.often}
				</td>
				<td>
					<fmt:formatDate value="${mactPhq9.createDate}" pattern="yyyy-MM-dd"/>
				</td>
				<shiro:hasPermission name="mact:phq9:mactPhq9:edit"><td>
    				<a href="${ctx}/mact/phq9/mactPhq9/form?id=${mactPhq9.id}">修改</a>
					<a href="${ctx}/mact/phq9/mactPhq9/delete?id=${mactPhq9.id}" onclick="return confirmx('确认要删除该phq9吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>