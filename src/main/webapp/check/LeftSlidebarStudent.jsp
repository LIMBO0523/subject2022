<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- ============================================================== -->
<!-- Left Sidebar - style you can find in sidebar.scss  -->
<!-- ============================================================== -->
<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav slimscrollsidebar">
        <div class="sidebar-head">
            <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu">导航</span></h3> </div>
        <div class="user-profile">
            <div class="dropdown user-pro-body">
                <div><img src="../plugins/images/users/varun.jpg" alt="user-img" class="img-circle"></div>
                <a href="#" class="dropdown-toggle u-dropdown" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span id="left_name">没有读取到姓名</span> <span class="caret"></span></a>
                <ul class="dropdown-menu animated flipInY">
                    <li><a href="/mes/index.jsp"><i class="fa fa-power-off"></i> 注销</a></li>
                </ul>
            </div>
        </div>
        <ul class="nav" id="side-menu">

            <li> <a href="student_index.jsp" class="waves-effect"><i class="mdi mdi-av-timer fa-fw"></i> <span class="hide-menu">学生首页</span></a> </li>

            <li> <a href="student_info.jsp" class="waves-effect"><i  class="mdi mdi-border-color fa-fw"></i> <span class="hide-menu">个人信息</span></a> </li>

            <li class="devider"></li>

            <li> <a href="curriculum_student.jsp" class="waves-effect"><i  class="mdi mdi-calendar-text fa-fw"></i> <span class="hide-menu">学生课表</span></a> </li>

            <li> <a href="paper_list_student.jsp" class="waves-effect"><i class="mdi mdi-account-multiple fa-fw"></i> <span class="hide-menu">文献学习</span></a> </li>

            <li> <a href="experiment_list_student.jsp" class="waves-effect"><i class="mdi mdi-creation fa-fw"></i> <span class="hide-menu">实验管理</span></a> </li>

            <li class="devider"></li>

            <li> <a href="receive_list_student.jsp" class="waves-effect"><i class="mdi mdi-key-variant fa-fw"></i> <span class="hide-menu">已收信息</span></a> </li>

            <li> <a href="send_list_student.jsp" class="waves-effect"><i class="mdi mdi-key-variant fa-fw"></i> <span class="hide-menu">已发信息</span></a> </li>

            <li><a href="/mes/index.jsp" class="waves-effect"><i class="mdi mdi-logout fa-fw"></i> <span class="hide-menu">注销</span></a></li>
            <li class="devider"></li>
            <li><a href="documentation.html" class="waves-effect"><i class="fa fa-circle-o text-danger"></i> <span class="hide-menu">帮助文档</span></a></li>
        </ul>
    </div>
</div>
<!-- ============================================================== -->
<!-- End Left Sidebar -->

<script>
    $(document).ready(function () {
        $("#left_name").text(localStorage.getItem("name"));
    })

</script>