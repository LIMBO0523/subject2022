
//解析显示分页信息
function build_page_info(result){
    $("#page_info_area").empty();
    $("#page_info_area").append(" 当前第"+result.extend.page.pageNum+"页,总共"+result.extend.page.pages+"页,共"+result.extend.page.total+"条记录")
    currentPage=result.extend.page.pageNum;
}
//解析显示分页条
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

function reset_form(ele){
    $(ele)[0].reset();
    //清空表单样式
    $(ele).find("*").removeClass("has-error has-success");
    $(ele).find(".help-block").text("");
}

function show_validate_msg(ele,status,msg){
    //清除当前元素校验状态
    $(ele).parent().removeClass("has-success has-error")
    $(ele).text("span").text("")
    if ("success"==status){
        $(ele).parent().addClass("has-success");
        $(ele).next("span").text(msg);
    }else if ("error"==status){
        $(ele).parent().addClass("has-error");
        $(ele).next("span").text(msg);
    }
}
//获得所有批次
function getProduction(ele){
    //清空之前下拉列表的值
    $(ele).empty();
    $.ajax({
        url:"http://localhost:8080/mes/productions",
        type: "get",
        success:function (result){
            //显示在部门的下拉列表中
            // $("#dept_add_select").append("<option></option>")
            var optionEle=$("<option></option>").append("请选择批次").attr("value","")
            optionEle.appendTo(ele);
            $.each(result.extend.productions,function (i,n){
                var optionEle=$("<option></option>").append(n.idProduction).attr("value",n.idProduction)
                optionEle.appendTo(ele)
            })
        }
    })
}
function getStaff(ele,position){
    //清空之前下拉列表的值
    $(ele).empty();
    $.ajax({
        url:"http://localhost:8080/mes/empsbyname",
        type: "get",
        data:"position="+position,
        success:function (result){
            //显示在部门的下拉列表中
            // $("#dept_add_select").append("<option></option>")
            $.each(result.extend.staff,function (i,n){
                var optionEle=$("<option></option>").append(n.nameStaff).attr("value",n.nameStaff)
                optionEle.appendTo(ele)
            })
        }
    })
}