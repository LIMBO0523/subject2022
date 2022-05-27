package com.project.service;

import com.github.pagehelper.PageHelper;
import com.project.bean.Reports;
import com.project.bean.ReportsExample;
import com.project.bean.TAS;
import com.project.bean.TASExample;
import com.project.dao.ReportsMapper;
import com.project.dao.TASMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.util.*;
import java.util.stream.Collectors;

import static com.project.bean.DateUtil.StringTimeTurnToLongTime;
import static com.project.bean.DateUtil.isThisWeek;

@Service
public class ReportService {
    @Autowired
    private ReportsMapper reportsMapper;
    @Autowired
    private TASMapper tasMapper;


    /**
     * 老师获取周报
     * 学生查看自己的周报
     */
    public List<Reports> getStudentsReports(Integer pn,Integer id) {
        if (id>=2000) {
            TASExample tasExample = new TASExample();
            TASExample.Criteria criteria = tasExample.createCriteria();
            criteria.andTNumberEqualTo(id);
            List<TAS> tas = tasMapper.selectByExample(tasExample);
            List<Integer> stu_number = new ArrayList<>();
            for (TAS tas1 : tas) {
                stu_number.add(tas1.getNumber());
            }
            ReportsExample reportExample = new ReportsExample();
            ReportsExample.Criteria criteria1 = reportExample.createCriteria();
            criteria1.andStuNumberIn(stu_number);
            PageHelper.startPage(pn, 6,"id DESC");
            return reportsMapper.selectByExample(reportExample);
        }else {
            ReportsExample reportExample=new ReportsExample();
            ReportsExample.Criteria criteria=reportExample.createCriteria();
            criteria.andStuNumberEqualTo(id);
            //            reports = reports.stream().sorted(Comparator.comparing(Reports::getId).reversed()).collect(Collectors.toList());
            return reportsMapper.selectByExample(reportExample);
        }
    }
    /**
     * 删除周报
     */
    public void deleteReport(Integer id) {
        reportsMapper.deleteByPrimaryKey(id);
    }

    /**
     * 保存新的周报
     */
    public void saveReport(Reports reports) {
        reportsMapper.insertSelective(reports);
    }

    /**
     * 更新周报
     */
    public void updateReport(Reports reports) {
        reportsMapper.updateByPrimaryKeySelective(reports);
    }

    public List<Reports> getExcellentPeerReport(Integer MyNumber) throws ParseException {
        ReportsExample example=new ReportsExample();
        ReportsExample.Criteria criteria=example.createCriteria();
        criteria.andTaskNumberGreaterThan(5);
        List<Reports> reports = reportsMapper.selectByExample(example);
        List<Reports> excellentReport=new ArrayList<>();
        //将List中的Report按任务完成数量由小到大
        reports=reports.stream().sorted(Comparator.comparing(Reports::getTaskNumber).reversed()).collect(Collectors.toList());
        for (Reports report : reports) {
            Integer stuNumber = report.getStuNumber();
            TAS tas = tasMapper.selectByPrimaryKey(MyNumber);
            TAS tas1 = tasMapper.selectByPrimaryKey(stuNumber);
            if (tas1.gettNumber().equals(tas.gettNumber())) {
                String submitTime = report.getSubmitTime();
                submitTime = submitTime + " 00:00:00";
                long l = StringTimeTurnToLongTime(submitTime);
                if (isThisWeek(l)) {
                    excellentReport.add(report);
                }
                if (excellentReport.size() >= 3) {
                    break;
                }
            }

        }
        return excellentReport;
    }

    public List<Reports> getExcellentStudentReport(int id) throws ParseException {
        TASExample example=new TASExample();
        TASExample.Criteria criteria=example.createCriteria();
        criteria.andTNumberEqualTo(id);
        List<Integer> stuNumber=new ArrayList<>();
        List<TAS> tas = tasMapper.selectByExample(example);
        for (int i=0;i<tas.size();i++){
            stuNumber.add(tas.get(i).getNumber());
        }
        ReportsExample reportsExample=new ReportsExample();
        ReportsExample.Criteria criteria1=reportsExample.createCriteria();
        criteria1.andStuNumberIn(stuNumber);
        List<Reports> reports = reportsMapper.selectByExample(reportsExample);
        List<Reports> excellentReport=new ArrayList<>();
        //将List中的Report按任务完成数量由大到小
        reports=reports.stream().sorted(Comparator.comparing(Reports::getTaskNumber).reversed()).collect(Collectors.toList());
        for (Reports report : reports) {
            String submitTime = report.getSubmitTime();
            submitTime = submitTime + " 00:00:00";
            long l = StringTimeTurnToLongTime(submitTime);
            if (isThisWeek(l)) {
                excellentReport.add(report);
            }
            if (excellentReport.size() >= 3)
                break;
        }
        return excellentReport;
    }
}
