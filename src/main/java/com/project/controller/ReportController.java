package com.project.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.project.bean.Msg;
import com.project.bean.Reports;
import com.project.service.ReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class ReportController {
    @Autowired
    private ReportService reportService;
    /**
     * 更新周报
     */
    @RequestMapping(value = "report",method = RequestMethod.PUT)
    @ResponseBody
    public Msg updateReport(Reports reports){
        SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date(System.currentTimeMillis());
        String format = formatter.format(date);
        reports.setReplyTime(format);
        reportService.updateReport(reports);
        return Msg.success();
    }
    /**
     * 新的周报
     */
    @RequestMapping(value = "report",method = RequestMethod.POST)
    @ResponseBody
    public Msg saveReport(Reports reports){
        SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date(System.currentTimeMillis());
        String format = formatter.format(date);
        reports.setSubmitTime(format);
        reportService.saveReport(reports);
        return Msg.success();
    }
    /**
     * 删除周报
     */
    @RequestMapping(value = "report",method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deleteReportById(@RequestParam(value = "id")Integer id){
        reportService.deleteReport(id);
        return Msg.success();
    }

    /**
     * 查询优秀周报
     */
    @RequestMapping(value = "exreport",method = RequestMethod.GET)
    @ResponseBody
    public Msg getExcellentReport(HttpServletRequest req) throws ParseException {
        HttpSession session = req.getSession();
        String number=session.getAttribute("user_number").toString();
        List<Reports> excellentReport=new ArrayList<>();
        int id = Integer.parseInt(number);
        if (id>=2000){
            excellentReport = reportService.getExcellentStudentReport(id);
        }else{
            excellentReport = reportService.getExcellentPeerReport(id);
        }
        PageInfo page=new PageInfo(excellentReport,5);
        return Msg.success().add("page",page);
    }

    /**
     * 查询所有周报
     */
    @RequestMapping(value = "report",method = RequestMethod.GET)
    @ResponseBody
    public Msg getAllReports(@RequestParam(value = "pn",defaultValue = "1")Integer pn,
                             HttpServletRequest req){
        HttpSession session = req.getSession();
        String number=session.getAttribute("user_number").toString();
        Integer id=Integer.parseInt(number);
        List<Reports> reports;
        if (id>=2000){
            reports = reportService.getStudentsReports(pn,id);
        }else {

            String orderBy = "id DESC";
            PageHelper.startPage(pn, 6, orderBy);
            reports = reportService.getStudentsReports(pn,id);
        }
        PageInfo page=new PageInfo(reports,5);
        return Msg.success().add("page",page);
    }
}
