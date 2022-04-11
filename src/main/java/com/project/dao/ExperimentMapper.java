package com.project.dao;

import com.project.bean.Experiment;
import com.project.bean.ExperimentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ExperimentMapper {
    long countByExample(ExperimentExample example);

    int deleteByExample(ExperimentExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Experiment record);

    int insertSelective(Experiment record);

    List<Experiment> selectByExample(ExperimentExample example);

    Experiment selectByPrimaryKey(Integer id);

    List<Experiment> selectByExampleWithStu(ExperimentExample example);

    Experiment selectByPrimaryKeyWithStu(Integer id);

    int updateByExampleSelective(@Param("record") Experiment record, @Param("example") ExperimentExample example);

    int updateByExample(@Param("record") Experiment record, @Param("example") ExperimentExample example);

    int updateByPrimaryKeySelective(Experiment record);

    int updateByPrimaryKey(Experiment record);
}