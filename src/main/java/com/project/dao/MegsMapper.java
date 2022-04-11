package com.project.dao;

import com.project.bean.Megs;
import com.project.bean.MegsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MegsMapper {
    long countByExample(MegsExample example);

    int deleteByExample(MegsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Megs record);

    int insertSelective(Megs record);

    List<Megs> selectByExample(MegsExample example);

    Megs selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Megs record, @Param("example") MegsExample example);

    int updateByExample(@Param("record") Megs record, @Param("example") MegsExample example);

    int updateByPrimaryKeySelective(Megs record);

    int updateByPrimaryKey(Megs record);
}