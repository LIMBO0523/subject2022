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

<!-- 课表更改模态框 -->
<div class="modal fade" id="curriculumModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">更改课表</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="row">
                        <div class="col-xs-2">
                            <input type="text" readonly="readonly" class="form-control"  value="日期/时间">
                            <input type="text" readonly="readonly" class="form-control"  value="周一">
                            <input type="text" readonly="readonly" class="form-control"  value="周二">
                            <input type="text" readonly="readonly" class="form-control"  value="周三">
                            <input type="text" readonly="readonly" class="form-control"  value="周四">
                            <input type="text" readonly="readonly" class="form-control"  value="周五">
                            <input type="text" readonly="readonly" class="form-control"  value="周六">
                            <input type="text" readonly="readonly" class="form-control"  value="周日">
                        </div>
                        <div class="col-xs-2">
                            <input type="text" readonly="readonly" class="form-control" value="8:30-10:05" >
                            <input type="text" id="monday1" class="form-control" name="monday1" >
                            <input type="text" id="tuesday1" class="form-control" name="tuesday1" >
                            <input type="text" id="wednesday1" class="form-control" name="wednesday1" >
                            <input type="text" id="thursday1" class="form-control" name="thursday1" >
                            <input type="text" id="friday1" class="form-control" name="friday1" >
                            <input type="text" id="saturday1" class="form-control" name="saturday1" >
                            <input type="text" id="sunday1" class="form-control" name="sunday1" >
                        </div>
                        <div class="col-xs-2">
                            <input type="text" readonly="readonly" class="form-control" value="10:25-12:00" >
                            <input type="text" id="monday2" class="form-control" name="monday2" >
                            <input type="text" id="tuesday2" class="form-control" name="tuesday2" >
                            <input type="text" id="wednesday2" class="form-control" name="wednesday2" >
                            <input type="text" id="thursday2" class="form-control" name="thursday2" >
                            <input type="text" id="friday2" class="form-control" name="friday2" >
                            <input type="text" id="saturday2" class="form-control" name="saturday2" >
                            <input type="text" id="sunday2" class="form-control" name="sunday2" >
                        </div>
                        <div class="col-xs-2">
                            <input type="text" readonly="readonly" class="form-control" value="2:00-3:35" >
                            <input type="text" id="monday3" class="form-control" name="monday3" >
                            <input type="text" id="tuesday3" class="form-control" name="tuesday3" >
                            <input type="text" id="wednesday3" class="form-control" name="wednesday3" >
                            <input type="text" id="thursday3" class="form-control" name="thursday3" >
                            <input type="text" id="friday3" class="form-control" name="friday3" >
                            <input type="text" id="saturday3" class="form-control" name="saturday3" >
                            <input type="text" id="sunday3" class="form-control" name="sunday3" >
                        </div>
                        <div class="col-xs-2">
                            <input type="text" readonly="readonly" class="form-control" value="3:55-5:30" >
                            <input type="text" id="monday4" class="form-control" name="monday4" >
                            <input type="text" id="tuesday4" class="form-control" name="tuesday4" >
                            <input type="text" id="wednesday4" class="form-control" name="wednesday4" >
                            <input type="text" id="thursday4" class="form-control" name="thursday4" >
                            <input type="text" id="friday4" class="form-control" name="friday4" >
                            <input type="text" id="saturday4" class="form-control" name="saturday4" >
                            <input type="text" id="sunday4" class="form-control" name="sunday4" >
                        </div>
                        <div class="col-xs-2">
                            <input type="text" readonly="readonly" class="form-control" value="6:30-8:55" >
                            <input type="text" id="monday5" class="form-control" name="monday5" >
                            <input type="text" id="tuesday5" class="form-control" name="tuesday5" >
                            <input type="text" id="wednesday5" class="form-control" name="wednesday5" >
                            <input type="text" id="thursday5" class="form-control" name="thursday5" >
                            <input type="text" id="friday5" class="form-control" name="friday5" >
                            <input type="text" id="saturday5" class="form-control" name="saturday5" >
                            <input type="text" id="sunday5" class="form-control" name="sunday5" >
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="curriculum_save_btn">更改</button>
            </div>
        </div>
    </div>
</div>
<div class="panel">
    <div class="panel-body">
        <div class="col-md-12">
            <h3 class="animated fadeInLeft">学生课表</h3>
        </div>
    </div>
</div>

<table class="table table-bordered table-condensed" style="width: 100%; height: 80%; word-break:break-all; word-wrap:break-word" id="curriculum_table">
    <thead>
    <tr>
        <th>时间</th>
        <th>星期一</th>
        <th>星期二</th>
        <th>星期三</th>
        <th>星期四</th>
        <th>星期五</th>
        <th>星期六</th>
        <th>星期日</th>
    </tr>
    </thead>
    <tbody>

    </tbody>
</table>
<div class="row">
    <div class="col-md-4 col-md-offset-5" id="change">
        <button class="btn btn-primary" id="curriculum_add_btn" style="height: 80px;width: 160px;font-size: 45px">更改</button>
    </div>
</div>
<script type="text/javascript">
    var number=<%=session.getAttribute("user_number")%>;
    $(function () {
        show_table();
    })
    function show_table() {
        $.ajax({
            url:"http://localhost:8080/mes/curriculum",
            data:"number="+number,
            type:"get",
            success:function (result){
                // console.log(result);
                build_curriculum_stable(result);
                $("td,th").addClass("text-center").attr("style","width: 50px; height: 50px");
                if (number<2000){
                    $("#change").attr("hidden","hidden");
                }
            }
        })
    }
    function build_curriculum_stable(result){
        //清空
        $("#curriculum_table tbody").empty();
        var curriculum=result.extend.curriculum
        var monday=curriculum.monday.split('-');
        var tuesday=curriculum.tuesday.split('-');
        var wednesday=curriculum.wednesday.split('-');
        var thursday=curriculum.thursday.split('-');
        var friday=curriculum.friday.split('-');
        var saturday=curriculum.saturday.split('-');
        var sunday=curriculum.sunday.split('-');
        var time=["8:30-10:05","10:25-12:00","2:00-3:35","3:55-5:30","6:30-8:55"];

        var mondayTd=new Array(5);
        var tuesdayTd=new Array(5);
        var wednesdayTd=new Array(5);
        var thursdayTd=new Array(5);
        var fridayTd=new Array(5);
        var saturdayTd=new Array(5);
        var sundayTd=new Array(5);
        var timeTd=new Array(5);

        for (var i=0;i<5;i++){
            timeTd[i]=$("<td></td>").append(time[i]);
            mondayTd[i]=$("<td></td>").append(monday[i]);
            tuesdayTd[i]=$("<td></td>").append(tuesday[i]);
            wednesdayTd[i]=$("<td></td>").append(wednesday[i]);
            thursdayTd[i]=$("<td></td>").append(thursday[i]);
            fridayTd[i]=$("<td></td>").append(friday[i]);
            saturdayTd[i]=$("<td></td>").append(saturday[i]);
            sundayTd[i]=$("<td></td>").append(sunday[i]);

            $("<tr></tr>").append(timeTd[i]).append(mondayTd[i]).append(tuesdayTd[i]).append(wednesdayTd[i]).append(thursdayTd[i]).append(fridayTd[i])
                .append(saturdayTd[i]).append(sundayTd[i]).appendTo("#curriculum_table tbody")
        }
    }
    function getCurriculum(){
        $.ajax({
            url:"http://localhost:8080/mes/curriculum",
            data:"number="+number,
            type:"get",
            success:function (result){
                var curriculum=result.extend.curriculum
                var monday=curriculum.monday.split('-');
                var tuesday=curriculum.tuesday.split('-');
                var wednesday=curriculum.wednesday.split('-');
                var thursday=curriculum.thursday.split('-');
                var friday=curriculum.friday.split('-');
                var saturday=curriculum.saturday.split('-');
                var sunday=curriculum.sunday.split('-');

                for (var i=0;i<5;i++){
                    var j=i+1;
                    $("#monday"+j).val(monday[i]);
                    $("#tuesday"+j).val(tuesday[i]);
                    $("#wednesday"+j).val(wednesday[i]);
                    $("#thursday"+j).val(thursday[i]);
                    $("#friday"+j).val(friday[i]);
                    $("#saturday"+j).val(saturday[i]);
                    $("#sunday"+j).val(sunday[i]);
                }
            }
        })
    }
    $("#curriculum_add_btn").click(function (){

        getCurriculum();

        $("#curriculumModal").modal({
            backdrop:"static"
        })
    })
    $("#curriculum_save_btn").click(function (){
        var curriculum=$("#curriculumModal form").serialize()
        var data=curriculum.split("&");
        var monday=""
        var tuesday=""
        var wednesday=""
        var thursday=""
        var friday=""
        var saturday=""
        var sunday=""
        for (var i=0;i<35;i=i+7){
            monday+=data[i].split("=")[1]+"-";
            tuesday+=data[i+1].split("=")[1]+"-";
            wednesday+=data[i+2].split("=")[1]+"-";
            thursday+=data[i+3].split("=")[1]+"-";
            friday+=data[i+4].split("=")[1]+"-";
            saturday+=data[i+5].split("=")[1]+"-";
            sunday+=data[i+6].split("=")[1]+"-";
        }
        monday=monday.substring(0,monday.length-1);
        tuesday=tuesday.substring(0,tuesday.length-1);
        wednesday=wednesday.substring(0,wednesday.length-1);
        thursday=thursday.substring(0,thursday.length-1);
        friday=friday.substring(0,friday.length-1);
        saturday=saturday.substring(0,saturday.length-1);
        sunday=sunday.substring(0,sunday.length-1);
        data="tNumber="+number+"&"+"monday="+monday+"&"+"tuesday="+tuesday+"&"+"wednesday="+wednesday+"&"+"thursday="+thursday+
            "&"+"friday="+friday+"&"+"saturday="+saturday+"&"+"sunday="+sunday;
        if (confirm("确认修改课表吗？")){
            $.ajax({
                url: "http://localhost:8080/mes/curriculum/"+number,
                type: "PUT",
                data: data,
                success:function (result){
                    $("#curriculumModal").modal("hide")
                    show_table();
                }
            })
        }
    })
</script>
</body>
</html>
