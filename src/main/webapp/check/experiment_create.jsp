
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="verify_login.jsp" %>
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
<style>
    .form-element {
        font-size: 18px;
        font-family: 黑体 ;
    }
    #p{
        /*width:30px;*/
        text-align: center;
        font-size:24px;
        font-family:楷体;
    }
</style>
<body >
    <div class="panel">
        <div class="panel-body">
            <div class="col-md-12">
                <h3 class="animated fadeInLeft">新的实验</h3>
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
                            <form id="new_experiment">
                            <div class="form-group">

                                <label class="col-sm-1 control-label text-right" style="width:130px;">实验名</label>
                                <div class="col-sm-11" style="width:800px;">
                                    <input name="eName" type="text"  class="form-control" placeholder="实验名">
                                </div>
                            </div>

                            <div class="form-group">

                                <label class="col-sm-1 control-label text-right" style="width:130px;">学生</label>
                                <div class="col-sm-3" style="width:180px;">
                                    <input name="tas.name" id="stuName_add_input" type="text" class="form-control" placeholder="姓名">
                                    <span class="help-block"></span>
                                </div>


                                <label class="col-sm-1 control-label text-right" style="width:130px;">学号</label>
                                <div class="col-sm-3" style="width:180px;">
                                    <input name="stuNumber" id="stuNumber_add_input" type="text" placeholder="例:1000" class="form-control">
                                    <span class="help-block"></span>
                                </div>


                                <label class="col-sm-1 control-label text-right" style="width:130px;">年级</label>
                                <div class="col-sm-3" style="width:180px;">
<%--                                    <input name="tas.grade" type="text"  class="form-control">--%>
                                    <select class="form-control" name="tas.grade">
                                        <option> </option>
                                        <option>研一</option>
                                        <option>研二</option>
                                        <option>研三</option>
                                    </select>
                                </div>
                            </div>


                            <div class="form-group">

                                <label class="col-sm-1 control-label text-right" style="width:130px;">导师</label>
                                <div class="col-sm-3" style="width:180px;">
                                    <input name="tas.tNumber" type="text" placeholder="导师名" class="form-control">
                                </div>

                                <label class="col-sm-1 control-label text-right" style="width:130px;">日期</label>
                                <div class="col-sm-3" style="width:180px;">
                                    <input name="eTime" type="date" placeholder="20220315" class="form-control">
                                </div>

                                <label class="col-sm-1 control-label text-right" style="width:130px;">状态</label>
                                <div class="col-sm-3" style="width:180px;">
<%--                                    <input name="eStatus" type="text" placeholder="研一" class="form-control">--%>
                                    <select class="form-control" name="eStatus" id="eStatus_add_input" >
                                        <option> </option>
                                        <option>研一</option>
                                        <option>研二</option>
                                        <option>研三</option>
                                    </select>
                                </div>
                            </div>


                            <div class="form-group">

                                <label class="col-sm-1 control-label text-right" style="width:130px;">实验理由</label>
                                <div class="col-sm-3" style="width:800px;">
                                    <input name="eReason" type="text" placeholder="有用！" class="form-control">
                                </div>
                            </div>
                            </form>


                        </div>
                    </div>
                </div>

                <div class="col-md-12 text-center" id="p">
                    <button class="submit btn btn-danger" type="button"  id="experiment_save_btn" style="width:80px;">提交</button>
                    <button class="btn btn-default" type="button" style="width:80px;">返回</button>
                </div>


            </div>
        </div>
    </div>

<script type="text/javascript">
    $("#experiment_save_btn").click(function (){
        if(!validate_add_form2()){
            return false;
        }
        $.ajax({
            url: 'http://localhost:8080/mes/exp',
            type: "POST",
            data: $("#new_experiment").serialize(),
            success: function (result){
                window.location.href="experiment_list.jsp"
            }
        })
    });
    function validate_add_form2(){
        //拿到要校验的数据，使用正则表达式
        var stuName=$("#stuName_add_input").val();
        var regName=/(^[a-zA-Z0-9_-]{3-16}$)|(^[\u2E80-\u9FFF]{2,6})/;
        if(!regName.test(stuName)){
            // alert("用户名可以是2-6位中文或3-16位英文和数字的组合");
            show_validate_msg("#stuName_add_input","error","可以是2-6位中文或3-16位英文和数字的组合")
            return false;
        }else{
            show_validate_msg("#stuName_add_input","success","");
        }

        var stuNumber=$("#stuNumber_add_input").val();
        var regNumber=/^\d{4}$/
        if (!regNumber.test(stuNumber)){
            show_validate_msg("#stuNumber_add_input","error","必须是4位数字，导师为2xxx，学生为1xxx")
            return false;
        }else {
            show_validate_msg("#stuNumber_add_input","success","");
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