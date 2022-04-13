package com.project.dao;

import com.project.bean.Reports;
import com.project.bean.ReportsExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReportsMapper {
    long countByExample(ReportsExample example);

    int deleteByExample(ReportsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Reports record);

    int insertSelective(Reports record);

    List<Reports> selectByExample(ReportsExample example);

    Reports selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Reports record, @Param("example") ReportsExample example);

    int updateByExample(@Param("record") Reports record, @Param("example") ReportsExample example);

    int updateByPrimaryKeySelective(Reports record);

    int updateByPrimaryKey(Reports record);
}