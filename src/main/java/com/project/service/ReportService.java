package com.project.service;

import com.project.bean.Reports;
import com.project.bean.ReportsExample;
import com.project.bean.TAS;
import com.project.bean.TASExample;
import com.project.dao.ReportsMapper;
import com.project.dao.TASMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

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
    public List<Reports> getStudentsReports(int id) {
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
            return reportsMapper.selectByExample(reportExample);
        }else {
            ReportsExample reportExample=new ReportsExample();
            ReportsExample.Criteria criteria=reportExample.createCriteria();
            criteria.andStuNumberEqualTo(id);
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

    public List<Reports> getExcellentReport(Integer MyNumber) {
        ReportsExample example=new ReportsExample();
        ReportsExample.Criteria criteria=example.createCriteria();
        criteria.andTaskNumberGreaterThan(5);
        List<Reports> reports = reportsMapper.selectByExample(example);
        List<Reports> excellentReport=new ArrayList<>();
        for (int i=2;i<reports.size();i++){
            Integer stuNumber = reports.get(i).getStuNumber();
            TAS tas = tasMapper.selectByPrimaryKey(MyNumber);
            TAS tas1 = tasMapper.selectByPrimaryKey(stuNumber);
            if(tas1.gettNumber()==tas.gettNumber()){
                excellentReport.add(reports.get(i));
            }
        }
        return excellentReport;
    }
}
