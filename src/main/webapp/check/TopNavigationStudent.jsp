<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- ============================================================== -->
<!-- Topbar header - style you can find in pages.scss -->
<!-- ============================================================== -->
<nav class="navbar navbar-default navbar-static-top m-b-0">
    <div class="navbar-header">
        <div class="top-left-part">
            <!-- Logo -->
            <a class="logo" href="/mes/index.jsp">
                <!-- Logo icon image, you can use font-icon also --><b>
                <!--This is dark logo icon--><img src="../plugins/images/admin-logo.png" alt="home" class="dark-logo" /><!--This is light logo icon--><img src="../plugins/images/admin-logo-dark.png" alt="home" class="light-logo" />
            </b>
                <!-- Logo text image you can use text also --><span class="hidden-xs">
                        <!--This is dark logo text--><img src="../plugins/images/admin.png" alt="home" class="dark-logo" /><!--This is light logo text--><img src="../plugins/images/admin.png" alt="home" class="light-logo" />
                     </span> </a>
        </div>
        <!-- /Logo -->

        <!-- Search input and Toggle icon -->
        <ul class="nav navbar-top-links navbar-left">
            <li><a href="javascript:void(0)" class="open-close waves-effect waves-light"><i class="ti-menu"></i></a></li>
            <li class="dropdown" >
                <a class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="#"> <i class="mdi mdi-gmail"></i>
                    <div class="notify"> <span class="heartbit"></span> <span class="point"></span> </div>
                </a>
                <ul class="dropdown-menu mailbox animated bounceInDown" id="appendtarget">
                    <li>
                        <div class="drop-title">这是你的通知</div>
                    </li>


<!--                    <li>
                        <div class="message-center">
                            <a href="student_excellent_report.html">
                                <div class="mail-contnet">
                                    <h5>你收到了一篇周报</h5> <span class="mail-desc">王慧燕给你分享了一篇周报</span> <span class="time">9:30 AM</span>
                                </div>
                            </a>
                        </div>
                    </li>-->


                </ul>
                <!-- /.dropdown-messages -->
            </li>


        </ul>
        <ul class="nav navbar-top-links navbar-right pull-right">
            <li class="dropdown">
                <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#"> <img src="../plugins/images/users/varun.jpg" alt="user-img" width="36" class="img-circle"><b class="hidden-xs"><span id="topnavi_name_top">没有读取到姓名</span></b><span class="caret"></span> </a>
                <ul class="dropdown-menu dropdown-user animated flipInY">
                    <li>
                        <div class="dw-user-box">
                            <div class="u-img"><img src="../plugins/images/users/varun.jpg" alt="user" /></div>
                            <div class="u-text">
                                <h4 ><span id="topnavi_name">没有读取到姓名</span></h4>
                            </div>
                        </div>
                    </li>
                    <li><a href="login.html"><i class="fa fa-power-off"></i> 注销</a></li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
    </div>
    <!-- /.navbar-header -->
    <!-- /.navbar-top-links -->
    <!-- /.navbar-static-side -->
</nav>
<!-- End Top Navigation -->

<script>
    $("#topnavi_name_top").text(localStorage.getItem("name"));
    $("#topnavi_name").text(localStorage.getItem("name"));
</script>

<script>

    function timestampToTime(timestamp) {
        if(timestamp==null)
            return null

        var date = new Date(timestamp * 1000);//时间戳为10位需*1000，时间戳为13位的话不需乘1000
        var Y = date.getFullYear() + '-';
        var M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
        var D = date.getDate() + ' ';
        var h = date.getHours() + ':';
        var m = date.getMinutes() + ':';
        var s = date.getSeconds();
        return Y+M+D+h+m+s;
    }

    $(document).ready(function () {

            //发送请求
            $.ajax({
                type : "POST",
                url : "/report/checkMyMotification.action",
                dataType : "json",
                contentType: "application/json",
                data : JSON.stringify({
                })
            }).always(function () {


            }).done(function (response) {

                if(undefined === response.code){
                    for(var index=0;index<response.data.length;index++){
                        $("#appendtarget").append(
                            $("<li>").append(
                                $("<div>").addClass("message-center").append(
                                    $("<a>").attr("href","student_excellent_report.html").append(
                                        $("<div>").append(
                                            $("<h5>").append(
                                                response.data[index].titleMo
                                            )
                                        ).append(
                                            $("<span>").addClass("mail-desc").append(
                                                response.data[index].contentMo
                                            )
                                        ).append(
                                            $("<span>").addClass("time").append(
                                                timestampToTime(response.data[index].generateTimeMo.toString().substring(0,10))
                                            )
                                        )
                                    )
                                )
                            )
                        )
                    }
                }
                else{

                }
            }).fail(function () {

            })

    })

</script>
