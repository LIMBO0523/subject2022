<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="verify_login.jsp" %><%--包含验证用户是否登录的代码 --%>
<!DOCTYPE html>
<html>
<base href="http://localhost:8080/mes/">
<head>
	<meta charset="UTF-8">
	<%--包含导航栏所用的css-start--%>
	<link rel="stylesheet" type="text/css" href="static/asset/css/bootstrap.min.css">
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="static/asset/css/style.css" >
	<%--包含导航栏所用的css-end--%>
	<link rel="stylesheet" href="static/css/page.css" />
	<script type="text/javascript" src="static/js/jquery.min.js" ></script>
	<script type="text/javascript" >
		$(function () {
			$("#esc").click(function () {
				return confirm("你确定要退出吗?")
			})
		})
	</script>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script src="https://fastly.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
</head>
<body>
<div id="left">
	<div class="bigTitle">研究生成长管理系统</div>


	<div id="left-menu">
		<div class="sub-left-menu scroll" style="width: 20%;">
			<ul class="nav nav-list">
				<li class=" ripple">
					<a class="tree-toggle nav-header">
						<span class="glyphicon glyphicon-user"></span>个人中心
						<span class="fa-angle-right fa right-arrow text-right"></span> </a>
					<ul class="nav nav-list tree">
						<li><a target="frame" href="check\personal_center.jsp">个人信息</a></li>
					</ul>
				</li>

				<li class=" ripple">
					<a class="tree-toggle nav-header">
						<span class="glyphicon glyphicon-education"></span>学生培养
						<span class="fa-angle-right fa right-arrow text-right"></span> </a>
					<ul class="nav nav-list tree">
						<li><a target="frame" href="check\student_list.jsp">学生信息</a></li>
						<li><a target="frame" href="check\curriculum.jsp">学生课表</a></li>
					</ul>

				</li>
				<li class="ripple">
					<a class="tree-toggle nav-header">
						<span class="glyphicon glyphicon-file"></span>文献学习
						<span class="fa-angle-right fa right-arrow text-right"></span>
					</a>
					<ul class="nav nav-list tree">
						<li><a target="frame" href="check\paper_list.jsp">学习进度</a></li>
						<li><a target="frame" href="check\paper_create.jsp">新的文献</a></li>
					</ul>
				</li>
				<li class="ripple">
					<a class="tree-toggle nav-header">
						<span class="glyphicon glyphicon-blackboard"></span>实验管理
						<span class="fa-angle-right fa right-arrow text-right"></span>
					</a>
					<ul class="nav nav-list tree">
						<li><a target="frame" href="check\experiment_list.jsp">实验进度</a></li>
						<li><a target="frame" href="check\experiment_create.jsp">新的实验</a></li>
					</ul>
				</li>
				<li class="ripple">
					<a class="tree-toggle nav-header">
						<span class="glyphicon glyphicon-comment"></span>消息中心
						<span class="fa-angle-right fa right-arrow text-right"></span>
					</a>
					<ul class="nav nav-list tree">
						<li><a target="frame" href="check\message_list.jsp">已收信息</a></li>
						<li><a target="frame" href="check\message_list2.jsp">已发信息</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>

</div>

<div id="right">
	<div id="right_top">
		<div class="leftTiyle" id="flTitle"></div>
		<div class="thisUser">
			当前用户：<%=session.getAttribute("user_id") %>
			<div class="logout"><a href="/mes/index.jsp" id="esc">退出</a></div>
		</div>

	</div>
	<div id="right_bottom">
		<iframe name="frame" scrolling="auto" width="100%" height="100%" frameborder="0" src="check\come.jsp"></iframe>
	</div>
</div>


<%--包含导航栏所用的js-start--%>
<script src="static/asset/js/jquery.min.js"></script>
<script src="static/asset/js/bootstrap.min.js"></script>
<script src="static/asset/js/plugins/jquery.nicescroll.js"></script>
<script src="static/asset/js/main.js"></script>
<%--包含导航栏所用的js-end--%>
</body>
</html>