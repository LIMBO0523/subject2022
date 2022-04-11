<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
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
<%--<style>--%>
<%--    .form-element {--%>
<%--        font-size: 18px;--%>
<%--        font-family: 黑体 ;--%>
<%--    }--%>
<%--    #p{--%>
<%--        /*width:30px;*/--%>
<%--        text-align: center;--%>
<%--        font-size:24px;--%>
<%--        font-family:楷体;--%>
<%--    }--%>
<%--</style>--%>
<body>
<div class="modal fade" tabindex="-1" role="dialog" id="my_information">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">警告</h4>
            </div>
            <div class="modal-body">
                <p>是否保存做出的修改？</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="Save_changes">保存</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
    <div class="panel">
        <div class="panel-body">
            <div class="col-md-12">
                <h3 class="animated fadeInLeft">个人信息</h3>
            </div>
        </div>
    </div>



    <div class="form-element">
        <div class="col-md-12 padding-0">
            <div class="col-md-12">
                <div class="panel form-element-padding">
                    <div class="panel-heading">
                    </div>
                    <div class="panel-body" style="padding-bottom:30px;">
                        <div class="col-md-12">
                            <form id="UpdateForm">
                            <div class="form-group">

                                <label class="col-sm-1 control-label text-right" style="width:130px;">姓名</label>
                                <div class="col-sm-11" style="width:800px;" >
                                    <input name="name" type="text" readonly="readonly" class="form-control" id="my_name">
                                </div>
                            </div>


                            <div class="form-group">

                                <label class="col-sm-1 control-label text-right" style="width:130px;">性别</label>
<%--                                <div class="col-sm-3" style="width:180px;">--%>
<%--                                    <input name="gender" type="text" class="form-control" placeholder="男" id="my_gender">--%>
<%--                                </div>--%>
                                <div class="col-sm-3" style="width:180px;">
                                    <select class="form-control" name="gender" id="my_gender">
                                        <option>男</option>
                                        <option>女</option>
                                    </select>
                                </div>


                                <label class="col-sm-1 control-label text-right" style="width:130px;">学号/工号</label>
                                <div class="col-sm-3" style="width:180px;">
                                    <input name="number" type="text" readonly="readonly" placeholder="110" class="form-control" id="my_number">
                                </div>


                                <label class="col-sm-1 control-label text-right" style="width:130px;">年级</label>
<%--                                <div class="col-sm-3" style="width:180px;">--%>
<%--                                    <input name="grade" type="text" placeholder="联系方式" class="form-control" id="my_grade">--%>
<%--                                </div>--%>
                                <div class="col-sm-3" style="width:180px;">
                                    <select class="form-control" name="grade" id="my_grade" >
                                        <option> </option>
                                        <option>研一</option>
                                        <option>研二</option>
                                        <option>研三</option>
                                    </select>
                                </div>
                            </div>


                            <div class="form-group">

                                <label class="col-sm-1 control-label text-right" style="width:130px;">职位</label>
                                <div class="col-sm-3" style="width:180px;">
<%--                                    <input name="grade" type="text" placeholder="" class="form-control" id="my_position" >--%>
                                        <select class="form-control" name="grade" id="my_position" >
                                            <option> </option>
                                            <option>讲师</option>
                                            <option>副教授</option>
                                            <option>教授</option>
                                        </select>
                                </div>

                                <label class="col-sm-1 control-label text-right" style="width:130px;">家庭住址</label>
                                <div class="col-sm-3" style="width:180px;">
                                    <input name="address" type="text" placeholder="例：08:30" class="form-control" id="my_address">
                                </div>

                                <label class="col-sm-1 control-label text-right" style="width:130px;">联系方式</label>
                                <div class="col-sm-3" style="width:180px;">
                                    <input name="contact" type="text" placeholder="例：12:35" class="form-control" id="my_contact">
                                </div>
                            </div>


                            <div class="form-group">

                                <label class="col-sm-1 control-label text-right" style="width:130px;">邮箱</label>
                                <div class="col-sm-3" style="width:180px;">
                                    <input name="email" type="text" placeholder="例：2100" class="form-control" id="my_email">
                                </div>
                                <label class="col-sm-1 control-label text-right" style="width:130px;">生日</label>
                                <div class="col-sm-3" style="width:180px;">
                                    <input name="birthday" type="text" placeholder="例：1600" class="form-control" id="my_birthday">
                                </div>

                                <label class="col-sm-1 control-label text-right" style="width:130px;">导师工号</label>
                                <div class="col-sm-3" style="width:180px;">
                                    <input name="tNumber" type="text"  class="form-control" id="my_tNumber">
                                </div>

                            </div>
                            </form>


                        </div>
                    </div>
                </div>

                <div class="col-md-12 text-center" id="p">
                    <button class="submit btn btn-danger" type="button" id="update_btn" style="width:80px;">修改</button>
                    <button class="btn btn-default" type="button"  id="back_btn" style="width:80px;">返回</button>
                </div>


            </div>
        </div>
    </div>
<script type="text/javascript">
    $.ajax({
        url:"http://localhost:8080/mes/stu/"+<%=session.getAttribute("user_number") %>,
        type: "get",
        success: function (result){
            var tas=result.extend.tas;
            $("#my_name").val(tas.name);
            $("#my_gender").val(tas.gender);
            $("#my_number").val(tas.number);

            $("#my_address").val(tas.address);
            $("#my_contact").val(tas.contact);
            $("#my_email").val(tas.email);
            $("#my_birthday").val(tas.birthday);
            $("#my_tNumber").val(tas.tNumber);
            if (parseInt(tas.number)>=2000){
                $("#my_position").val(tas.grade);
                $("#my_grade").attr("disabled","disabled")
                $("#my_tNumber").attr("disabled","disabled")
            }
            if(parseInt(tas.number)<2000){
                $("#my_grade").val(tas.grade);
                $("#my_position").attr("disabled","disabled")
            }
        }
    })

    //点击修改弹出提示框
    $("#update_btn").click(function (){
        $("#my_information").modal({
            backdrop:"static"
        })
    });

    $("#Save_changes").click(function (){
        //发送ajax请求保存更新的个人信息
        $.ajax({
            url: "http://localhost:8080/mes/stu/"+<%=session.getAttribute("user_number") %>,
            type:"PUT",
            data:$("#UpdateForm").serialize(),
            success: function (result){
                $("#my_information").modal("hide")
                window.location.href="personal_center.jsp"
            }
        })
    });

    //点击返回，返回到HELLO界面
    $("#back_btn").click(function (){
        window.location.href="come.jsp"
    })
</script>
</body>
</html>