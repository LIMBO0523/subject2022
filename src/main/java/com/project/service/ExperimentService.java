package com.project.service;

import com.github.pagehelper.PageHelper;
import com.project.bean.Experiment;
import com.project.bean.ExperimentExample;
import com.project.bean.TAS;
import com.project.bean.TASExample;
import com.project.dao.ExperimentMapper;
import com.project.dao.TASMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import static com.project.bean.DateUtil.StringTimeTurnToLongTime;
import static com.project.bean.DateUtil.isThisWeek;

@Service
public class ExperimentService {
    @Autowired
    private ExperimentMapper experimentMapper;
    @Autowired
    private TASMapper tasMapper;
    /**
     * 更新实验
     */
    public void updateExperiment(Experiment experiment){
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String dateNowStr = sdf.format(d);

        experiment.seteTime(dateNowStr);
        experimentMapper.updateByPrimaryKeySelective(experiment);
    }
    /**
     * 查询实验
     */
    public Experiment getExperiment(Integer id){
        return experimentMapper.selectByPrimaryKeyWithStu(id);
    }
    /**
     * 新增实验
     */
    public void saveExperiment(Experiment experiment){
        experiment.seteResult(0);
        experiment.seteStatus("未完成");
        experimentMapper.insert(experiment);
    }

    /**
     * 获得所有学生的实验信息
     */
    public List<Experiment> getAllExperiment(Integer number,String expName,String expStatus){
        ExperimentExample example=new ExperimentExample();
        ExperimentExample.Criteria criteria=example.createCriteria();
        criteria.andStuNumberEqualTo(number);

        ExperimentExample example1=new ExperimentExample();
        ExperimentExample.Criteria criteria1=example1.createCriteria();
        if (!"undefined".equals(expName)){
            criteria.andENameLike("%"+expName+"%");
            criteria1.andENameLike("%"+expName+"%");
        }
        if (!"undefined".equals(expStatus)){
            criteria.andEStatusEqualTo(expStatus);
            criteria1.andEStatusEqualTo(expStatus);
        }
        if (number>=3000)
            return experimentMapper.selectByExampleWithStu(example1);
        else if (number<2000) {
            return experimentMapper.selectByExampleWithStu(example);
        }
        else
            return null;
    }
    public List<Experiment> getAllExperimentByStuNumber(Integer number,String expName,String expStatus,Integer pn){
        TASExample tasExample=new TASExample();
        TASExample.Criteria criteria=tasExample.createCriteria();
        criteria.andTNumberEqualTo(number);
        List<TAS> list=tasMapper.selectByExample(tasExample);
        List<Integer> numbers = new ArrayList<>();
        for (int i=0;i<list.size();i++){
            numbers.add(list.get(i).getNumber());
        }

        ExperimentExample example=new ExperimentExample();
        ExperimentExample.Criteria criteria1=example.createCriteria();
        criteria1.andStuNumberIn(numbers);
        if (!"undefined".equals(expName)){
            criteria1.andENameLike("%"+expName+"%");
        }
        if (!"undefined".equals(expStatus)){
            criteria1.andEStatusEqualTo(expStatus);
        }
        PageHelper.startPage(pn, 5);
        return experimentMapper.selectByExampleWithStu(example);
    }

    public void deleteBatch(List<Integer> list) {
        ExperimentExample example=new ExperimentExample();
        ExperimentExample.Criteria criteria= example.createCriteria();
        criteria.andIdIn(list);
        experimentMapper.deleteByExample(example);
    }

    public void deleteExperimentbyId(Integer id) {
        experimentMapper.deleteByPrimaryKey(id);
    }

    public List<Experiment> getAllExperimentByNumber(Integer number) {
        ExperimentExample example=new ExperimentExample();
        ExperimentExample.Criteria criteria= example.createCriteria();
        criteria.andStuNumberEqualTo(number);
        return experimentMapper.selectByExampleWithStu(example);
    }

    public List<Experiment> getExcellentExp(Integer id) throws ParseException {
        ExperimentExample example=new ExperimentExample();
        ExperimentExample.Criteria criteria= example.createCriteria();
        criteria.andEResultGreaterThan(85);
        List<Experiment> experiments = experimentMapper.selectByExampleWithStu(example);
        List<Experiment> excellentexperiments=new ArrayList<>();
        experiments=experiments.stream().sorted(Comparator.comparing(Experiment::geteResult).reversed()).collect(Collectors.toList());
        for (int i=0;i<experiments.size();i++){
            Integer stuNumber=experiments.get(i).getStuNumber();
            TAS tas = tasMapper.selectByPrimaryKey(id);
            TAS tas1 = tasMapper.selectByPrimaryKey(stuNumber);
            if (tas.gettNumber().equals(tas1.gettNumber())){
                String s = experiments.get(i).geteTime();
                s=s+" 00:00:00";
                long l = StringTimeTurnToLongTime(s);
                if (isThisWeek(l)){
                    excellentexperiments.add(experiments.get(i));
                }
                if (excellentexperiments.size()>=3)
                    break;
            }
        }
        return excellentexperiments;
    }

    public List<Experiment> TeacherGetExcellentExp(Integer id) throws ParseException {
        TASExample tasExample=new TASExample();
        TASExample.Criteria criteria=tasExample.createCriteria();
        criteria.andTNumberEqualTo(id);
        List<TAS> tas = tasMapper.selectByExample(tasExample);
        List<Integer> stuNumber=new ArrayList<>();
        for (TAS ta : tas) {
            stuNumber.add(ta.getNumber());
        }
        ExperimentExample example=new ExperimentExample();
        ExperimentExample.Criteria criteria1=example.createCriteria();
        criteria1.andStuNumberIn(stuNumber).andEResultGreaterThan(85);
        List<Experiment> excellentexperiments=new ArrayList<>();
        List<Experiment> experiments = experimentMapper.selectByExampleWithStu(example);
        experiments=experiments.stream().sorted(Comparator.comparing(Experiment::geteResult).reversed()).collect(Collectors.toList());
        for (Experiment experiment : experiments) {
            String submitTime = experiment.geteTime();
            submitTime = submitTime + " 00:00:00";
            long l = StringTimeTurnToLongTime(submitTime);
            if (isThisWeek(l))
                excellentexperiments.add(experiment);
            if (excellentexperiments.size() >= 3)
                break;
        }
        return excellentexperiments;
    }
}
