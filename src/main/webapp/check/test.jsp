<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
    <title>学生首页</title>
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
        <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
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
                <!-- 引用实验的模态框 -->
                <div id = "studentmodal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title" id="myLargeModalLabel"><span id="idtitle">引用实验</span></h4> </div>
                            <div class="modal-body">
                                <input type="hidden" id="hiddenid">
                                <div class="form-group">
                                    <label  class="control-label">内容</label>
                                    <input type="text" class="form-control" id="context">
                                </div>
                                <button class="btn btn-success waves-effect waves-light" type="button" id="update_button">
                                    <span class="btn-label">
                                        <i class="fa fa-refresh fa-spin"></i>
                                    </span>引用
                                </button>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger waves-effect text-left" data-dismiss="modal">关闭</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>

                <div class="container">
                    <%--        标题行--%>
                    <div class="row">
                        <div class="panel">
                            <div class="panel-body">
                                <div class="col-md-12">
                                    <h3 class="animated fadeInLeft">学生信息</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--        两个按钮--%>
                    <div class="row">
                        <div class="col-md-5">
                            <form class="form-inline">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="search" placeholder="输入学号或姓名进行搜索">
                                </div>
                                <button type="button" class="btn btn-info" id="stu_search_modal_button">
                                    <span class="glyphicon glyphicon-search"></span> 搜索</button>
                            </form>
                        </div>
                        <div class="col-md-4 col-md-offset-8">
                            <button class="btn btn-primary" id="Stu_add_model_btn">新增</button>
                            <button class="btn btn-danger" id="stu_delete_btn">删除</button>
                        </div>
                    </div>
                    <%--        显示表格数据--%>
                    <div class="row">
                        <table class="table table-hover" id="stu_table">
                            <thead>
                            <tr>
                                <th> <input type="checkbox" id="checkall"> </th>
                                <th>学号</th>
                                <th>姓名</th>
                                <th>性别</th>
                                <th>邮箱</th>
                                <th>联系方式</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>

                            </tbody>

                        </table>
                    </div>
                    <%--        显示分页信息--%>
                    <div class="row">
                        <%--            分页文字信息--%>
                        <div class="col-md-6" id="pageInfo_area">

                        </div>
                        <%--            分页信息--%>
                        <div class="col-md-6" id="page_nav_area">

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

        $(window).paroller();


        $("#LeftSlidebar").load("LeftSlidebarTeacher.jsp", function () {
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

<script src="paroller/jquery.paroller.min.js"></script>

<script src="/static/js/external/jquery-1.11.1.min.js"></script>
<script src="/static/js/external/popper-1.16.0.min.js"></script>
<script src="/static/js/external/bootstrap.min.js"></script>
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

    $("#Stu_add_model_btn").click(function (){
        $("#StuAddModel").modal({
            backdrop:"static"
        });
    })
</script>
</body>

</html>
