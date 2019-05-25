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
				<div class="lowin-brand">
					<img src="${ctxStatic}/images/logo-icon.png" alt="logo">
				</div>
				<div class="lowin-wrapper">
					<div class="lowin-box lowin-login">
						<div class="lowin-box-inner">
							<form id="loginForm" action="${ctx}/mact/mobile/save" method="post">
								<p>MACT-Multimodal Auxiliary Check Toolkit for Depressed Individuals</p>
								<div class="lowin-group">
									<input type="text" class="lowin-input" name="userName" id="userName" placeholder="请输入姓名/name">
								</div>

								<div class="lowin-group">

									<div class="lowin-input">
										<label style="width: 50%;">请选择性别/sex</label>
										<label style="width: 20%; "><input name="userSex" type="radio" value="1" />男 </label>
										<label style="width: 20%; "><input name="userSex" type="radio" value="2" />女 </label>
									</div>
								</div>

								<div class="lowin-group">
									<input  id="birthday"  class="lowin-input" name = "birthday" placeholder="请选择出生日期/birthday"/>
								</div>

								<div class="lowin-group">
									<select id="education" name="education" class="lowin-input">
										<option value="">请选择学历/education</option>
										<option value="1">博士研究生</option>
										<option value="2">硕士研究生</option>
										<option value="3">本科</option>
										<option value="4">高职</option>
										<option value="5">大专</option>
										<option value="6">中专</option>
										<option value="7">高级中学</option>
										<option value="8">初级中学</option>
										<option value="9">小学</option>
										<option value="10">其他</option>
									</select>
								</div>

								<div>&nbsp;</div>
								<input id="btnSubmit" class="lowin-btn login-btn " style="margin-top: 4%;" type="submit" value="确认"/>
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

    var winHeight = $(window).height(); //获取当前页面高度
    $(window).resize(function() {
        var thisHeight = $(this).height();
        if (winHeight - thisHeight > 50) {
            //当软键盘弹出，在这里面操作
            //alert('aaa');
            $('body').css('height', winHeight + 'px');
        } else {
            //alert('bbb');
            //当软键盘收起，在此处操作
            $('body').css('height', '100%');
        }
    });

    $(function(){
        $('#birthday').mobiscroll().date({
            theme: "android-holo-light",
            mode: "scroller",
            display: "bottom",
            lang: "zh"
        });
    });

    $('#btnSubmit').on('click', function () {
        //判断姓名是否为空
        if(document.getElementById("userName").value=='')
        {
            layer.open({
                content: '姓名不能为空！！！'
                ,btn: '我知道了'
            });
            return false;
        }
        //判断性别是否为空
        var val=$('input:radio[name="userSex"]:checked').val();
        if(val==null){
            layer.open({
                content: '性别不能为空！！！'
                ,btn: '我知道了'
            });
            return false;
        }
        //判读出生日期是否为空
        if(document.getElementById("birthday").value=='')
        {
            layer.open({
                content: '出生日期不能为空！！！'
                ,btn: '我知道了'
            });
            return false;
        }
        //判断学历是否为空
        if(document.getElementById("education").value==''){
            layer.open({
                content: '学历不能为空！！！'
                ,btn: '我知道了'
            });
            return false;
        }
        return true;
    })

</script>


</body>
</html>