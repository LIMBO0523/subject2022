<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="zh">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
    <title>学生管理</title>
    <link rel="stylesheet" type="text/css" href="../static/asset/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../static/asset/css/plugins/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="../static/asset/css/plugins/animate.min.css"/>
    <link rel="stylesheet" type="text/css" href="../static/asset/css/style.css" >
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
    <div id="page-wrapper" style="padding-bottom: 0">
        <div class="container-fluid" style="padding: 0">
            <div class="row bg-title">
                <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                    <button class="right-side-toggle waves-effect waves-light btn-info btn-circle pull-right m-l-20"><i class="ti-settings text-white"></i></button>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div>
                <!-- 学生统计模态框 -->
                <div class="modal fade" id="StuModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" >学生数据统计</h4>
                            </div>
                            <div class="modal-body">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label for="stuName_add_input" class="col-sm-2 control-label">姓名</label>
                                        <div class="col-sm-10">
                                           王宇琛
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label  class="col-sm-6 control-label">本学期:2022年春</label>
                                    </div>
                                    <div class="form-group">
                                        <label  class="col-sm-2 control-label">完成任务:</label>
                                        <div class="col-sm-10">10</div>
                                    </div>
                                    <div class="form-group">
                                        <label for="stuEmail_add_input" class="col-sm-2 control-label">完成文献:</label>
                                        <div class="col-sm-10">1</div>
                                    </div>
                                    <div class="form-group">
                                        <label for="stuEmail_add_input" class="col-sm-2 control-label">完成实验:</label>
                                        <div class="col-sm-10">3</div>
                                    </div>
                                    <div class="form-group">
                                        <label for="stuEmail_add_input" class="col-sm-2 control-label">其他任务:</label>
                                        <div class="col-sm-10">6</div>
                                    </div>
                                    <div class="form-group">
                                        <label  class="col-sm-6 control-label">入学至今</label>
                                    </div>
                                    <div class="form-group">
                                        <label  class="col-sm-2 control-label">完成任务:</label>
                                        <div class="col-sm-10">11</div>
                                    </div>
                                    <div class="form-group">
                                        <label for="stuEmail_add_input" class="col-sm-2 control-label">完成文献:</label>
                                        <div class="col-sm-10">1</div>
                                    </div>
                                    <div class="form-group">
                                        <label for="stuEmail_add_input" class="col-sm-2 control-label">完成实验:</label>
                                        <div class="col-sm-10">4</div>
                                    </div>
                                    <div class="form-group">
                                        <label for="stuEmail_add_input" class="col-sm-2 control-label">其他任务:</label>
                                        <div class="col-sm-10">6</div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 学生修改的模态框 -->
                <div class="modal fade" id="StuUpdateModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" >学生信息修改</h4>
                            </div>
                            <div class="modal-body">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label for="stuNumber_add_input" class="col-sm-2 control-label">学号</label>
                                        <div class="col-sm-10">
                                            <input type="text" readonly="readonly" class="form-control" name="number" id="stuNumber_update_input" placeholder="学号">
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="stuName_add_input" class="col-sm-2 control-label">姓名</label>
                                        <div class="col-sm-10">
                                            <input type="text" readonly="readonly" class="form-control" name="name" id="stuName_update_input" placeholder="姓名">
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label  class="col-sm-2 control-label">性别</label>
                                        <div class="col-sm-10">
                                            <label class="radio-inline">
                                                <input type="radio" name="gender" id="stuGender1_update_input" value="男" checked="checked"> 男
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="gender" id="stuGender2_update_input" value="女" > 女
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="stuEmail_add_input" class="col-sm-2 control-label">年级</label>
                                        <div class="col-sm-10">
                                            <%--                            <input type="text" class="form-control" name="grade" id="stuGrade_update_input" placeholder="年级">--%>
                                            <select class="form-control" name="grade" id="stuGrade_update_input" >
                                                <option> </option>
                                                <option>研一</option>
                                                <option>研二</option>
                                                <option>研三</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="stuEmail_add_input" class="col-sm-2 control-label">住址</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="address" id="stuAddress_update_input" placeholder="年级">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="stuEmail_add_input" class="col-sm-2 control-label">Email</label>
                                        <div class="col-sm-10">
                                            <input type="email" class="form-control" name="email" id="stuEmail_update_input" placeholder="Email">
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="stuContact_add_input" class="col-sm-2 control-label">联系方式</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="contact" id="stuContact_update_input" placeholder="联系方式">
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="stuContact_add_input" class="col-sm-2 control-label">生日</label>
                                        <div class="col-sm-10">
                                            <input type="date" class="form-control" name="birthday" id="stuBirthd_update_input" placeholder="生日">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="stuContact_add_input" class="col-sm-2 control-label">导师工号</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="tNumber" id="stuTNumber_update_input" placeholder="导师工号">
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="button" class="btn btn-primary" id="stu_update_butten">更新</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 学生添加的模态框 -->
                <div class="modal fade" id="StuAddModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">学生添加</h4>
                            </div>
                            <div class="modal-body">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label for="stuNumber_add_input" class="col-sm-2 control-label">学号</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="number" id="stuNumber_add_input" placeholder="学号">
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="stuName_add_input" class="col-sm-2 control-label">姓名</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="name" id="stuName_add_input" placeholder="姓名">
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label  class="col-sm-2 control-label">性别</label>
                                        <div class="col-sm-10">
                                            <label class="radio-inline">
                                                <input type="radio" name="gender" id="stuGender1_add_input" value="男" checked="checked"> 男
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="gender" id="stuGender2_add_input" value="女" > 女
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="stuEmail_add_input" class="col-sm-2 control-label">Email</label>
                                        <div class="col-sm-10">
                                            <input type="email" class="form-control" name="email" id="stuEmail_add_input" placeholder="Email">
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="stuContact_add_input" class="col-sm-2 control-label">联系方式</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="contact" id="stuContact_add_input" placeholder="联系方式">
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="button" class="btn btn-primary" id="stu_save_butten">保存</button>
                            </div>
                        </div>
                    </div>
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

<script type="text/javascript">
    var currentPage;
    var stuId;
    var stuName;
    $(function (){
        to_page(1);
    });

    function to_page(pn){
        $.ajax({
            url:"http://localhost:8080/mes/stu",
            data:"pn="+pn+"&stuId="+stuId,
            type:"get",
            success:function (result){
                // console.log(result);
                //1.解析并显示学生数据
                build_stu_stable(result);
                //2.解析并显示分页信息
                build_pageInfo(result);
                //3.解析显示分页条数据
                build_page_nav(result);
            }
        });
    }

    function build_stu_stable(result){
        //清空
        $("#stu_table tbody").empty();
        var stu=result.extend.page.list;
        $.each(stu,function (index,item){
            // alert(item.name)
            var checkBoxTd = $("<td></td>").append(" <input type= 'checkbox' class = 'check_item' />");
            var stuIdTd=$("<td></td>").append(item.number);
            var stuNnameTd=$("<td></td>").append(item.name);
            var stuGenderTd=$("<td></td>").append(item.gender);
            var stuEmailTd=$("<td></td>").append(item.email);
            var stuContactTd=$("<td></td>").append(item.contact);
            var editBtn=$("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
            //为编辑按钮添加一个自定义的属性
            editBtn.attr("edit-id" ,item.number);
            var checkBtn=$("<button></button>").addClass("btn btn-info btn-sm check_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-search")).append("课表");
            checkBtn.attr("check-id",item.number);
            var deleteBtn=$("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
            deleteBtn.attr("delete-id",item.number);
            var btnTd=$("<td></td>").append(editBtn).append(" ").append(checkBtn).append(" ").append(deleteBtn);
            $("<tr></tr>").append(checkBoxTd).append(stuIdTd).append(stuNnameTd)
                .append(stuGenderTd).append(stuEmailTd)
                .append(stuContactTd).append(btnTd).addClass("tongji")
                .appendTo("#stu_table tbody");
        })
    }
    //解析显示分页信息
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
        var nav=$("<nav></nav>").append(ul).appendTo("#page_nav_area");
    }


    //点击新增按钮，弹出模态框
    $("#Stu_add_model_btn").click(function (){

        $("#StuAddModel").modal({
            backdrop:"static"
        })
    })


    //检验表单数据
    function validate_add_form1(){
        //拿到要校验的数据，使用正则表达式
        var stuNumber=$("#stuNumber_add_input").val();
        var regNumber=/^\d{4}$/
        if (!regNumber.test(stuNumber)){
            show_validate_msg("#stuNumber_add_input","error","必须是4位数字，导师为2xxx，学生为1xxx")
            return false;
        }else {
            show_validate_msg("#stuNumber_add_input","success","");
        }
        var stuName=$("#stuName_add_input").val();
        var regName=/(^[a-zA-Z0-9_-]{3-16}$)|(^[\u2E80-\u9FFF]{2,6})/;
        if(!regName.test(stuName)){
            // alert("用户名可以是2-6位中文或3-16位英文和数字的组合");
            show_validate_msg("#stuName_add_input","error","用户名可以是2-6位中文或3-16位英文和数字的组合")
            return false;
        }else{
            show_validate_msg("#stuName_add_input","success","");
        }
        var stuEmial=$("#stuEmail_add_input").val();
        var regEmail=/^([a-z0-9_.-]+)@([\da-z.-]+)\.([a-z.]{2,6})$/;
        if (!regEmail.test(stuEmial)){
            // alert("邮箱格式不正确");
            show_validate_msg("#stuEmail_add_input","error","邮箱格式不正确")
            return false;
        }else{
            show_validate_msg("#stuEmail_add_input","success","")
        }
        var stuContact=$("#stuContact_add_input").val();
        var regContact=/^(13[0-9]|14[5|7]|15[0|12|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
        if (!regContact.test(stuContact)){
            show_validate_msg("#stuContact_add_input","error","请输入正确的电话号码");
            return false;
        }else{
            show_validate_msg("#stuContact_add_input","success","");
        }
        return true
    }
    function validate_add_form2(){
        //拿到要校验的数据，使用正则表达式
        var stuEmial=$("#stuEmail_update_input").val();
        var regEmail=/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
        if (!regEmail.test(stuEmial)){
            // alert("邮箱格式不正确");
            show_validate_msg("#stuEmail_update_input","error","邮箱格式不正确")
            return false;
        }else{
            show_validate_msg("#stuEmail_update_input","success","")
        }
        var stuContact=$("#stuContact_update_input").val();
        var regContact=/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
        if (!regContact.test(stuContact)){
            show_validate_msg("#stuContact_update_input","error","请输入正确的电话号码");
            return false;
        }else{
            show_validate_msg("#stuContact_update_input","success","");
        }
        return true;
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
    $("#stu_save_butten").click(function (){
        //模态框中填写地表单数据提交给服务器进行保存
        //对要提交给服务器的数据进行校验
        if(!validate_add_form1()){
            return false;
        }
        //发送Ajax请求
        $.ajax({
            url: "http://localhost:8080/mes/stu",
            type: "POST",
            data: $("#StuAddModel form").serialize(),
            success: function (){
                //员工保存成功
                //关闭模态框。
                $("#StuAddModel").modal("hide")
                //来到最后一页
                to_page(9999);
            }
        })
    });

    //点击编辑按钮，弹出模态框
    $(document).on("click",".edit_btn",function (){
        //查出学生信息
        getStu($(this).attr("edit-id"));
        //把学生id传递传递给模态框的更新按钮
        $("#stu_update_butten").attr("edit-id",$(this).attr("edit-id"))
        //调出模态框
        $("#StuUpdateModel").modal({
            backdrop:"static"
        })
    })
    $(document).on("click",".tongji",function (){
        //调出模态框
        $("#StuModel").modal({
            backdrop:"static"
        })
    })
    function getStu(id){
        $.ajax({
            url:"http://localhost:8080/mes/stu/"+id,
            type: "get",
            success: function (result){
                var tas=result.extend.tas;
                $("#stuNumber_update_input").val(tas.number);
                $("#stuName_update_input").val(tas.name);
                $("#StuUpdateModel input[name=gender]").val([tas.gender]);
                $("#stuGrade_update_input").val(tas.grade);
                $("#stuAddress_update_input").val(tas.address);
                $("#stuEmail_update_input").val(tas.email);
                $("#stuContact_update_input").val(tas.contact);
                $("#stuBirthd_update_input").val(tas.birthday);
                $("#stuTNumber_update_input").val(tas.tNumber);
            }
        })
    }

    //点击更新，更新学生信息
    $("#stu_update_butten").click(function (){
        if(!validate_add_form2()){
            return false;
        }
        //发送ajax请求保存更新的学生信息
        $.ajax({
            url: "http://localhost:8080/mes/stu/"+$(this).attr("eidt-id"),
            type:"PUT",
            data:$("#StuUpdateModel form").serialize(),
            success: function (){
                $("#StuUpdateModel").modal("hide")
                to_page(currentPage);
            }
        })
    })
    $(document).on("click",".check_btn",function (){
        window.location.href="curriculum_teacher.jsp"
    })
    $(document).on("click",".delete_btn",function (){
        //弹出确认删除对话框
        var stu_name = $(this).parents("tr").find("td:eq(2)").text();
        var stu_id=$(this).attr("delete-id");
        if (confirm("确认删除学生：【"+stu_name+"】吗？")){
            //确认，删除即可
            $.ajax({
                url: "http://localhost:8080/mes/stu/"+stu_id,
                type: "DELETE",
                success: function (result){
                    alert(result.msg);
                    to_page(currentPage);
                }
            })
        }
    });
    //全选
    $("#checkall").click(function (){
        $(".check_item").prop("checked",$(this).prop("checked"));
    })
    $(document).on("click",".check_item",function (){
        //判断当前选择元素是不是5个
        var flag = $(".check_item:checked").length == $(".check_item").length;
        $("#checkall").prop("checked",flag)
    })
    $("#stu_delete_btn").click(function (){
        var stu_name=""
        var stu_ids="";
        $.each($(".check_item:checked"),function (){
            stu_name += $(this).parents("tr").find("td:eq(2)").text()+";"
            stu_ids += $(this).parents("tr").find("td:eq(1)").text()+"-"
        })
        stu_ids=stu_ids.substring(0,stu_ids.length-1);
        if (confirm("确认删除消息【"+stu_name+"】吗？")){
            //发送ajax请求
            $.ajax({
                url: "http://localhost:8080/mes/stu/"+stu_ids,
                type: "DELETE",
                success: function (result){
                    alert(result.msg);
                    to_page(currentPage);
                }
            })
        }
    })
    //搜索
    $("#stu_search_modal_button").click(function () {
        stuId=$("#search").val();
        to_page(1);
    })
</script>
</body>

</html>
