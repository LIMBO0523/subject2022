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
<!-- 论文学习模态框 -->
<div class="modal fade" id="paperInfoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <div class="modal-body">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="paper_info_btn">保存</button>
            </div>
        </div>
    </div>
</div>
<!-- 论文修改的模态框 -->
<div class="modal fade" id="PaperUpdateModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" >论文信息修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="p_name_update_input" class="col-sm-2 control-label">论文名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="pName" id="p_name_update_input" placeholder="学号">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="sNumber_update_input" class="col-sm-2 control-label">学号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="stuNumber" id="sNumber_update_input" placeholder="姓名">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="pProgress_update_input" class="col-sm-2 control-label">进度</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="pProgress" id="pProgress_update_input" placeholder="姓名">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="pStatus_update_input" class="col-sm-2 control-label">状态</label>
                        <div class="col-sm-10">
<%--                            <input type="text" class="form-control" name="pStatus" id="pStatus_update_input" placeholder="年级">--%>
                            <select class="form-control" name="pStatus" id="pStatus_update_input" >
                                <option>全部</option>
                                <option>审核中</option>
                                <option>未完成</option>
                                <option>完成</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="pTime_update_input" class="col-sm-2 control-label">时间</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" name="pTime" id="pTime_update_input" placeholder="年级">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="pAuthor_update_input" class="col-sm-2 control-label">作者</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="pAuthor" id="pAuthor_update_input" placeholder="Email">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="reason_update_input" class="col-sm-2 control-label">原因</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="reason" id="reason_update_input" placeholder="联系方式">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="content_update_input" class="col-sm-2 control-label">笔记</label>
                        <div class="col-sm-10">
                            <textarea  class="form-control" name="content" id="content_update_input" readonly="readonly"></textarea>
                        </div>
                    </div>
                    <div class="form-group" hidden="hidden">
                        <label for="paper_update_input" class="col-sm-2 control-label">笔记</label>
                        <div class="col-sm-10">
                            <textarea   class="form-control" name="paper" id="paper_update_input" readonly="readonly"></textarea>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="paper_update_button">更新</button>
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
                    <h3 class="animated fadeInLeft">文献学习列表</h3>
                </div>
            </div>
        </div>
    </div>
    <%--        两个按钮--%>
    <div class="row">
        <div class="col-md-5">
            <form class="form-inline">
                <div class="row form-group">
                    <input type="text" class="form-control " id="search" placeholder="输入文献名进行搜索">
                    <button type="button" class="btn btn-info " id="paper_search_modal_button">
                        <span class="glyphicon glyphicon-search"></span> 搜索
                    </button>
                    <select class="form-control" name="status" id="status_search_input">
                        <option> </option>
                        <option>审核中</option>
                        <option>未完成</option>
                        <option>完成</option>
                    </select>
                </div>
            </form>
        </div>
        <div class="col-md-4 col-md-offset-8">
            <button class="btn btn-primary" id="new_paper_btn">新增</button>
            <button class="btn btn-danger" id="delete_paper_btn">删除</button>
        </div>
    </div>
    <%--        显示表格数据--%>
    <div class="row">
        <table class="table table-hover" id="paper_table">
            <thead>
            <tr>
                <th> <input type="checkbox" id="checkall"> </th>
                <th>ID</th>
                <th>文献名</th>
                <th>学生名</th>
                <th>学习时间</th>
                <th>进度</th>
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
    var paperName
    var paperStatus
    $(function (){
        to_page(1);
    });

    function to_page(pn){
        $.ajax({
            url:"http://localhost:8080/mes/paper",
            data:"pn="+pn+"&paperName="+paperName+"&paperStatus="+paperStatus,
            type:"get",
            success:function (result){
                // console.log(result);
                //1.解析并显示论文数据
                build_paper_stable(result);
                //2.解析并显示分页信息
                build_pageInfo(result);
                //3.解析显示分页条数据
                build_page_nav(result);
            }
        });
    }

    function build_paper_stable(result){
        //清空
        $("#paper_table tbody").empty();
        var paper=result.extend.page.list;
        $.each(paper,function (index,item){
            // alert(item.name)
            var checkBoxTd = $("<td></td>").append(" <input type= 'checkbox' class = 'check_item' />");
            var paperIdTd=$("<td></td>").append(item.id);
            var PaperNameTd=$("<td></td>").append(item.pName);
            var stuNameTD=$("<td></td>").append(item.tas.name);
            var paperTimeTd=$("<td></td>").append(item.pTime);
            var paperProgressTd=$("<td></td>").append(item.pProgress);
            var PaperStatusTd=$("<td></td>").append(item.pStatus)
            var editBtn=$("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
            editBtn.attr("edit-id" ,item.id);
            var checkBtn=$("<button></button>").addClass("btn btn-info btn-sm check_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-file")).append("内容");
            checkBtn.attr("check-id",item.id).attr("delete-id",item.id);
            var btnTd=$("<td></td>").append(editBtn).append(" ").append(checkBtn);
            $("<tr></tr>").append(checkBoxTd).append(paperIdTd).append(PaperNameTd).append(stuNameTD)
                .append(paperTimeTd).append(paperProgressTd)
                .append(PaperStatusTd).append(btnTd)
                .appendTo("#paper_table tbody");
        })
    }
    //解析显示分页信息
    function build_pageInfo(result){
        $("#pageInfo_area").empty();
        currentPage=result.extend.page.pageNum;
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
    //点击内容按钮进行内容更新
    $(document).on("click",".check_btn",function (){
        var id=$(this).attr("check-id")
        window.location.href="check/paper_Info.jsp?id="+id
        // var id=$(this).attr("check-id")
    })
    //点击编辑按钮，弹出模态框
    $(document).on("click",".edit_btn",function (){
        //查出学生信息
        getPaper($(this).attr("edit-id"));
        //把学生id传递传递给模态框的更新按钮
        $("#paper_update_button").attr("edit-id",$(this).attr("edit-id"))
        //调出模态框
        $("#PaperUpdateModel").modal({
            backdrop:"static"
        })
    })
    function getPaper(id){
        $.ajax({
            url:"http://localhost:8080/mes/paper/"+id,
            type: "get",
            success: function (result){
                var paper=result.extend.paper;
                $("#p_name_update_input").val(paper.pName);
                $("#sNumber_update_input").val(paper.stuNumber);
                $("#pProgress_update_input").val(paper.pProgress);
                $("#pStatus_update_input").val(paper.pStatus);
                $("#pTime_update_input").val(paper.pTime);
                $("#pAuthor_update_input").val(paper.pAuthor);
                $("#reason_update_input").val(paper.reason);
                $("#content_update_input").val(paper.content);
                $("#paper_update_input").val(paper.paper);
            }
        })
    }

    //点击更新，更新学生信息
    $("#paper_update_button").click(function (){
        if (!validate_add_form2){
            return false;
        }
        //发送ajax请求保存更新的学生信息
        $.ajax({
            url: "http://localhost:8080/mes/paper/"+$(this).attr("edit-id"),
            type:"PUT",
            data:$("#PaperUpdateModel form").serialize(),
            success: function (result){
                $("#PaperUpdateModel").modal("hide")
                to_page(currentPage);
            }
        })
    })
    $("#new_paper_btn").click(function (){
        window.location.href="check/paper_create.jsp"
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
    $("#delete_paper_btn").click(function (){
        var paperName=""
        var paper_ids="";
        $.each($(".check_item:checked"),function (){
            paperName += $(this).parents("tr").find("td:eq(2)").text()+";"
            paper_ids += $(this).parents("tr").find("td:eq(1)").text()+"-"
        })
        paper_ids=paper_ids.substring(0,paper_ids.length-1);
        if (confirm("确认删除消息【"+paperName+"】吗？")){
            //发送ajax请求
            $.ajax({
                url: "http://localhost:8080/mes/paper/"+paper_ids,
                type: "DELETE",
                success: function (result){
                    alert(result.msg);
                    to_page(currentPage);
                }
            })
        }
    })
    $("#paper_search_modal_button").click(function () {
        paperName=$("#search").val();
        to_page(1);
    })
    $("#status_search_input").change(function () {
        paperStatus=$("#status_search_input").val();
        to_page(1);
    })

    //校验信息
    function validate_add_form2(){
        //拿到要校验的数据，使用正则表达式
        var stuNumber=$("#sNumber_update_input").val();
        var regNumber=/^\d{4}$/
        if (!regNumber.test(stuNumber)){
            show_validate_msg("#sNumber_update_input","error","必须是4位数字，导师为2xxx，学生为1xxx")
            return false;
        }else {
            show_validate_msg("#sNumber_update_input","success","");
        }
        var author=$("#pAuthor_update_input").val();
        var regName=/(^[a-zA-Z0-9_-]{3-16}$)|(^[\u2E80-\u9FFF]{2,6})/;
        if(!regName.test(author)){
            // alert("用户名可以是2-6位中文或3-16位英文和数字的组合");
            show_validate_msg("#pAuthor_update_input","error","作者可以是2-6位中文或3-16位英文和数字的组合")
            return false;
        }else{
            show_validate_msg("#pAuthor_update_input","success","");
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
</script>
</body>
</html>
