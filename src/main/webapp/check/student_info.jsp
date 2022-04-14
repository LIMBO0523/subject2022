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
                <div class="modal fade" tabindex="-1" role="dialog" id="my_information">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">警告</h4>
                            </div>
                            <div class="modal-body">
                                <p>是否保存做出的修改？</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                <button type="button" class="btn btn-primary" id="Save_changes">保存</button>
                            </div>
                        </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                </div><!-- /.modal -->
                <div class="panel">
                    <div class="panel-body">
                        <div class="col-md-12">
                            <h3 class="animated fadeInLeft">个人信息</h3>
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
                                        <form id="UpdateForm">
                                            <div>
<%--                                                <div class="col-sm-12"  >--%>
<%--                                                    <img src="../plugins/images/users/varun.jpg" >--%>
<%--                                                </div>--%>
                                            </div>


                                            <div class="form-group">
                                                <label class="col-sm-1 control-label text-right" style="width:130px;">姓名</label>
                                                <div class="col-sm-4" style="width:180px;" >
                                                    <input name="name" type="text"  class="form-control" id="my_name">
                                                </div>

                                                <label class="col-sm-1 control-label text-right" style="width:130px;">学号</label>
                                                <div class="col-sm-4" style="width:180px;">
                                                    <input name="number" type="text" readonly="readonly" placeholder="110" class="form-control" id="my_number">
                                                </div>

                                                <label class="col-sm-1 control-label text-right" style="width:130px;">性别</label>
                                                <div class="col-sm-4" style="width:180px;">
                                                    <select class="form-control" name="gender" id="my_gender">
                                                        <option>男</option>
                                                        <option>女</option>
                                                    </select>
                                                </div>


<%--                                                <label class="col-sm-1 control-label text-right" style="width:130px;">年级</label>--%>
<%--                                                <div class="col-sm-3" style="width:180px;">--%>
<%--                                                    <select class="form-control" name="grade" id="my_grade" >--%>
<%--                                                        <option> </option>--%>
<%--                                                        <option>研一</option>--%>
<%--                                                        <option>研二</option>--%>
<%--                                                        <option>研三</option>--%>
<%--                                                    </select>--%>
<%--                                                </div>--%>
                                            </div>


                                            <div class="form-group">

                                                <label class="col-sm-1 control-label text-right" style="width:130px;">年级</label>
                                                <div class="col-sm-4" style="width:180px;">
                                                    <select class="form-control" name="grade" id="my_grade" >
                                                        <option> </option>
                                                        <option>研一</option>
                                                        <option>研二</option>
                                                        <option>研三</option>
                                                    </select>
                                                </div>

                                                <label class="col-sm-1 control-label text-right" style="width:130px;">家庭住址</label>
                                                <div class="col-sm-4" style="width:180px;">
                                                    <input name="address" type="text" placeholder="例：08:30" class="form-control" id="my_address">
                                                </div>

                                                <label class="col-sm-1 control-label text-right" style="width:130px;">联系方式</label>
                                                <div class="col-sm-4" style="width:180px;">
                                                    <input name="contact" type="text" placeholder="例：12:35" class="form-control" id="my_contact">
                                                </div>
                                            </div>


                                            <div class="form-group">

                                                <label class="col-sm-1 control-label text-right" style="width:130px;">邮箱</label>
                                                <div class="col-sm-4" style="width:180px;">
                                                    <input name="email" type="text" placeholder="例：2100" class="form-control" id="my_email">
                                                </div>
                                                <label class="col-sm-1 control-label text-right" style="width:130px;">生日</label>
                                                <div class="col-sm-4" style="width:180px;">
                                                    <input name="birthday" type="text" placeholder="例：1600" class="form-control" id="my_birthday">
                                                </div>

                                                <label class="col-sm-1 control-label text-right" style="width:130px;">导师工号</label>
                                                <div class="col-sm-4" style="width:180px;">
                                                    <input name="tNumber" type="text"  class="form-control" id="my_tNumber">
                                                </div>

                                            </div>
                                        </form>


                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12 text-center" id="p">
                                <button class="submit btn btn-danger" type="button" id="update_btn" style="width:80px;">修改</button>
                                <button class="btn btn-default" type="button"  id="back_btn" style="width:80px;">返回</button>
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


        $("#LeftSlidebar").load("LeftSlidebarStudent.jsp", function () {
            <!-- Menu Plugin JavaScript -->
            $.getScript("../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js",function () {
                <!-- Custom Theme JavaScript -->
                $.getScript("js/custom.min.js");

                //获取各个项目的数量
                /*                $.ajax({
                                    type : "POST",
                                    url : "/admin/getNeedCheck",
                                    data : "",
                                    dataType : "json",
                                    contentType: "application/json",
                                }).done(function (res) {
                                    //左侧菜单栏数量
                                    $("#totalneedcheckspan").text(res.data.mlxysspneedcheck.itemsCounts+res.data.wgxwjsgneedcheck.itemsCounts+res.data.wwgdtjyneedcheck.itemsCounts+res.data.zyqcneedcheck.itemsCounts);
                                    $("#mlxysspneedcheckspan").text(res.data.mlxysspneedcheck.itemsCounts);
                                    $("#wgxwjsgneedcheckspan").text(res.data.wgxwjsgneedcheck.itemsCounts);
                                    $("#wwgdtjyneedcheckspan").text(res.data.wwgdtjyneedcheck.itemsCounts);
                                    $("#zyqcneedcheckspan").text(res.data.zyqcneedcheck.itemsCounts);
                                }).fail(function () {
                                });*/


            });//<!-- Menu Plugin JavaScript -->

        });
        $("#TopNavigation").load("TopNavigationStudent.jsp" , function () {



            // $.ajax({
            //     type : "GET",
            //     url : "/admin/queryCurrentAdmin",
            //     data : "",
            //     dataType : "json",
            //     contentType: "application/json",
            // }).done(function (res) {
            //     $("#adminname1").text(res.data.adminuser.name);
            //     $("#adminname2").text(res.data.adminuser.name);
            //     $("#adminusername").text(res.data.adminuser.username);
            // }).fail(function () {
            // });
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
    $.ajax({
        url:"http://localhost:8080/mes/stu/"+<%=session.getAttribute("user_number") %>,
        type: "get",
        success: function (result){
            var tas=result.extend.tas;
            $("#my_name").val(tas.name);
            $("#my_gender").val(tas.gender);
            $("#my_number").val(tas.number);

            $("#my_address").val(tas.address);
            $("#my_contact").val(tas.contact);
            $("#my_email").val(tas.email);
            $("#my_birthday").val(tas.birthday);
            $("#my_tNumber").val(tas.tNumber);
            if (parseInt(tas.number)>=2000){
                $("#my_position").val(tas.grade);
                $("#my_grade").attr("disabled","disabled")
                $("#my_tNumber").attr("disabled","disabled")
            }
            if(parseInt(tas.number)<2000){
                $("#my_grade").val(tas.grade);
                $("#my_position").attr("disabled","disabled")
            }
        }
    })

    //点击修改弹出提示框
    $("#update_btn").click(function (){
        $("#my_information").modal({
            backdrop:"static"
        })
    });

    $("#Save_changes").click(function (){
        //发送ajax请求保存更新的个人信息
        $.ajax({
            url: "http://localhost:8080/mes/stu/"+<%=session.getAttribute("user_number") %>,
            type:"PUT",
            data:$("#UpdateForm").serialize(),
            success: function (result){
                $("#my_information").modal("hide")
                window.location.href="student_info.jsp"
            }
        })
    });

    //点击返回，返回到HELLO界面
    $("#back_btn").click(function (){
        window.location.href="student_index.jsp"
    })
</script>
</body>

</html>
