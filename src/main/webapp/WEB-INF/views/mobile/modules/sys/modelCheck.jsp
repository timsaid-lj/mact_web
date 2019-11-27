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

	<!--主要样式-->
	<style>
		.box{
			font-family: 'Dosis', sans-serif;
			position: relative;
			overflow: hidden;
		}
		.box:before,
		.box:after{
			content: '';
			background: linear-gradient( #000dff 0%, #5cc3ff 30%);
			height: 150%;
			width: 100%;
			border-radius: 0 100% 0 0;
			opacity: 0;
			position: absolute;
			left: -50%;
			top: 100%;
			z-index: 1;
			transition: border-radius .5s ease-out,top .5s ease-out,opacity .3s ease-out;
		}
		.box:after{
			border-radius: 100% 0 0 0;
			left: 50%;
		}
		.box:hover:before,
		.box:hover:after{
			top: -50%;
			opacity: 0.9;
			border-radius: 0 35% 0 0;
		}
		.box:hover:after{ border-radius: 35% 0 0 0; }
		.box img{
			width: 100%;
			height: auto;
		}
		.box .box-content{
			color: #fff;
			text-align: center;
			width: 80%;
			opacity: 0;
			transform: translateX(-50%) translateY(-50%);
			position: absolute;
			top: 50%;
			left: 50%;
			z-index: 2;
			transition: all 0.3s ease 0.2s;
		}
		.box:hover .box-content{ opacity: 1; }
		.box .title{
			font-size: 25px;
			font-weight: 700;
			text-transform: uppercase;
			letter-spacing: 1px;
			margin: 0 0 7px;
		}
		.box .post{
			font-size: 18px;
			font-weight: 600;
			letter-spacing: 1px;
			text-transform: capitalize;
			margin: 0 0 10px;
			display: block;
		}
		.box .icon{
			padding: 0;
			margin: 0;
			list-style: none;
		}
		.box .icon li{
			margin: 0 5px;
			display: inline-block;
		}
		.box .icon li a{
			color: #fff;
			background: transparent;
			font-size: 14px;
			line-height: 31px;
			height: 35px;
			width: 35px;
			border: 1px solid #fff;
			border-bottom: none;
			border-right: none;
			border-radius: 50%;
			display: block;
			transition: all 0.3s ease;
		}
		.box .icon li  a:hover{
			color: #fff;
			box-shadow: 0 0 10px #000;
		}
		@media only screen and (max-width:990px){
			.box { margin: 0 0 30px; }
		}
	</style>

</head>
<body>
<div class="demo" style="margin-top:50px;">
	<div class="container">
		<div class="row">
			<div class="col-md-2 col-sm-4">
				<div class="box">
					<img src="${ctxStatic}/images/img-1.png"/>
					<div class="box-content">
						<h3 class="title">语音录音</h3>
						<span class="post">Voice recording</span>
						<ul class="icon">
							<li><a href="${ctx}/mact/mobile/radioJsp"><i class="fa fa-search"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-2 col-sm-4">
				<div class="box">
					<img src="${ctxStatic}/images/img-2.jpg" />
					<div class="box-content">
						<h3 class="title">抑郁症识别</h3>
						<span class="post">Depression recognition</span>
							<ul class="icon">
								<li><a href="#"><i class="fa fa-search"></i></a></li>
								<li><a href="#"><i class="fa fa-link"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


</body>
</html>