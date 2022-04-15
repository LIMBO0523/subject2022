package com.project.service;

import com.project.bean.Paper;
import com.project.bean.PaperExample;
import com.project.bean.TAS;
import com.project.bean.TASExample;
import com.project.dao.PaperMapper;
import com.project.dao.TASMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

import static com.project.bean.DateUtil.StringTimeTurnToLongTime;
import static com.project.bean.DateUtil.isThisWeek;

@Service
public class PaperService {
    @Autowired
    private PaperMapper paperMapper;
    @Autowired
    private TASMapper tasMapper;

    /**
     * 更新论文
     */
    public void updatePaper(Paper paper){
        paperMapper.updateByPrimaryKeySelective(paper);
    }
    /**
     * 查询论文
     */
    public Paper getPaper(Integer id){
        return paperMapper.selectByPrimaryKeyWithStu(id);
    }

    /**
     * 保存新的学习文献
     */
    public void savePaper(Paper paper){
        paper.setpProgress(0);
        paper.setpStatus("未完成");
        paperMapper.insert(paper);
    }
    /**
     * 查询所有论文学习情况
     */
    public List<Paper> getAllPaper(Integer number,String paperName,String paperStatus,String paperKeyWord){
        PaperExample paperExample = new PaperExample();
        PaperExample.Criteria criteria=paperExample.createCriteria();
        criteria.andStuNumberEqualTo(number);

        PaperExample paperExample1=new PaperExample();
        PaperExample.Criteria criteria1=paperExample1.createCriteria();
        if (!"undefined".equals(paperName)) {
            criteria.andPNameLike("%"+paperName+"%");
            criteria1.andPNameLike("%"+paperName+"%");
        }
        if (!"undefined".equals(paperStatus)){
            criteria.andPStatusEqualTo(paperStatus);
            criteria1.andPStatusEqualTo(paperStatus);
        }
        if (!"undefined".equals(paperKeyWord)){
            criteria.andPaperLike("%"+paperKeyWord+"%");
            criteria1.andPaperLike("%"+paperKeyWord+"%");
        }
        if (number>=3000)
            return paperMapper.selectByExampleWithStu(paperExample1);
        else if (number<2000)
            return paperMapper.selectByExampleWithStu(paperExample);
        else
            return null;
    }
    /**
     * 根据学生的学号，查询所有论文
     */
    public List<Paper> getAllPaperbyStuNumber(Integer number,String paperName,String paperStatus,String paperKeyWord){
        TASExample tasExample=new TASExample();
        TASExample.Criteria criteria=tasExample.createCriteria();
        criteria.andTNumberEqualTo(number);
        List<TAS> list=tasMapper.selectByExample(tasExample);
        List<Integer> numbers = new ArrayList<>();
        for (TAS tas : list) {
            numbers.add(tas.getNumber());
        }
        PaperExample paperExample=new PaperExample();
        PaperExample.Criteria criteria1=paperExample.createCriteria();
        criteria1.andStuNumberIn(numbers);
        if (!"undefined".equals(paperName))
            criteria1.andPNameLike("%"+paperName+"%");
        if (!"undefined".equals(paperStatus))
            criteria1.andPStatusEqualTo(paperStatus);
        if (!"undefined".equals(paperKeyWord)){
            criteria1.andPaperLike("%"+paperKeyWord+"%");
        }
        return paperMapper.selectByExampleWithStu(paperExample);
    }

    public void deleteBatch(List<Integer> list) {
        PaperExample paperExample=new PaperExample();
        PaperExample.Criteria criteria=paperExample.createCriteria();
        criteria.andIdIn(list);
        paperMapper.deleteByExample(paperExample);
    }

    public void deletePaperbyId(Integer id) {
        paperMapper.deleteByPrimaryKey(id);
    }

    public List<Paper> getAllMyPaper(int id) {
        PaperExample paperExample=new PaperExample();
        PaperExample.Criteria criteria=paperExample.createCriteria();
        criteria.andStuNumberEqualTo(id);
        return paperMapper.selectByExampleWithStu(paperExample);
    }

    public List<Paper> getExcellentPaper(Integer id) throws ParseException {
        PaperExample paperExample=new PaperExample();
        PaperExample.Criteria criteria=paperExample.createCriteria();
        criteria.andPProgressGreaterThanOrEqualTo(85);
        List<Paper> papers = paperMapper.selectByExampleWithStu(paperExample);
        List<Paper> excellentPapers=new ArrayList<>();
        papers = papers.stream().sorted(Comparator.comparing(Paper::getpProgress).reversed()).collect(Collectors.toList());
        for (int i=0;i<papers.size();i++){
            Integer stuNumber=papers.get(i).getStuNumber();
            TAS tas = tasMapper.selectByPrimaryKey(id);
            TAS tas1 = tasMapper.selectByPrimaryKey(stuNumber);
            if (tas1.gettNumber().equals(tas.gettNumber())){
                String s = papers.get(i).getpTime();
                s=s+" 00:00:00";
                long l = StringTimeTurnToLongTime(s);
                if (isThisWeek(l)){
                    excellentPapers.add(papers.get(i));
                }
                if (excellentPapers.size()>=3)
                    break;
            }
        }
        return excellentPapers;
    }

    public List<Paper> TeacherGetExcellentPaper(Integer id) throws ParseException {
        TASExample tasExample=new TASExample();
        TASExample.Criteria criteria=tasExample.createCriteria();
        criteria.andTNumberEqualTo(id);
        List<TAS> tas = tasMapper.selectByExample(tasExample);
        List<Integer> stuNumber=new ArrayList<>();
        List<Paper> excellentPapers=new ArrayList<>();
        for (TAS ta : tas) {
            stuNumber.add(ta.getNumber());
        }
        PaperExample paperExample=new PaperExample();
        PaperExample.Criteria criteria1=paperExample.createCriteria();
        criteria1.andStuNumberIn(stuNumber).andPProgressGreaterThan(85);
        List<Paper> papers = paperMapper.selectByExampleWithStu(paperExample);
        papers = papers.stream().sorted(Comparator.comparing(Paper::getpProgress).reversed()).collect(Collectors.toList());
        for (Paper paper : papers) {
            String submitTime = paper.getpTime();
            submitTime = submitTime + " 00:00:00";
            long l = StringTimeTurnToLongTime(submitTime);
            if (isThisWeek(l))
                excellentPapers.add(paper);
            if (excellentPapers.size() >= 3)
                break;
        }
        return excellentPapers;
    }
}
