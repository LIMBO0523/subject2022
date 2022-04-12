<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
    <title>我的历史周报</title>
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
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title">
                <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                    <button class="right-side-toggle waves-effect waves-light btn-info btn-circle pull-right m-l-20"><i class="ti-settings text-white"></i></button>
                </div>
                <!-- /.col-lg-12 -->
            </div>


        <div id = "reportmodal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" id="myLargeModalLabel"><span id="idtitle">周报标题占位符</span></h4> </div>
                    <div class="modal-body">
                        <input type="hidden" id="hiddenid">
                        <p id="idsubmitTime">提交时间占位符</p>
                        <hr />
                        <h4>本周总结</h4>
                        <p id="idthisWeek">总结内容</p>
                        <hr />
                        <h4>遇到的问题</h4>
                        <p id="idbugMeet">遇到的问题占位符</p>
                        <hr />
                        <h4>下周计划</h4>
                        <p id="idnextWeek">下周的计划占位符</p>
                        <hr />
                        <h4>教师评分</h4>
                        <p id="idscore">教师评分占位符</p>
                        <h4>教师评语</h4>
                        <p id="idreply">教师评语占位符</p>
                        <p id="idreplyTime">教师回复时间占位符</p>
                        <hr />
                        <button class="btn btn-danger waves-effect waves-light" type="button" id="delete_button">
                                    <span class="btn-label">
                                        <i class="fa fa-trash-o"></i>
                                    </span>删除
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


            <div class="row" id="row_to_insert">
<!--                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <a href="javascript:void(0)">
                    <div class="panel panel-default">
                        <div class="panel-heading">标题<span class="label label-info m-l-5">分数</span></div>
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body">
                                <p>内容，需要限制展示字数</p>
                            </div>
                        </div>
                    </div>
                    </a>
                </div>-->
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
        $("#LeftSlidebar").load("LeftSlidebarStudent.html", function () {
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
        $("#TopNavigation").load("TopNavigationStudent.html" , function () {



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
<!-- Sweet-Alert  -->
<script src="../plugins/bower_components/sweetalert/sweetalert.min.js"></script>
<script src="../plugins/bower_components/sweetalert/jquery.sweet-alert.custom.js"></script>
<!--遮罩插件-->
<script src="js/busy-load/dist/app.min.js"></script>
</body>
<script>
    function timestampToTime(timestamp) {
        if (timestamp == null)
            return null

        var date = new Date(timestamp * 1000);//时间戳为10位需*1000，时间戳为13位的话不需乘1000
        var Y = date.getFullYear() + '-';
        var M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-';
        var D = date.getDate() + ' ';
        var h = date.getHours() + ':';
        var m = date.getMinutes() + ':';
        var s = date.getSeconds();
        return Y + M + D + h + m + s;
    }

    //暂存response
    var externalrespnse;

    //渲染modal中的周报
    function renderreport(inparam) {
        var arrayindex = $(inparam).attr("id")
        //alert(externalrespnse.data[arrayindex].thisWeek)
        $("#idtitle").html(externalrespnse.data[arrayindex].title)

        if (externalrespnse.data[arrayindex].submitTime != null)
            $("#idsubmitTime").html("提交时间：" + timestampToTime(externalrespnse.data[arrayindex].submitTime.toString().substring(0, 10)))
        else
            $("#idsubmitTime").html("")

        $("#idthisWeek").html(externalrespnse.data[arrayindex].thisWeek)
        $("#idbugMeet").html(externalrespnse.data[arrayindex].bugMeet)
        $("#idnextWeek").html(externalrespnse.data[arrayindex].nextWeek)
        $("#idscore").html(externalrespnse.data[arrayindex].score)
        $("#idreply").html(externalrespnse.data[arrayindex].reply)

        if (externalrespnse.data[arrayindex].replyTime != null)
            $("#idreplyTime").html("回复时间：" + timestampToTime(externalrespnse.data[arrayindex].replyTime.toString().substring(0, 10)))
        else
            $("#idreplyTime").html("")


        if(externalrespnse.data[arrayindex].score!=null||externalrespnse.data[arrayindex].reply!=null){
            $("#delete_button").attr("disabled","true")
        }else{
            $("#delete_button").removeAttr("disabled")
        }

        $("#hiddenid").val(externalrespnse.data[arrayindex].id)

        $("#reportmodal").modal()
    }


    $(document).ready(function () {

        // 显示加载中遮罩
        $("#page-wrapper").busyLoad("show", {
            text: "加载中 ...",
            animation: "fade",
            background: "rgba(0, 0, 0, 0.86)",
            spinner: "cube-grid"
        });

        //发送请求
        $.ajax({
            type: "POST",
            url: "/report/viewMyAllReport.action",
            dataType: "json",
            contentType: "application/json",
            data: JSON.stringify({})
        }).always(function () {
            //隐藏加载中遮罩
            $("#page-wrapper").busyLoad("hide");

        }).done(function (response) {

            if (undefined === response.code) {

                externalrespnse = response

                if (response.data == null || response.data.length == 0) {
                    $("#row_to_insert").append(
                        "没有记录"
                    )
                    return
                }

                for (var i = 0; i < response.data.length; i++) {

                    var brief = response.data[i].thisWeek.substring(0, 200) + "...";

                    if (response.data[i].score >= 90) {
                        $("#row_to_insert").append(
                            $("<div>").addClass("col-lg-4 col-md-4 col-sm-4 col-xs-12").append(
                                $("<a>").attr("id", i).attr("href", "javascript:void(0)").attr("onClick", "renderreport(this)").append(
                                    $("<div>").addClass("panel panel-default").append(
                                        $("<div>").addClass("panel-heading").append(
                                            response.data[i].title).append(
                                            $("<span>").addClass("label label-success m-l-5").append(
                                                response.data[i].score
                                            )
                                        )
                                    ).append(
                                        $("<div>").addClass("panel-wrapper collapse in").append(
                                            $("<div>").addClass("panel-body").append(
                                                $("<p>").append(
                                                    brief
                                                )
                                            )
                                        )
                                    )
                                )
                            )
                        )
                    } else if (response.data[i].score >= 80) {
                        $("#row_to_insert").append(
                            $("<div>").addClass("col-lg-4 col-md-4 col-sm-4 col-xs-12").append(
                                $("<a>").attr("id", i).attr("href", "javascript:void(0)").attr("onClick", "renderreport(this)").append(
                                    $("<div>").addClass("panel panel-default").append(
                                        $("<div>").addClass("panel-heading").append(
                                            response.data[i].title).append(
                                            $("<span>").addClass("label label-warning m-l-5").append(
                                                response.data[i].score
                                            )
                                        )
                                    ).append(
                                        $("<div>").addClass("panel-wrapper collapse in").append(
                                            $("<div>").addClass("panel-body").append(
                                                $("<p>").append(
                                                    brief
                                                )
                                            )
                                        )
                                    )
                                )
                            )
                        )
                    } else if (response.data[i].score < 80 && response.data[i].score != null) {
                        $("#row_to_insert").append(
                            $("<div>").addClass("col-lg-4 col-md-4 col-sm-4 col-xs-12").append(
                                $("<a>").attr("id", i).attr("href", "javascript:void(0)").attr("onClick", "renderreport(this)").append(
                                    $("<div>").addClass("panel panel-default").append(
                                        $("<div>").addClass("panel-heading").append(
                                            response.data[i].title).append(
                                            $("<span>").addClass("label label-danger m-l-5").append(
                                                response.data[i].score
                                            )
                                        )
                                    ).append(
                                        $("<div>").addClass("panel-wrapper collapse in").append(
                                            $("<div>").addClass("panel-body").append(
                                                $("<p>").append(
                                                    brief
                                                )
                                            )
                                        )
                                    )
                                )
                            )
                        )
                    } else {
                        $("#row_to_insert").append(
                            $("<div>").addClass("col-lg-4 col-md-4 col-sm-4 col-xs-12").append(
                                $("<a>").attr("id", i).attr("href", "javascript:void(0)").attr("onClick", "renderreport(this)").append(
                                    $("<div>").addClass("panel panel-default").append(
                                        $("<div>").addClass("panel-heading").append(
                                            response.data[i].title).append(
                                            $("<span>").addClass("label label-info m-l-5").append(
                                                "未批改"
                                            )
                                        )
                                    ).append(
                                        $("<div>").addClass("panel-wrapper collapse in").append(
                                            $("<div>").addClass("panel-body").append(
                                                $("<p>").append(
                                                    brief
                                                )
                                            )
                                        )
                                    )
                                )
                            )
                        )
                    }
                }
            }
            else {
                swal({
                    title: "获取周报失败",
                    text: response.message,
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
                confirmButtonText: "确定",
            })
        })
    })


    $("#delete_button").click(function () {

        swal({
            title: "确定删除周报吗?",
            text: "删除后一切数据无法恢复!",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "删除",
            cancelButtonText:"取消",
            closeOnConfirm: false
        }, function(){




            //do delete
            // 显示加载中遮罩
            $("#page-wrapper").busyLoad("show", {
                text: "提交中 ...",
                animation: "fade",
                background: "rgba(0, 0, 0, 0.86)",
                spinner: "cube-grid"
            });
            //发送请求
            $.ajax({
                type: "POST",
                url: "/report/deleteReport.action",
                dataType: "json",
                contentType: "application/json",
                data: JSON.stringify({
                    id:$("#hiddenid").val()
                })
            }).always(function () {
                //隐藏加载中遮罩
                $("#page-wrapper").busyLoad("hide");

            }).done(function (response) {

                if (undefined === response.code) {
                    swal({
                        title: "删除成功",
                        text: response.message,
                        type: "success",
                        timer: 1000,
                    })
                    location.reload()

                }else {
                    swal({
                        title: "删除失败",
                        text: response.message,
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
                    confirmButtonText: "确定",
                })
            })




        })



    })
</script>
</html>
