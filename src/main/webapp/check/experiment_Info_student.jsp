<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="zh">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
	<title>实验内容</title>
	<link rel="stylesheet" type="text/css" href="../static/asset/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../static/asset/css/plugins/font-awesome.min.css"/>
	<link rel="stylesheet" type="text/css" href="../static/asset/css/plugins/animate.min.css"/>
	<link rel="stylesheet" type="text/css" href="../static/asset/css/style.css" >
	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- Bootstrap Core CSS -->
	<link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Menu CSS -->
	<link href="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
	<!-- animation CSS -->
	<link href="css/animate.css" rel="stylesheet">
	<!-- Custom CSS -->
	<link href="css/style.css" rel="stylesheet">
	<!-- color CSS -->
	<link href="css/colors/default.css" id="theme" rel="stylesheet">
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>

<body class="fix-header">


<!-- ============================================================== -->
<!-- Preloader -->
<!-- ============================================================== -->
<div class="preloader">
	<svg class="circular" viewBox="25 25 50 50">
		<circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10"></circle>
	</svg>
</div>
<!-- ============================================================== -->
<!-- Wrapper -->
<!-- ============================================================== -->
<div id="wrapper">
	<!-- ============================================================== -->
	<!-- Topbar header - style you can find in pages.scss -->
	<!-- ============================================================== -->
	<div id="TopNavigation"></div>
	<!-- End Top Navigation -->
	<!-- ============================================================== -->
	<!-- Left Sidebar - style you can find in sidebar.scss  -->
	<!-- ============================================================== -->
	<div id="LeftSlidebar"></div>
	<!-- ============================================================== -->
	<!-- End Left Sidebar -->
	<!-- ============================================================== -->

	<!-- ============================================================== -->
	<!-- Page Content -->
	<!-- ============================================================== -->
	<div id="page-wrapper" style="padding-bottom: 0">
		<div class="container-fluid" style="padding: 0">
			<div class="row bg-title">
				<div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
					<button class="right-side-toggle waves-effect waves-light btn-info btn-circle pull-right m-l-20"><i class="ti-settings text-white"></i></button>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<div>
				<style>
				</style>
				<!--文献引用的模态框 -->
				<div class="modal fade" id="papermodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title" >引用文献</h4>
							</div>
							<div class="modal-body">
								<form class="form-horizontal">
									<div class="form-group">
										<label class="col-sm-2 control-label">关键词</label>
										<div class="col-sm-10">
											<input disabled="disabled" type="text" class="form-control"  id="paper_key" >
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">文献内容</label>
										<div class="col-sm-10">
											<textarea type="text" class="form-control" name="pName" id="paper_context" cols="20" rows="30"></textarea>
										</div>
									</div>
								</form>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
								<button type="button" class="btn btn-primary" id="paper_yinyong_button">引用</button>
							</div>
						</div>
					</div>
				</div>
				<div class='container'>
					<div class="row">
						<div class="panel">
							<div class="panel-body">
								<div class="col-md-12">
									<h3 class="animated fadeInLeft">实验过程记录</h3>
								</div>
							</div>
						</div>
					</div>
					<div class='row'>
						<div id="mainContainer" class='col-md-10 ml-auto mr-auto' >
							<!-- Nav tabs -->
							<form>
								<ul id='navCompose' class="nav nav-tabs nav-tabs-justified ">
									<li class="nav-item">
										<a class="nav-link active" data-toggle="tab" href="#blocMarkdown">Markdown</a>
									</li>
									<li class="nav-item">
										<a class="nav-link " data-toggle="tab" href="#blocHtml">HTML</a>
									</li>
									<li class="nav-item">
										<a class="nav-link " data-toggle="tab" href="#blocPreview">Preview</a>
									</li>
									<li class="ml-auto">
										<button class="btn btn-success btn-sm"  id="btnUpdate">更新</button>
											<select id="paper_select">

											</select>
											<input type="button" class="btn btn-success btn-sm" value="引用"  id="btn_yinyong">
									</li>
								</ul>
								<div style="height:4px;"></div>
								<div style="height:4px;"></div>
								<!-- Tab panes -->
								<div class="tab-content">
									<div class="tab-pane container active" id="blocMarkdown">
										<input name="id" hidden="hidden" id="id_input">
										<textarea id="txtMarkdown" name="eStep" class='form-control' rows="20" cols="80">#写点什么吧！</textarea>
									</div>
									<div class="tab-pane container fade" id="blocHtml">
										<textarea readonly id="txtHtml" class='form-control' rows="20" cols="80"></textarea>
									</div>
									<div class="tab-pane container fade" id="blocPreview">
										<div id='divPreview'></div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>


			<!-- ============================================================== -->
			<!-- Right sidebar -->
			<!-- ============================================================== -->
			<!-- .right-sidebar -->
			<div class="right-sidebar">
				<div class="slimscrollright">
					<div class="rpanel-title">更换主题和颜色<span><i class="ti-close right-side-toggle"></i></span> </div>
					<div class="r-panel-body">
						<ul id="themecolors" class="m-t-20">
							<li><b>浅色</b></li>
							<li><a href="javascript:void(0)" data-theme="default" class="default-theme">1</a></li>
							<li><a href="javascript:void(0)" data-theme="green" class="green-theme">2</a></li>
							<li><a href="javascript:void(0)" data-theme="gray" class="yellow-theme">3</a></li>
							<li><a href="javascript:void(0)" data-theme="blue" class="blue-theme">4</a></li>
							<li><a href="javascript:void(0)" data-theme="purple" class="purple-theme">5</a></li>
							<li><a href="javascript:void(0)" data-theme="megna" class="megna-theme">6</a></li>
							<li><b>深色</b></li>
							<br/>
							<li><a href="javascript:void(0)" data-theme="default-dark" class="default-dark-theme">7</a></li>
							<li><a href="javascript:void(0)" data-theme="green-dark" class="green-dark-theme">8</a></li>
							<li><a href="javascript:void(0)" data-theme="gray-dark" class="yellow-dark-theme">9</a></li>
							<li><a href="javascript:void(0)" data-theme="blue-dark" class="blue-dark-theme">10</a></li>
							<li><a href="javascript:void(0)" data-theme="purple-dark" class="purple-dark-theme">11</a></li>
							<li><a href="javascript:void(0)" data-theme="megna-dark" class="megna-dark-theme working">12</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- ============================================================== -->
			<!-- End Right sidebar -->
			<!-- ============================================================== -->
		</div>
		<!-- /.container-fluid -->

	</div>
	<!-- ============================================================== -->
	<!-- End Page Content -->
	<!-- ============================================================== -->
</div>
<!-- /#wrapper -->
<!-- jQuery -->
<script src="../plugins/bower_components/jquery/dist/jquery.min.js"></script>
<script>
	$(document).ready(function () {
		$("#LeftSlidebar").load("LeftSlidebarStudent.jsp", function () {
			<!-- Menu Plugin JavaScript -->
			$.getScript("../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js",function () {
				<!-- Custom Theme JavaScript -->
				$.getScript("js/custom.min.js");

			});//<!-- Menu Plugin JavaScript -->

		});
		$("#TopNavigation").load("TopNavigationStudent.jsp" , function () {

		});


	});
</script>
<!-- Bootstrap Core JavaScript -->
<script src="bootstrap/dist/js/bootstrap.min.js"></script>

<!--slimscroll JavaScript -->
<script src="js/jquery.slimscroll.js"></script>
<!--Wave Effects -->
<script src="js/waves.js"></script>
<!--Style Switcher -->
<script src="../plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
<!-- wysuhtml5 Plugin JavaScript -->
<script src="../plugins/bower_components/html5-editor/wysihtml5-0.3.0.js"></script>
<script src="../plugins/bower_components/html5-editor/bootstrap-wysihtml5.js"></script>
<!-- Form Wizard JavaScript -->
<script src="../plugins/bower_components/jquery-wizard-master/dist/jquery-wizard.min.js"></script>
<!-- Sweet-Alert  -->
<script src="../plugins/bower_components/sweetalert/sweetalert.min.js"></script>
<script src="../plugins/bower_components/sweetalert/jquery.sweet-alert.custom.js"></script>

<!--遮罩插件-->
<script src="js/busy-load/dist/app.min.js"></script>


<script src="<c:url value="/static/js/external/jquery-1.11.1.min.js"/>"></script>
<script src="<c:url value="/static/js/external/popper-1.16.0.min.js"/>"></script>
<script src="<c:url value="/static/js/external/bootstrap.min.js"/>"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pagedown/1.0/Markdown.Converter.min.js"></script>

<script>
	function copyToClipboard (text) {
		if (navigator.clipboard) { // default: modern asynchronous API
			return navigator.clipboard.writeText(text);
		} else if (window.clipboardData && window.clipboardData.setData) {     // for IE11
			window.clipboardData.setData('Text', text);
			return Promise.resolve();
		} else {
			// workaround: create dummy input
			const input = h('input', { type: 'text' });
			input.value = text;
			document.body.append(input);
			input.focus();
			input.select();
			document.execCommand('copy');
			input.remove();
			return Promise.resolve();
		}
	}

	window.addEventListener("DOMContentLoaded", function(){
		var converter = new Markdown.Converter();

		$("#btnCopyToClipboard").click(function(){
			var txt = $("#navCompose .nav-link.active").text();
			switch(txt) {
				case "Markdown":
					copyToClipboard($("#txtMarkdown").text());
					alert("Markdown text copied to clipboard.");
					break;
				case "HTML":
					copyToClipboard($("#txtHtml").text());
					alert("HTML code copied to clipboard.");
					break;
				case "Preview":
					copyToClipboard($("#divPreview").html());
					alert("HTML code copied to clipboard.");
					break;
			}
		});

		$("#navCompose .nav-link").click(function(){
			console.log("clicked!");
			var txt = $(this).text();
			//console.log('txt:', txt);
			if (txt == 'HTML') {
				//console.log('now converting:', txt);
				var html = converter.makeHtml($("#txtMarkdown").val());
				$("#txtHtml").text(html);
			}
			else if (txt == "Preview") {
				var html = converter.makeHtml($("#txtMarkdown").val());
				$("#divPreview").html(html);
			}
		});
	});

</script>

<script type="text/javascript">
	var url = location.search; //获取url中"?"符后的字串
	url=url.split("&")
	var id=url[0].substring(4,url[0].length);
	$(function () {
		GetContent();
		var user_id="<%=session.getAttribute("user_number")%>";
		if (user_id>=2000){
			$("#txtMarkdown").attr("disabled","true")
		}
		GetPaper()
	})
	function GetContent() {
		$.ajax({
			url:"http://localhost:8080/mes/exp/"+id,
			type: "get",
			success: function (result){
				var exp=result.extend.exp;
				// alert(paper.content)
				$("#txtMarkdown").val(exp.eStep);
				$("#id_input").val(exp.id);
			}
		})
	}
	$("#btnUpdate").click(function (){
		//发送ajax请求保存更新的学生信息
		$.ajax({
			url: "http://localhost:8080/mes/exp/"+id,
			type:"PUT",
			data:$("#mainContainer form").serialize(),
			success: function (result){
				GetContent();
				if (100 === result.code) {
					swal({
						title: "更新成功",
						text: result.msg,
						type: "success",
						timer: 1000,
					})
					location.reload()
				}
			}
		})

	})

	function GetPaper(){
		$.ajax({
			url:"http://localhost:8080/mes/allpaper",
			type:"get",
			success: function (result){
				$("#paper_select").empty();
				var paper=result.extend.paper;
				for (var i=0;i<paper.length;i++)
				{
					($("<option></option>").val(paper[i].id).text(paper[i].pName)).appendTo($("#paper_select"))
				}
			}
		})
	}
	$("#btn_yinyong").click(function (){
		$("#papermodal").modal({
			backdrop:"static"
		})
		$.ajax({
			url:"http://localhost:8080/mes/selectedpaper",
			data: "id="+$("#paper_select").find("option:selected").val(),
			type:"get",
			success:function (result){
				// result.extend.exp.eStep;
				$("#paper_key").val(result.extend.paper.paper)
				$("#paper_context").val(result.extend.paper.content)
			}
		})
	})
	$("#paper_yinyong_button").click(function (){
		var text=getSelection();
		var oldContext=$("#txtMarkdown").val()
		var newContext=oldContext+"\n"+"```"+text+"```"+"\n";
		$("#txtMarkdown").empty().val(newContext);
		$("#papermodal").modal("hide")
	})
</script>

</body>
</html>
