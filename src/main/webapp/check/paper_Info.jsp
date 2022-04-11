<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="initial-scale=1, width=device-width, shrink-to-fit=no">
	<title>Markdown Editor 1.0</title>
	<link rel="stylesheet" type="text/css" href="/mes/static/asset/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/mes/static/asset/css/plugins/font-awesome.min.css"/>
	<link rel="stylesheet" type="text/css" href="/mes/static/asset/css/plugins/animate.min.css"/>
	<link rel="stylesheet" type="text/css" href="/mes/static/asset/css/style.css" >

	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<style>
.header-label {
	font-size: 22px;
	font-family: verdana;
}
</style>
<div class='container'>
	<div class="row">
		<div class="panel">
			<div class="panel-body">
				<div class="col-md-12">
					<h3 class="animated fadeInLeft">文献学习笔记</h3>
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
<%--				<button class="btn btn-success btn-sm"  id="btnCopyToClipboard" >复制</button>--%>
				<button class="btn btn-success btn-sm"  id="btnUpdate">更新</button>
			  </li>
			</ul>
			<div style="height:4px;"></div>
			<div style="height:4px;"></div>
			<!-- Tab panes -->
			<div class="tab-content">
			  <div class="tab-pane container active" id="blocMarkdown">
				  <input name="id" hidden="hidden" id="id_input">
				  <textarea id="txtMarkdown" name="content" class='form-control' rows="20" cols="80">#写点什么吧！</textarea>
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
	})
	function GetContent() {
		$.ajax({
			url:"http://localhost:8080/mes/paper/"+id,
			type: "get",
			success: function (result){
				var paper=result.extend.paper;
				// alert(paper.content)
				$("#txtMarkdown").val(paper.content);
				$("#id_input").val(paper.id);
			}
		})
	}
	$("#btnUpdate").click(function (){
		//发送ajax请求保存更新的学生信息
		$.ajax({
			url: "http://localhost:8080/mes/paper/"+id,
			type:"PUT",
			data:$("#mainContainer form").serialize(),
			success: function (result){
				GetContent();
				alert("更新成功")
			}
		})

	})
</script>
	
<!-- ... -->
<script src="/static/js/external/jquery-1.11.1.min.js"></script>
<script src="/static/js/external/popper-1.16.0.min.js"></script>
<script src="/static/js/external/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pagedown/1.0/Markdown.Converter.min.js"></script>
<!-- <script src="https://unpkg.com/turndown/dist/turndown.js"></script> -->
</body>
</html>
