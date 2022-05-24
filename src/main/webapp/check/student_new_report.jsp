<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
    <title>新的周报</title>
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
    <!--遮罩-->
    <link href="css/busy-load/dist/app.min.css" rel="stylesheet">
    <!-- Wizard CSS -->
    <link href="../plugins/bower_components/jquery-wizard-master/css/wizard.css" rel="stylesheet">

    <link rel="stylesheet" href="../plugins/bower_components/html5-editor/bootstrap-wysihtml5.css" />

    <!--alerts CSS -->
    <link href="../plugins/bower_components/sweetalert/sweetalert.css" rel="stylesheet" type="text/css">
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
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title">
                <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                    <button class="right-side-toggle waves-effect waves-light btn-info btn-circle pull-right m-l-20"><i class="ti-settings text-white"></i></button>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div id = "taskmodal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="insertmyLargeModalLabel"><span >本周完成多少目标？</span></h4> </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label class="control-label">学号</label>
                                <input type="text" class="form-control" name="stuNumber" id="stuNumber">
                            </div>
                            <div class="form-group">
                                <label class="control-label">完成目标数</label>
                                <input type="email" class="form-control" name="taskNumber" id="taskNumber">
                            </div>
                            <button class="btn btn-success waves-effect waves-light" type="button" id="submint_button">
                                    <span class="btn-label">
                                        <i class="fa fa-check"></i>
                                    </span>提交
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
            <div class="row">
                <div class="col-md-12">

                    <p>插入图片时请使用专用的外链平台，否则图片链接可能在一段时间后失效</p>
                    <div class="panel-group wiz-aco" id="accordion" role="tablist" aria-multiselectable="true">

                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        本周总结
                                    </a>
                                </h4> </div>
                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="white-box">
                                            <form method="post">
                                                <div class="form-group">
                                                    <textarea id="edit1" class="textarea_editor form-control" rows="15" placeholder="Enter text ..."></textarea>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingTwo">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        困难总结
                                    </a>
                                </h4> </div>
                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="white-box">
                                            <form method="post">
                                                <div class="form-group">
                                                    <textarea id="edit2" class="textarea_editor form-control" rows="15" placeholder="Enter text ..."></textarea>                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingThree">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        下周计划
                                    </a>
                                </h4> </div>
                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="white-box">
                                            <form method="post">
                                                <div class="form-group">
                                                    <textarea id="edit3" class="textarea_editor form-control" rows="15" placeholder="Enter text ..."></textarea>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
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
</body>
<script type="text/javascript">

    var taskNumber;
    $(document).ready(function () {


        (function () {
            $('#accordion').wizard({
                step: '[data-toggle="collapse"]',
                buttonsAppendTo: '.panel-collapse',
                templates: {
                    buttons: function () {
                        var options = this.options;
                        return '<div class="panel-footer"><ul class="pager">' + '<li class="previous">' + '<a href="#' + this.id + '" data-wizard="back" role="button">' + options.buttonLabels.back + '</a>' + '</li>' + '<li class="next">' + '<a href="#' + this.id + '" data-wizard="next" role="button">' + options.buttonLabels.next + '</a>' + '<a href="#' + this.id + '" data-wizard="finish" role="button">' + options.buttonLabels.finish + '</a>' + '</li>' + '</ul></div>';
                    }
                },
                onBeforeShow: function (step) {
                    step.$pane.collapse('show');
                },
                onBeforeHide: function (step) {
                    step.$pane.collapse('hide');
                },
                onFinish: function () {

                    // 显示加载中遮罩
                    $("#page-wrapper").busyLoad("show", {
                        text: "提交中 ...",
                        animation: "fade",
                        background: "rgba(0, 0, 0, 0.86)",
                        spinner: "cube-grid"
                    });

                    var stuNumber=<%=session.getAttribute("user_number")%>
                    var thisWeek=$("#edit1").val()
                    var stuProblem=$("#edit2").val()
                    var nextWeek=$("#edit3").val()
                    //发送请求
                    $.ajax({
                        type: "POST",
                        url: "http://localhost:8080/mes/report",
                        data:"stuNumber="+stuNumber+"&thisWeek="+thisWeek+"&stuProblem="+stuProblem+
                            "&nextWeek="+nextWeek+"&taskNumber="+taskNumber,
                    }).always(function () {
                        //隐藏加载中遮罩
                        $("#page-wrapper").busyLoad("hide");

                    }).done(function (result) {

                        if (100 === result.code) {
                            swal({
                                title: "提交成功",
                                text: result.msg,
                                type: "success",
                                timer: 1000,
                            })
                            window.location.assign("report_student.jsp")
                        }
                        else {
                            swal({
                                title: "提交失败",
                                text: result.msg,
                                type: "error",
                                timer: 1000,
                                showConfirmButton: false
                            })
                        }
                    }).fail(function () {
                        swal({
                            title: "通信失败",
                            text: "请检查网络",
                            type: "error",
                            showConfirmButton: true,
                            confirmButtonText: "重新登录",
                        })
                    })
                }
            });
        })();
        $("#taskmodal").modal();
    })
    $("#submint_button").click(function (){
        taskNumber=$("#taskNumber").val()
        //隐藏加载中遮罩
        $("#taskmodal").modal("hide");
    })
</script>
<script>
    $(document).ready(function() {
        $('#edit1').wysihtml5();
        $('#edit2').wysihtml5();
        $('#edit3').wysihtml5();
    });
</script>
</html>
