<!-- ============================================================== -->
<!-- Left Sidebar - style you can find in sidebar.scss  -->
<!-- ============================================================== -->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav slimscrollsidebar">
        <div class="sidebar-head">
            <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu">导航</span></h3> </div>
        <div class="user-profile">
            <div class="dropdown user-pro-body">
                <div><img src="../plugins/images/users/varun.jpg" alt="user-img" class="img-circle"></div>
                <a href="#" class="dropdown-toggle u-dropdown" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span id="left_name">没有读取到姓名</span> <span class="caret"></span></a>
                <ul class="dropdown-menu animated flipInY">
                        <li><a href="../index.jsp"><i class="fa fa-power-off"></i> 注销</a></li>
                </ul>
            </div>
        </div>
        <ul class="nav" id="side-menu">

            <li> <a href="admin_index.jsp" class="waves-effect"><i class="mdi mdi-av-timer fa-fw"></i> <span class="hide-menu">管理员首页</span></a> </li>

            <li class="devider"></li>

            <li> <a href="student_list_admin.jsp" class="waves-effect"><i  class="glyphicon glyphicon-th-large fa-fw"></i> <span class="hide-menu">学生信息</span></a> </li>

            <li> <a href="teacher_list.jsp" class="waves-effect"><i  class="mdi mdi-home-outline fa-fw"></i> <span class="hide-menu">教师信息</span></a> </li>

            <li><a href="../index.jsp" class="waves-effect"><i class="mdi mdi-logout fa-fw"></i> <span class="hide-menu">注销</span></a></li>
            <li class="devider"></li>
            <li><a href="documentation.jsp" class="waves-effect"><i class="fa fa-circle-o text-danger"></i> <span class="hide-menu">帮助文档</span></a></li>
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