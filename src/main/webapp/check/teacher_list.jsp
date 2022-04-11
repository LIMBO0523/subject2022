<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<base href="http://localhost:8080/mes/">
<head>
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
</head>
<body>
<!-- 学生修改的模态框 -->
<div class="modal fade" id="StuUpdateModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" >教师信息修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="stuNumber_add_input" class="col-sm-2 control-label">职工号</label>
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
                    <div class="form-group" hidden="hidden">
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
                    <div class="form-group" hidden="hidden">
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
                <h4 class="modal-title" id="myModalLabel">教师添加</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="stuNumber_add_input" class="col-sm-2 control-label">工号</label>
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
                        <h3 class="animated fadeInLeft">教师信息</h3>
                    </div>
                </div>
            </div>
        </div>
<%--        两个按钮--%>
        <div class="row">
            <div class="col-md-5">
                <form class="form-inline">
                    <div class="form-group">
                        <input type="text" class="form-control" id="search" placeholder="输入工号或姓名进行搜索">
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
                        <th>工号</th>
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
<script type="text/javascript">
    var currentPage;
    var stuId;
    var stuName;
    $(function (){
        to_page(1);
    });

    function to_page(pn){
        $.ajax({
            url:"http://localhost:8080/mes/teacher",
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
                .append($("<span></span>").addClass("glyphicon glyphicon-search")).append("查看");
            checkBtn.attr("check-id",item.number);
            var deleteBtn=$("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
            deleteBtn.attr("delete-id",item.number);
            var btnTd=$("<td></td>").append(editBtn).append(" ").append(checkBtn).append(" ").append(deleteBtn);
            $("<tr></tr>").append(checkBoxTd).append(stuIdTd).append(stuNnameTd)
                .append(stuGenderTd).append(stuEmailTd)
                .append(stuContactTd).append(btnTd)
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
        var regEmail=/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
        if (!regEmail.test(stuEmial)){
            // alert("邮箱格式不正确");
            show_validate_msg("#stuEmail_add_input","error","邮箱格式不正确")
            return false;
        }else{
            show_validate_msg("#stuEmail_add_input","success","")
        }
        var stuContact=$("#stuContact_add_input").val();
        var regContact=/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
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
            success: function (result){
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
            success: function (result){
                $("#StuUpdateModel").modal("hide")
                to_page(currentPage);
            }
        })
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
