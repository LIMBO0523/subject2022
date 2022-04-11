package com.project.service;

import com.project.bean.Curriculum;
import com.project.dao.CurriculumMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CurriculumService {
    @Autowired
    private CurriculumMapper curriculumMapper;

    /**
     * 获取课程
     */
    public Curriculum getCurriculum(Integer number){
        return curriculumMapper.selectByPrimaryKey(number);
    }

    /**
     * 修改课程
     */
    public void updateCurriculum(Curriculum curriculum) {
        curriculumMapper.updateByPrimaryKeySelective(curriculum);
    }
}
