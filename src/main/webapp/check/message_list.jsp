<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<base href="http://localhost:8080/mes/">
<head>
    <title>员工列表</title>
    <link rel="stylesheet" href="/mes/static/css/semantic.css" type="text/css">
    <link rel="stylesheet" href="/mes/static/css/zyComment.css" type="text/css">
    <link href="/mes/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="/mes/static/css/common.css" rel="stylesheet">
    <link href="/mes/static/css/corptravel.css" rel="stylesheet">
    <link href="/mes/static/css/enterprise.css" rel="stylesheet">
    <link href="/mes/static/css/iconfont.css" rel="stylesheet">
    <script type="text/javascript" src="/mes/static/js/jquery-1.9.1.min.js"></script>
    <script src="/mes/static/js/bootstrap.min.js"></script>
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
    <style type="text/css" media="print, screen">
        label {
            font-weight: bold;
        }

        a {
            font-family: Microsoft YaHei;
        }

        #articleComment {
            width: 600px;
            margin:0 auto;
        }
    </style>
</head>
<body>
<!-- 消息回复的模态框 -->
<div class="modal fade" id="MessageAddModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" >信息回复</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">发送者</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="mRecipient" readonly="readonly" id="mRecipient_input" placeholder="学号">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">收到的消息</label>
                        <div class="col-sm-10">
                            <textarea  readonly="readonly" class="form-control" id="old_context_input" style="height: 200px;"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">消息回复</label>
                        <div class="col-sm-10">
                            <textarea type="text" class="form-control" name="context" id="context_input" style="height: 350px;"></textarea>
                            <input type="hidden" class="form-control" name="mSender" id="mSender_input">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="message_add_button">回复</button>
            </div>
        </div>
    </div>
</div>
<!-- 消息新增的模态框 -->
<div class="modal fade" id="NewMessageModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" >发送消息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">接收人</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="mRecipient" id="mRecipient_add_input" placeholder="学号">
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">消息内容</label>
                        <div class="col-sm-10">
                            <textarea type="text" class="form-control" name="context" id="context_add_input" style="height: 350px;"></textarea>
                            <input type="hidden" class="form-control" name="mSender" id="mSender_add_input">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="send_message_button">回复</button>
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
                    <h3 class="animated fadeInLeft">已收信息</h3>
                </div>
            </div>
        </div>
    </div>
    <%--        两个按钮--%>
    <div class="row">
        <div class="col-md-4 col-md-offset-8">
            <button class="btn btn-primary" id="new_message_btn">新增</button>
            <button class="btn btn-danger" id="delete_message_btn">删除</button>
        </div>
    </div>
    <%--        显示表格数据--%>
    <div class="row">
        <table class="table table-hover" id="message_table">
            <thead>
                <tr>
                    <th> <input type="checkbox" id="checkall"> </th>
                    <th>ID</th>
                    <th>消息内容</th>
                    <th>发送者</th>
                    <th>接收者</th>
                    <th>时间</th>
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
        <div class="col-md-6" id="page_nav_area" >

        </div>
    </div>
</div>
<script type="text/javascript">
    var currentPage
    $(function (){
        to_page(1);
    });

    function to_page(pn){
        $.ajax({
            url:"http://localhost:8080/mes/msg",
            data:"pn="+pn,
            type:"get",
            success:function (result){
                // console.log(result);
                //1.解析并显示论文数据
                build_msg_stable(result);
                //2.解析并显示分页信息
                build_pageInfo(result);
                //3.解析显示分页条数据
                build_page_nav(result);
            }
        });
    }

    function getSenderAndRecipient(Sender,Recipient,tr) {
        $.ajax({
            url: "http://localhost:8080/mes/tas",
            data:"sender="+Sender+"&recipient="+Recipient,
            type: "get",
            success:function (result){
                var sender=result.extend.name[0];
                var recipient=result.extend.name[1];
                var SenderNameTd=$("<td></td>").append(sender);
                var RecipientNameTd=$("<td></td>").append(recipient);
                tr.append(SenderNameTd).append(RecipientNameTd);
            }
        })
    }
    function build_msg_stable(result){
        //清空
        $("#message_table tbody").empty();
        var msg=result.extend.page.list;
        $.each(msg,function (index,item){
            // alert(item.name)
            var s=item.context
            if (s.length>10)
                s=item.context.substring(0,10)+"...";
            var checkBoxTd = $("<td></td>").append(" <input type= 'checkbox' class = 'check_item' />");
            var msgIdTd=$("<td></td>").append(item.id);
            var msgContextTd=$("<td></td>").append(s);
            var msgmSenderTd=$("<td></td>").append(item.mSender).attr("hidden","hidden");
            var msgmRecipientTd=$("<td></td>").append(item.mRecipient).attr("hidden","hidden");
            var msgTimeTd=$("<td></td>").append(item.mTime);
            var msgStatusTd=$("<td></td>").append(item.mStatus=="y"?"已读":"未读");
            var editBtn=$("<button></button>").addClass("btn btn-info btn-sm edit_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-envelope")).append("回复");
            editBtn.attr("edit-id" ,item.id);
            var deleteBtn=$("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
            deleteBtn.attr("delete-id",item.id);
            var btnTd=$("<td></td>").append(editBtn).append(" ").append(deleteBtn);
            var tr=$("<tr></tr>").append(checkBoxTd).append(msgIdTd).append(msgContextTd)
                .append(msgmSenderTd).append(msgmRecipientTd)
                // .append(msgTimeTd).append(msgStatusTd).append(btnTd)
            ;
            // getSenderAndRecipient(item.mSender,item.mRecipient,tr);
            $.ajax({
                url: "http://localhost:8080/mes/tas",
                data:"sender="+item.mSender+"&recipient="+item.mRecipient,
                type: "get",
                success:function (result){
                    var sender=result.extend.name[0];
                    var recipient=result.extend.name[1];
                    var SenderNameTd=$("<td></td>").append(sender);
                    var RecipientNameTd=$("<td></td>").append(recipient);
                    tr.append(SenderNameTd).append(RecipientNameTd).append(msgTimeTd).append(msgStatusTd).append(btnTd);
                    if (item.mStatus=="n"){
                        tr.addClass("danger").appendTo("#message_table tbody");
                    }else {
                        tr.addClass("success").appendTo("#message_table tbody");
                    }
                }
            })
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
    $("#new_message_btn").click(function (){

        $("#NewMessageModel").modal({
            backdrop:"static"
        })
    })
    $("#send_message_button").click(function (){
        //模态框中填写地表单数据提交给服务器进行保存
        //发送Ajax请求
        $("#mSender_add_input").val(<%=session.getAttribute("user_number") %>);
        $.ajax({
            url: "http://localhost:8080/mes/msg",
            type: "POST",
            data: $("#NewMessageModel form").serialize(),
            success: function (result){
                //员工保存成功
                //关闭模态框。
                $("#NewMessageModel").modal("hide")
                //来到最后一页
                alert(result.msg);
                to_page(9999);
            }
        })
    });

    //点击编辑按钮，转到消息板
    $(document).on("click",".edit_btn",function (){
        //查出实验信息
        getMessage($(this).attr("edit-id"));
        //把实验id传递传递给模态框的更新按钮
        $("#message_add_button").attr("edit-id",$(this).attr("edit-id"))
        //显示为已读
        $.ajax({
            url:"http://localhost:8080/mes/msg/"+$(this).attr("edit-id"),
            type: "PUT",
            data:$("#MessageAddModel form").serialize(),
            success: function (result){
                to_page(currentPage);
            }
        })
        //调出模态框
        $("#MessageAddModel").modal({
            backdrop:"static"
        })
    })
    function getMessage(id){
        $.ajax({
            url:"http://localhost:8080/mes/msg/"+id,
            type: "get",
            success: function (result){
                var meg=result.extend.meg;
                $("#mRecipient_input").val(meg.mSender)
                $("#old_context_input").val(meg.context);
                $("#mSender_input").val(meg.mRecipient);
            }
        })
    }

    //点击更新，回复信息
    $("#message_add_button").click(function (){
        //发送ajax请求保存更新的实验信息
        $.ajax({
            url: "http://localhost:8080/mes/msg/",
            type:"POST",
            data:$("#MessageAddModel form").serialize(),
            success: function (result){
                $("#MessageAddModel").modal("hide")
                alert(result.msg);
                to_page(currentPage);
            }
        })
    })
    $(document).on("click",".delete_btn",function (){
        //弹出确认删除对话框
        var massage = $(this).parents("tr").find("td:eq(2)").text();
        var massage_id=$(this).attr("delete-id");
        if (confirm("确认删除消息：【"+massage+"】吗？")){
            //确认，删除即可
            $.ajax({
                url: "http://localhost:8080/mes/msg2/"+massage_id,
                type: "DELETE",
                success: function (result){
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
    $("#delete_message_btn").click(function (){
        var messages=""
        var message_ids="";
        $.each($(".check_item:checked"),function (){
            messages += $(this).parents("tr").find("td:eq(2)").text()+";"
            message_ids += $(this).parents("tr").find("td:eq(1)").text()+"-"
        })
        message_ids=message_ids.substring(0,message_ids.length-1);
        if (confirm("确认删除消息【"+messages+"】吗？")){
            //发送ajax请求
            $.ajax({
                url: "http://localhost:8080/mes/msg2/"+message_ids,
                type: "DELETE",
                success: function (result){
                    to_page(currentPage);
                }
            })
        }
    })
</script>
</body>
</html>
