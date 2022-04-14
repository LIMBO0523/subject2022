package com.project.service;

import com.project.bean.TAS;
import com.project.bean.TASExample;
import com.project.dao.TASMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TASService {
    @Autowired
    TASMapper tasMapper;

    /**
     * 更新学生信息
     */
    public void updateStu(TAS tas){
        tasMapper.updateByPrimaryKeySelective(tas);
    }
    /**
     * 根据di查询学生
     */
    public TAS getStu(Integer id){
        return tasMapper.selectByPrimaryKey(id);
    }

    /**
     * 学生保存
     * @param tas
     */
    public void saveStu(TAS tas){
        tas.setPassword("123");
        tasMapper.insertSelective(tas);
    }
    /**
     * 查询所有学生
     */
    public List<TAS> getStus(Integer number){
        TASExample tasExample=new TASExample();
        TASExample.Criteria criteria=tasExample.createCriteria();
        if (number>=3000){
            criteria.andNumberLessThan(2000);
            return tasMapper.selectByExample(tasExample);
        }
        else{
            criteria.andTNumberEqualTo(number);
            return tasMapper.selectByExample(tasExample);
        }

    }

    public TAS getPassWithNumber(String luser) {
        int number=Integer.parseInt(luser);
        return tasMapper.selectByPrimaryKey(number);
    }

    /**
     * 单个删除
     */
    public void deleteTASbyId(Integer id) {
        tasMapper.deleteByPrimaryKey(id);
    }

    /**
     * 批量删除
     */
    public void deleteBatch(List<Integer> list) {
        TASExample tasExample=new TASExample();
        TASExample.Criteria criteria=tasExample.createCriteria();
        criteria.andNumberIn(list);
        tasMapper.deleteByExample(tasExample);
    }

    /**
     * 通过ID搜索学生
     */
    public List<TAS> getStusById(int number, int id) {

        TASExample tasExample1=new TASExample();
        TASExample.Criteria criteria=tasExample1.createCriteria();
        criteria.andTNumberEqualTo(number).andNumberEqualTo(id);

        TASExample tasExample2=new TASExample();
        TASExample.Criteria criteria1=tasExample2.createCriteria();
        criteria1.andNumberEqualTo(id);
        if (number>=3000){

            return tasMapper.selectByExample(tasExample2);
        }
        else
            return tasMapper.selectByExample(tasExample1);
    }

    /**
     * 通过姓名搜索学生
     */
    public List<TAS> getStusByName(int number, String stuId) {

        TASExample tasExample1=new TASExample();
        TASExample.Criteria criteria=tasExample1.createCriteria();
        criteria.andTNumberEqualTo(number).andNameLessThanOrEqualTo(stuId);

        TASExample tasExample2=new TASExample();
        TASExample.Criteria criteria1=tasExample2.createCriteria();
        criteria1.andNameLessThanOrEqualTo(stuId);
        if (number>=3000) {
            criteria1.andNumberLessThan(1999);
            return tasMapper.selectByExample(tasExample2);
        }
        else
            return tasMapper.selectByExample(tasExample1);
    }

    /**
     * 查询所有老师信息
     */
    public List<TAS> getTeachers() {
        TASExample tasExample=new TASExample();
        TASExample.Criteria criteria=tasExample.createCriteria();
        criteria.andNumberBetween(2000,2999);
        return tasMapper.selectByExample(tasExample);
    }

    /**
     * 根据ID查询老师信息
     */
    public List<TAS> getTeachersById(int id) {
        TASExample tasExample=new TASExample();
        TASExample.Criteria criteria=tasExample.createCriteria();
        criteria.andNumberEqualTo(id);
        return tasMapper.selectByExample(tasExample);
    }

    /**
     * 根据名字查询老师信息
     */
    public List<TAS> getTeacherByName(String stuId) {
        TASExample tasExample=new TASExample();
        TASExample.Criteria criteria=tasExample.createCriteria();
        criteria.andNameLessThanOrEqualTo(stuId);
        return tasMapper.selectByExample(tasExample);
    }

    public List<TAS> getExcellentStu(List<Integer> stu) {
        TASExample tasExample=new TASExample();
        TASExample.Criteria criteria=tasExample.createCriteria();
        criteria.andNumberIn(stu);
        return tasMapper.selectByExample(tasExample);
    }
}
