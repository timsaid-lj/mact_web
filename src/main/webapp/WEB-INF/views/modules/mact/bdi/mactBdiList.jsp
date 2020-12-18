<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>bdi管理</title>
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
		<li class="active"><a href="${ctx}/mact/bdi/mactBdi/">bdi列表</a></li>
		<shiro:hasPermission name="mact:bdi:mactBdi:edit"><li><a href="${ctx}/mact/bdi/mactBdi/form">bdi添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="mactBdi" action="${ctx}/mact/bdi/mactBdi/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>分组：</label>
				<form:input path="bdigroup" htmlEscape="false" maxlength="4" class="input-medium"/>
			</li>
			<li><label>项目：</label>
				<form:input path="project" htmlEscape="false" maxlength="255" class="input-medium"/>
			</li>
			<li><label>分值：</label>
				<form:input path="bdivalue" htmlEscape="false" maxlength="4" class="input-medium"/>
			</li>
			<li><label>排序：</label>
				<form:input path="sort" htmlEscape="false" maxlength="4" class="input-medium"/>
			</li>
			<li><label>创建者：</label>
				<form:input path="createBy.id" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>分组</th>
				<th>项目</th>
				<th>分值</th>
				<th>排序</th>
				<th>更新者</th>
				<th>更新时间</th>
				<th>备注</th>
				<shiro:hasPermission name="mact:bdi:mactBdi:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="mactBdi">
			<tr>
				<td><a href="${ctx}/mact/bdi/mactBdi/form?id=${mactBdi.id}">
					${mactBdi.bdigroup}
				</a></td>
				<td>
					${mactBdi.project}
				</td>
				<td>
					${mactBdi.bdivalue}
				</td>
				<td>
					${mactBdi.sort}
				</td>
				<td>
					${mactBdi.createBy}
				</td>
				<td>
					<fmt:formatDate value="${mactBdi.updateDate}" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					${mactBdi.remarks}
				</td>
				<shiro:hasPermission name="mact:bdi:mactBdi:edit"><td>
    				<a href="${ctx}/mact/bdi/mactBdi/form?id=${mactBdi.id}">修改</a>
					<a href="${ctx}/mact/bdi/mactBdi/delete?id=${mactBdi.id}" onclick="return confirmx('确认要删除该bdi吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>