package com.project.service;

import com.project.bean.Paper;
import com.project.bean.PaperExample;
import com.project.bean.TAS;
import com.project.bean.TASExample;
import com.project.dao.PaperMapper;
import com.project.dao.TASMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

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
        return paperMapper.selectByPrimaryKey(id);
    }

    /**
     * 保存新的学习文献
     */
    public void savePaper(Paper paper){
        paper.setpProgress(0);
        paper.setpStatus("审核中");
        paperMapper.insert(paper);
    }
    /**
     * 查询所有论文学习情况
     */
    public List<Paper> getAllPaper(Integer number,String paperName,String paperStatus){
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
    public List<Paper> getAllPaperbyStuNumber(Integer number,String paperName,String paperStatus){
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
}
