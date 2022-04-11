<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<base href="http://localhost:8080/mes/">
<head>
    <title>员工列表</title>
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
<!-- 实验修改的模态框 -->
<div class="modal fade" id="ExpUpdateModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" >学生信息修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="eName_update_input" class="col-sm-2 control-label">实验名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="eName" id="eName_update_input" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="stuNumber_update_input" class="col-sm-2 control-label">学号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="stuNumber" id="stuNumber_update_input" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="eStatus_update_input" class="col-sm-2 control-label">状态</label>
                        <div class="col-sm-10">
<%--                            <input type="text" class="form-control" name="eStatus" id="eStatus_update_input"--%>
                            <select class="form-control" name="eStatus" id="eStatus_update_input" >
                                <option>全部</option>
                                <option>审核中</option>
                                <option>未完成</option>
                                <option>完成</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="eTime_update_input" class="col-sm-2 control-label">时间</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" name="eTime" id="eTime_update_input" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="eReason_update_input" class="col-sm-2 control-label">原因</label>
                        <div class="col-sm-10">
                            <textarea type="text" class="form-control" name="eReason" id="eReason_update_input" ></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="eStep_update_input" class="col-sm-2 control-label">实验过程</label>
                        <div class="col-sm-10">
                            <textarea type="text" class="form-control" disabled="disabled" name="eStep" id="eStep_update_input" ></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="eResult_update_input" class="col-sm-2 control-label">实验结果</label>
                        <div class="col-sm-10">
                            <textarea type="text" class="form-control" name="eResult" id="eResult_update_input"></textarea>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="exp_update_button">更新</button>
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
                    <h3 class="animated fadeInLeft">实验学习列表</h3>
                </div>
            </div>
        </div>
    </div>
    <%--        两个按钮--%>
    <div class="row">
        <div class="col-md-5">
            <form class="form-inline">
                <div class="row form-group">
                    <input type="text" class="form-control " id="search" placeholder="输入实验名进行搜索">
                    <button type="button" class="btn btn-info " id="experiment_search_modal_button">
                        <span class="glyphicon glyphicon-search"></span> 搜索
                    </button>
                    <select class="form-control" name="status" id="exp_status_search_input">
                        <option> </option>
                        <option>审核中</option>
                        <option>未完成</option>
                        <option>完成</option>
                    </select>
                </div>
            </form>
        </div>
        <div class="col-md-4 col-md-offset-8">
            <button class="btn btn-primary" id="new_experiment_btn">新增</button>
            <button class="btn btn-danger" id="delete_experiment_btn">删除</button>
        </div>
    </div>
    <%--        显示表格数据--%>
    <div class="row">
        <table class="table table-hover" id="exp_table">
            <thead>
            <tr>
                <th> <input type="checkbox" id="checkall"> </th>
                <th>ID</th>
                <th>实验名</th>
                <th>学生名</th>
                <th>实验时间</th>
                <th>状态</th>
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
    var currentPage
    var expName
    var expStatus
    $(function (){
        to_page(1);
    });

    function to_page(pn){
        $.ajax({
            url:"http://localhost:8080/mes/exp",
            data:"pn="+pn+"&expName="+expName+"&expStatus="+expStatus,
            type:"get",
            success:function (result){
                // console.log(result);
                //1.解析并显示论文数据
                build_exp_stable(result);
                //2.解析并显示分页信息
                build_pageInfo(result);
                //3.解析显示分页条数据
                build_page_nav(result);
            }
        });
    }

    function build_exp_stable(result){
        //清空
        $("#exp_table tbody").empty();
        var experiment=result.extend.page.list;
        $.each(experiment,function (index,item){
            // alert(item.name)
            var checkBoxTd = $("<td></td>").append(" <input type= 'checkbox' class = 'check_item' />");
            var expIdTd=$("<td></td>").append(item.id);
            var expNameTd=$("<td></td>").append(item.eName);
            var stuNameTD=$("<td></td>").append(item.tas.name);
            var expTimeTd=$("<td></td>").append(item.eTime);
            var expStatusTd=$("<td></td>").append(item.eStatus);
            var editBtn=$("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
            editBtn.attr("edit-id" ,item.id);
            var checkBtn=$("<button></button>").addClass("btn btn-info btn-sm check_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-search")).append("查看");
            checkBtn.attr("check-id",item.id).attr("delete-id",item.id);
            var btnTd=$("<td></td>").append(editBtn).append(" ").append(checkBtn);
            $("<tr></tr>").append(checkBoxTd).append(expIdTd).append(expNameTd).append(stuNameTD)
                .append(expTimeTd).append(expStatusTd)
                .append(btnTd).appendTo("#exp_table tbody");
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

    //点击编辑按钮，弹出模态框
    $(document).on("click",".edit_btn",function (){
        //查出实验信息
        getExp($(this).attr("edit-id"));
        //把实验id传递传递给模态框的更新按钮
        $("#exp_update_button").attr("edit-id",$(this).attr("edit-id"))
        //调出模态框
        $("#ExpUpdateModel").modal({
            backdrop:"static"
        })
    })
    function getExp(id){
        $.ajax({
            url:"http://localhost:8080/mes/exp/"+id,
            type: "get",
            success: function (result){
                var exp=result.extend.exp;
                $("#eName_update_input").val(exp.eName);
                $("#stuNumber_update_input").val(exp.stuNumber);
                $("#eStatus_update_input").val(exp.eStatus);
                $("#eTime_update_input").val(exp.eTime);
                $("#eReason_update_input").val(exp.eReason);
                $("#eStep_update_input").val(exp.eStep);
                $("#eResult_update_input").val(exp.eResult);
            }
        })
    }

    //点击更新，更新实验信息
    $("#exp_update_button").click(function (){
        if (!validate_add_form2()){
            return false;
        }
        //发送ajax请求保存更新的实验信息
        $.ajax({
            url: "http://localhost:8080/mes/exp/"+$(this).attr("edit-id"),
            type:"PUT",
            data:$("#ExpUpdateModel form").serialize(),
            success: function (result){
                $("#ExpUpdateModel").modal("hide")
                to_page(currentPage);
            }
        })
    })

    $("#new_experiment_btn").click(function (){
        window.location.href="check/experiment_create.jsp"
    })
    //全选
    $("#checkall").click(function (){
        $(".check_item").prop("checked",$(this).prop("checked"));
    })
    $(document).on("click",".check_item",function (){
        //判断当前选择元素是不是5个
        var flag = $(".check_item:checked").length == $(".check_item").length;
        $("#checkall").prop("checked",flag)
    })
    $("#delete_experiment_btn").click(function (){
        var expName=""
        var exp_ids="";
        $.each($(".check_item:checked"),function (){
            expName += $(this).parents("tr").find("td:eq(2)").text()+";"
            exp_ids += $(this).parents("tr").find("td:eq(1)").text()+"-"
        })
        exp_ids=exp_ids.substring(0,exp_ids.length-1);
        if (confirm("确认删除消息【"+expName+"】吗？")){
            //发送ajax请求
            $.ajax({
                url: "http://localhost:8080/mes/exp/"+exp_ids,
                type: "DELETE",
                success: function (result){
                    alert(result.msg);
                    to_page(currentPage);
                }
            })
        }
    })
    $("#experiment_search_modal_button").click(function () {
        expName=$("#search").val();
        to_page(1);
    })
    $("#exp_status_search_input").change(function () {
        expStatus=$("#exp_status_search_input").val();
        to_page(1);
    })
    function validate_add_form2(){
        //拿到要校验的数据，使用正则表达式
        var stuNumber=$("#stuNumber_update_input").val();
        var regNumber=/^\d{4}$/
        if (!regNumber.test(stuNumber)){
            show_validate_msg("#stuNumber_update_input","error","必须是4位数字，导师为2xxx，学生为1xxx")
            return false;
        }else {
            show_validate_msg("#stuNumber_update_input","success","");
        }
        return true
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
    //点击内容按钮进行内容更新
    $(document).on("click",".check_btn",function (){
        var id=$(this).attr("check-id")
        window.location.href="check/experiment_Info.jsp?id="+id
        // var id=$(this).attr("check-id")
    })
</script>
</body>
</html>
