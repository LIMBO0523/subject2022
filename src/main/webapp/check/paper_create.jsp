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
    <title>新的文献</title>
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
                <style>
                    .form-element {
                        font-size: 18px;
                        font-family: 黑体 ;
                    }
                    #p{
                        /*width:30px;*/
                        text-align: center;
                        font-size:24px;
                        font-family:楷体;
                    }
                </style>
                <div class="panel">
                    <div class="panel-body">
                        <div class="col-md-12">
                            <h3 class="animated fadeInLeft">新的文献</h3>
                        </div>
                    </div>
                </div>
                <div class="form-element">
                    <div class="col-md-12 padding-0">
                        <div class="col-md-12">
                            <div class="panel form-element-padding">
                                <div class="panel-heading">
                                </div>
                                <div class="panel-body" style="padding-bottom:30px;">
                                    <div class="col-md-12">
                                        <form id="new_paper">
                                            <div class="form-group">

                                                <label class="col-sm-1 control-label text-right" style="width:130px;">文献名</label>
                                                <div class="col-sm-10" style="width:800px;">
                                                    <input name="pName" type="text"  class="form-control" placeholder="母猪的产后护理">
                                                </div>
                                            </div>


                                            <div class="form-group">

                                                <label class="col-sm-1 control-label text-right" style="width:130px;">作者</label>
                                                <div class="col-sm-3" style="width:180px;">
                                                    <input name="pAuthor" id="pAuthor_add_input" type="text" class="form-control" placeholder="作者姓名">
                                                    <span class="help-block"></span>
                                                </div>


                                                <label class="col-sm-1 control-label text-right" style="width:130px;">日期</label>
                                                <div class="col-sm-3" style="width:180px;">
                                                    <input name="pTime" type="date" class="form-control">
                                                </div>


                                                <label class="col-sm-1 control-label text-right" style="width:130px;">导师</label>
                                                <div class="col-sm-3" style="width:180px;">
                                                    <input name="tas.tNumber" type="text" class="form-control">
                                                </div>
                                            </div>


                                            <div class="form-group">

                                                <label class="col-sm-1 control-label text-right" style="width:130px;">姓名</label>
                                                <div class="col-sm-3" style="width:180px;">
                                                    <input name="tas.name" id="stuName_add_input" type="text" placeholder="姓名" class="form-control">
                                                    <span class="help-block"></span>
                                                </div>

                                                <label class="col-sm-1 control-label text-right" style="width:130px;">学号</label>
                                                <div class="col-sm-3" style="width:180px;">
                                                    <input name="stuNumber" id="stuNumber_add_input" type="text" placeholder="例:1000" class="form-control">
                                                    <span class="help-block"></span>
                                                </div>

                                                <label class="col-sm-1 control-label text-right" style="width:130px;">年级</label>
                                                <div class="col-sm-3" style="width:180px;">
                                                    <%--                                    <input name="tas.grade" type="text" placeholder="研一" class="form-control">--%>
                                                    <select class="form-control" name="tas.grade" id="my_grade" >
                                                        <option> </option>
                                                        <option>研一</option>
                                                        <option>研二</option>
                                                        <option>研三</option>
                                                    </select>
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label class="col-sm-1 control-label text-right" style="width:130px;">论文介绍</label>
                                                <div class="col-sm-3" style="width:800px;">
                                                    <textarea name="reason" type="text" placeholder="..." class="form-control"></textarea>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12 text-center">
                                <button class="btn btn-danger"  type="button"  id="save_paper_button" style="width:80px;">提交</button>
                                <button class="btn btn-default" type="button" id="back_btn" style="width:80px;">返回</button>
                            </div>


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
        $("#TopNavigation").load("TopNavigationTeacher.jsp" , function () {
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

<script type="text/javascript">
    $("#save_paper_button").click(function (){
        if (!validate_add_form2()){
            return false;
        }
        $.ajax({
            url: 'http://localhost:8080/mes/paper',
            type: "POST",
            data: $("#new_paper").serialize(),
            success: function (result){
                window.location.href="paper_list_teacher.jsp"
            }
        })
    });
    function validate_add_form2(){
        //拿到要校验的数据，使用正则表达式
        var Author=$("#pAuthor_add_input").val();
        var regAuthor=/(^[a-zA-Z0-9_-]{3-16}$)|(^[\u2E80-\u9FFF]{2,6})/;
        if(!regAuthor.test(Author)){
            // alert("用户名可以是2-6位中文或3-16位英文和数字的组合");
            show_validate_msg("#pAuthor_add_input","error","作者可以是2-6位中文或3-16位英文和数字的组合")
            return false;
        }else{
            show_validate_msg("#pAuthor_add_input","success","");
        }

        var stuName=$("#stuName_add_input").val();
        var regName=/(^[a-zA-Z0-9_-]{3-16}$)|(^[\u2E80-\u9FFF]{2,6})/;
        if(!regName.test(stuName)){
            // alert("用户名可以是2-6位中文或3-16位英文和数字的组合");
            show_validate_msg("#stuName_add_input","error","可以是2-6位中文或3-16位英文和数字的组合")
            return false;
        }else{
            show_validate_msg("#stuName_add_input","success","");
        }

        var stuNumber=$("#stuNumber_add_input").val();
        var regNumber=/^\d{4}$/
        if (!regNumber.test(stuNumber)){
            show_validate_msg("#stuNumber_add_input","error","必须是4位数字，导师为2xxx，学生为1xxx")
            return false;
        }else {
            show_validate_msg("#stuNumber_add_input","success","");
        }
        return true
    }
    function show_validate_msg(ele,status,msg){
        //清楚当前元素的校验状态
        $(ele).parent().removeClass("has-error has-success");
        $(ele).next("span").text("");
        if ("success"==status){
            $(ele).parent().addClass("has-success");
            $(ele).next("span").text("")
        }else if ("error"==status){
            $(ele).parent().addClass("has-error");
            $(ele).next("span").text(msg);
        }
    }
    $("#back_btn").click(function (){
        window.location.href="paper_list_teacher.jsp";
    })
</script>
</body>

</html>
