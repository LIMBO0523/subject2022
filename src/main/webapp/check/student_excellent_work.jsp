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
    <title>优秀成果展示</title>
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
                    <button class="glyphicon glyphicon-th btn btn-success" id="curriculum_btn">本周课表</button>
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
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger waves-effect text-left" data-dismiss="modal">关闭</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>


            <h5 class="page-header">优秀周报</h5>
            <div class="row" id="row_to_insert">

            </div>
            <h5 class="page-header">优秀学生</h5>
            <div class="row" id="row_to_insert_2">

            </div>
            <h5 class="page-header">优秀论文</h5>
            <div class="row" id="row_to_insert_3">

            </div>
            <h5 class="page-header">优秀实验</h5>
            <div class="row" id="row_to_insert_4">

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
<!-- Sweet-Alert  -->
<script src="../plugins/bower_components/sweetalert/sweetalert.min.js"></script>
<script src="../plugins/bower_components/sweetalert/jquery.sweet-alert.custom.js"></script>
<!--遮罩插件-->
<script src="js/busy-load/dist/app.min.js"></script>
</body>
<script>
    var number=<%=session.getAttribute("user_number")%>;
    var reports;
    $(function () {
        to_page_report(1);
        show_paper_table();
        show_exp_table();
    })

    function to_page_report(pn) {
        $.ajax({
            url:"http://localhost:8080/mes/exreport",
            data:"pn="+pn,
            type:"get",
            always:function () {
                $("#page-wrapper").busyLoad("hide");
            },
            success:function (result){
                show_report_table(result);
                show_stu_table();
            },
            fail:function (){
                swal({
                    title: "通信失败",
                    text: "请检查网络",
                    type: "error",
                    showConfirmButton: true,
                    confirmButtonText: "确定",
                })
            }
        })
    }
    function show_report_table(result){
        $("#row_to_insert").empty();
        reports=result.extend.page.list;
        if (result.extend.page.size==0){
            $("#row_to_insert").append(
                "没有记录"
            )
            return
        }
        for (var i=0;i<result.extend.page.size;i++){
            var brief=reports[i].thisWeek.substring(0,200)+"...";
            stuNumber[i]=reports[i].stuNumber;
            $("#row_to_insert").append(
                $("<div>").addClass("col-lg-4 col-md-4 col-sm-4 col-xs-12").append(
                    $("<a>").attr("id", i).attr("href", "javascript:void(0)").attr("onClick", "renderreport(this)").append(
                        $("<div>").addClass("panel panel-default").append(
                            $("<div>").addClass("panel-heading").append("周报").append(
                                $("<span>").addClass("label label-success m-l-5").append(reports[i].submitTime)
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

    //渲染modal中的周报
    function renderreport(inparam) {
        var arrayindex = $(inparam).attr("id")
        // alert(reports[arrayindex].thisWeek);
        $("#idtitle").html("周报")

        if (reports[arrayindex].submitTime != null)
            $("#idsubmitTime").html("提交时间：" + reports[arrayindex].submitTime)
        else
            $("#idsubmitTime").html("")

        $("#idthisWeek").html(reports[arrayindex].thisWeek)
        $("#idbugMeet").html(reports[arrayindex].stuProblem)
        $("#idnextWeek").html(reports[arrayindex].nextWeek)
        // $("#idscore").html(reports[arrayindex].score)
        $("#idreply").html(reports[arrayindex].reply)

        if (reports[arrayindex].replyTime != null)
            $("#idreplyTime").html("回复时间：" + reports[arrayindex].replyTime)
        else
            $("#idreplyTime").html("")

        $("#hiddenid").val(reports[arrayindex].id)

        $("#reportmodal").modal()
    }
    var stuNumber=new Array(3);
    function show_stu_table() {

        // 显示加载中遮罩
        $("#page-wrapper").busyLoad("show", {
            text: "加载中 ...",
            animation: "fade",
            background: "rgba(0, 0, 0, 0.86)",
            spinner: "cube-grid"
        });
        //发送请求
        $.ajax({
            type: "GET",
            url: "http://localhost:8080/mes/exstu",
            data: "stu1="+stuNumber[0]+"&stu2="+stuNumber[1]+"&stu3="+stuNumber[2],
        }).always(function () {
            //隐藏加载中遮罩
            $("#page-wrapper").busyLoad("hide");

        }).done(function (result) {
            var stu=result.extend.page.list;
            if (100 === result.code) {

                if (result.extend.page.size==0) {
                    $("#row_to_insert_2").append(
                        "没有学生"
                    )
                    return
                }

                for (var i = 0; i < result.extend.page.size; i++) {

                    var maleimg = $("<img>").addClass("img-circle img-responsive").attr("src", "avatar/male.png")
                    var femaleimg = $("<img>").addClass("img-circle img-responsive").attr("src", "avatar/female.png")

                    var imgnode = maleimg;

                    if (stu[i].gender == "女")
                        imgnode = femaleimg

                    $("#row_to_insert_2").append(
                        $("<div>").addClass("col-md-4 col-sm-4").append(
                            $("<a>").attr("id", i).attr("href", "javascript:void(0)").attr("onClick", "renderstudent(this)").append(
                                $("<div>").addClass("white-box").append(
                                    $("<div>").addClass("row").append(
                                        $("<div>").addClass("col-md-4 col-sm-4 text-center").append(
                                            imgnode
                                        )
                                    ).append(
                                        $("<div>").addClass("col-md-8 col-sm-8").append(
                                            $("<h3>").append(
                                                stu[i].name
                                            )
                                        ).append(
                                            $("<p>").append(
                                                "学号：" + stu[i].number
                                            )
                                        ).append(
                                            $("<p>").append(
                                                "邮箱：" + stu[i].email
                                            )
                                        ).append(
                                            $("<p>").append(
                                                "电话：" + stu[i].contact
                                            )
                                        )
                                    )
                                )
                            )
                        )
                    )
                }


            } else {
                swal({
                    title: "获取学生失败",
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
                confirmButtonText: "确定",
            })
        })
    }

    function show_paper_table(){
        // 显示加载中遮罩
        $("#page-wrapper").busyLoad("show", {
            text: "加载中 ...",
            animation: "fade",
            background: "rgba(0, 0, 0, 0.86)",
            spinner: "cube-grid"
        });
        //发送请求
        $.ajax({
            type: "GET",
            url: "http://localhost:8080/mes/expaper",
            data:"id="+number
        }).always(function () {
            //隐藏加载中遮罩
            $("#page-wrapper").busyLoad("hide");

        }).done(function (result){
            var paper=result.extend.page.list
            if (100 === result.code) {

                if (result.extend.page.size==0) {
                    $("#row_to_insert_3").append(
                        "没有文献"
                    )
                    return
                }
                for (var i = 0; i < result.extend.page.size; i++) {
                    var name=paper[i].pName.substring(0,4)+"..."
                    var key=paper[i].paper.split("-");
                    var img = $("<img>").addClass("img-circle img-responsive").attr("src", "avatar/paper.png")

                    $("#row_to_insert_3").append(
                        $("<div>").addClass("col-md-4 col-sm-4").append(
                            $("<a>").attr("id", i).attr("href", "javascript:void(0)").attr("onClick", "renderstudent(this)").append(
                                $("<div>").addClass("white-box").append(
                                    $("<div>").addClass("row").append(
                                        $("<div>").addClass("col-md-4 col-sm-4 text-center").append(
                                            img
                                        )
                                    ).append(
                                        $("<div>").addClass("col-md-8 col-sm-8").append(
                                            $("<h3>").append(
                                                name
                                            )
                                        ).append(
                                            $("<p>").append(
                                                "学生：" + paper[i].tas.name
                                            )
                                        ).append(
                                            $("<p>").append(
                                                "完成度：" + paper[i].pProgress
                                            )
                                        ).append(
                                            $("<p>").append(
                                                "关键词：" + key
                                            )
                                        )
                                    )
                                )
                            )
                        )
                    )
                }


            } else {
                swal({
                    title: "获取学生失败",
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
                confirmButtonText: "确定",
            })
        })
    }
    function show_exp_table(){
        // 显示加载中遮罩
        $("#page-wrapper").busyLoad("show", {
            text: "加载中 ...",
            animation: "fade",
            background: "rgba(0, 0, 0, 0.86)",
            spinner: "cube-grid"
        });
        //发送请求
        $.ajax({
            type: "GET",
            url: "http://localhost:8080/mes/exexp",
            data:"id="+number
        }).always(function () {
            //隐藏加载中遮罩
            $("#page-wrapper").busyLoad("hide");

        }).done(function (result){
            var exp=result.extend.page.list
            if (100 === result.code) {

                if (result.extend.page.size==0) {
                    $("#row_to_insert_4").append(
                        "没有文献"
                    )
                    return
                }
                for (var i = 0; i < result.extend.page.size; i++) {
                    var img = $("<img>").addClass("img-circle img-responsive").attr("src", "avatar/exp.png")

                    $("#row_to_insert_4").append(
                        $("<div>").addClass("col-md-4 col-sm-4").append(
                            $("<a>").attr("id", i).attr("href", "javascript:void(0)").attr("onClick", "renderstudent(this)").append(
                                $("<div>").addClass("white-box").append(
                                    $("<div>").addClass("row").append(
                                        $("<div>").addClass("col-md-4 col-sm-4 text-center").append(
                                            img
                                        )
                                    ).append(
                                        $("<div>").addClass("col-md-8 col-sm-8").append(
                                            $("<h3>").append(
                                                exp[i].eName
                                            )
                                        ).append(
                                            $("<p>").append(
                                                "学生：" + exp[i].tas.name
                                            )
                                        ).append(
                                            $("<p>").append(
                                                "评分呢：" + exp[i].eResult
                                            )
                                        ).append(
                                            $("<p>").append(
                                                "时间：" + exp[i].eTime
                                            )
                                        )
                                    )
                                )
                            )
                        )
                    )
                }


            } else {
                swal({
                    title: "获取学生失败",
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
                confirmButtonText: "确定",
            })
        })
    }
    $("#curriculum_btn").click(function (){
        window.location.href="curriculum_student.jsp"
    })
</script>
</html>
