<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>mact用户管理</title>
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
		<li class="active"><a href="${ctx}/mact/mactUser/">语料管理列表</a></li>
	</ul>
	<form:form id="searchForm" modelAttribute="mactUser" action="${ctx}/mact/mactUser/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>姓名：</label>
				<form:input path="userName" htmlEscape="false" maxlength="255" class="input-medium"/>
			</li>
			<li><label>登录时间：</label>
				<input name="beginLoginTime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					   value="<fmt:formatDate value="${mactUser.beginLoginTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					   onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/> -
				<input name="endLoginTime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					   value="<fmt:formatDate value="${mactUser.endLoginTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					   onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>

			<li><label>出生日期：</label>
				<input name="beginBirthday" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${mactUser.beginBirthday}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/> - 
				<input name="endBirthday" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${mactUser.endBirthday}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<li><label>学历：</label>
				<form:select path="education" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('education')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>性别：</label>
				<form:radiobuttons path="userSex" items="${fns:getDictList('sex')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
			</li>
			<li><label>录音时间：</label>
				<input name="beginRecordTime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${mactUser.beginRecordTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/> - 
				<input name="endRecordTime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${mactUser.endRecordTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<li><label>文件名：</label>
				<form:input path="fileName" htmlEscape="false" maxlength="255" class="input-medium"/>
			</li>

			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>姓名</th>
				<th>性别</th>
				<th>出生日期</th>
				<th>学历</th>
				<th>登录时间</th>
				<th>录音时间</th>
				<th>文件名</th>

				<shiro:hasPermission name="mact:mactUser:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="mactUser">
			<tr>

				<td><a href="${ctx}/mact/mactUser/form?id=${mactUser.id}"></a>
					${mactUser.userName}
				</td>
				<td>
					${fns:getDictLabel(mactUser.userSex, 'sex', '')}
				</td>
				<td>
					<fmt:formatDate value="${mactUser.birthday}" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					${fns:getDictLabel(mactUser.education, 'education', '')}

				</td>
				<td>
					${mactUser.loginTime}
				</td>
				<td>
					${mactUser.recordTime}
				</td>
				<td>
					<a href="${ctx}/mact/mactUser/downloadFile?id=${mactUser.id}">${mactUser.fileName}</a>
				</td>


				<shiro:hasPermission name="mact:mactUser:edit"><td>
    				<a href="${ctx}/mact/mactUser/form?id=${mactUser.id}">修改</a>
    				<a href="${ctx}/mact/mactUser/downloadFile?id=${mactUser.id}">下载</a>
					<a href="${ctx}/mact/mactUser/delete?id=${mactUser.id}" onclick="return confirmx('确认要删除该条数据吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>