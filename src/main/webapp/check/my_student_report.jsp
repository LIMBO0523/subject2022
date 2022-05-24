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
    <title>我学生的周报</title>
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
                    <button class="btn btn-success" id="excellent_work_diplay">优秀工作展示</button>
                    <button class="right-side-toggle waves-effect waves-light btn-info btn-circle pull-right m-l-20"><i class="ti-settings text-white"></i></button>
                </div>
                <!-- /.col-lg-12 -->
            </div>


            <div id = "reportmodal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myLargeModalLabel"><span id="idtitle">周报标题占位符</span></h4>
                        </div>
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
<%--                            <h4>教师评分</h4>--%>
<%--                            <p id="idscore">教师评分占位符</p>--%>
                            <h4>教师评语</h4>
                            <p id="idreply">教师评语占位符</p>
                            <p id="idreplyTime">教师回复时间占位符</p>
                            <hr />
                            <h4>提交评价:</h4>
                            <div>
                                <input type="hidden" id="hiddenid">
                                <div class="form-group" hidden="hidden">
                                    <label for="recipient-score" class="control-label">打分（推荐：100分制）：</label>
                                    <input type="number" class="form-control" id="recipient-score">
                                </div>
                                <div class="form-group">
                                    <label for="recipient-content" class="control-label">评语（不多于255字）：</label>
                                    <textarea class="form-control" id="recipient-content"></textarea>
                                </div>
                                <button class="btn btn-success waves-effect waves-light" type="button" id="comment_button">
                                    <span class="btn-label">
                                        <i class="fa fa-refresh fa-spin"></i>
                                    </span>提交或覆盖
                                </button>
                            </div>
                            <hr />
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
    var time;
    $(function () {
        to_page(1);
    })
    //渲染modal中的周报
    function renderreport (inparam){
        var arrayindex = $(inparam).attr("id")
        //alert(externalrespnse.data[arrayindex].thisWeek)
        $("#idtitle").html("周报");

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


        $("#hiddenid").val(reports[arrayindex].id)//数据库id用于提交评价


        $("#reportmodal").modal()
    }




    function to_page(pn) {
        $.ajax({
            url:"http://localhost:8080/mes/report",
            data:"pn="+pn,
            type:"get",
            always:function () {
                $("#page-wrapper").busyLoad("hide");
            },
            success:function (result){
                show_report_table(result);
                build_pageInfo(result);
                build_page_nav(result);
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
        // $("#row_to_insert").append(
        //     result.extend.page.size
        // )
        if (result.extend.page.size==0){
            $("#row_to_insert").append(
                "没有记录"
            )
            return
        }
        for (var i=0;i<result.extend.page.size;i++){
            var brief=reports[i].thisWeek.substring(0,200)+"...";
            $("#row_to_insert").append(
                $("<div>").addClass("col-lg-4 col-md-4 col-sm-4 col-xs-12").append(
                    $("<a>").attr("id", i).attr("href", "javascript:void(0)").attr("onClick", "renderreport(this)").append(
                        $("<div>").addClass("panel panel-default").append(
                            $("<div>").addClass("panel-heading").append("周报").append(
                                $("<span>").addClass("label label-success m-l-5").append("100")
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
    function build_pageInfo(result){
        $("#pageInfo_area").empty();
        currentPage=result.extend.page.pageNum
        $("#pageInfo_area").append("当前第"+result.extend.page.pageNum+"页" +
            ",总"+result.extend.page.pages+"页,共"+result.extend.page.total+"条记录");
    }
    //解析分页条信息
    function build_page_nav(result){
        $("#page_nav_area").empty();
        var ul=$("<ul></ul>").addClass("pagination")

        var firstPageLi=$("<li></li>").append($("<a></a>").append("首页"))
        var prePageLi=$("<li></li>").append($("<a></a>").append("&laquo;"))
        if (result.extend.page.hasPreviousPage == false)
        {
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        }else{
            firstPageLi.click(function () {
                to_page(1);
            })
            prePageLi.click(function () {
                to_page(result.extend.page.pageNum-1)
            })
        }
        var lastPageLi=$("<li></li>").append($("<a></a>").append("末页"))
        var nextPageLi=$("<li></li>").append($("<a></a>").append("&raquo;"))
        if (result.extend.page.hasNextPage == false)
        {
            lastPageLi.addClass("disabled");
            nextPageLi.addClass("disabled");
        }else{
            lastPageLi.click(function () {
                to_page(result.extend.page.pages);
            })
            nextPageLi.click(function () {
                to_page(result.extend.page.pageNum+1)
            })
        }

        ul.append(firstPageLi).append(prePageLi);

        $.each(result.extend.page.navigatepageNums,function (i,n){
            var num=$("<li></li>").append($("<a></a>").append(n))
            if (result.extend.page.pageNum == n){
                num.addClass("active")
            }
            num.click(function (){
                to_page(n)
            })
            ul.append(num);
        })
        ul.append(nextPageLi).append(lastPageLi)
        // var nav=$("<nav></nav>").append(ul).appendTo("#page_nav_area");
    }

    //提交评论
    $("#comment_button").click(function () {

        // 显示加载中遮罩
        $("#page-wrapper").busyLoad("show", {
            text: "提交中 ...",
            animation: "fade",
            background: "rgba(0, 0, 0, 0.86)",
            spinner: "cube-grid"
        });

        var id= $("#hiddenid").val()
        var reply= $("#recipient-content").val()
        var date=new Date();
        time=date.getFullYear()+"-"+date.getMonth()+"-"+date.getDay()
        //发送请求
        $.ajax({
            type : "PUT",
            url : "http://localhost:8080/mes/report",
            data : "id="+id+"&reply="+reply,
        }).always(function () {
            //隐藏加载中遮罩
            $("#page-wrapper").busyLoad("hide");

        }).done(function (result) {
            if(100 === result.code){
                swal({
                    title: "提交成功",
                    text: result.msg,
                    type: "success",
                    timer: 1000,
                })

                location.reload()

            }
            else{
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
                confirmButtonText: "重新提交",
            })
        })
    })
    $("#excellent_work_diplay").click(function (){
        window.location.href="student_excellent_work.jsp";
    })
</script>
</html>
