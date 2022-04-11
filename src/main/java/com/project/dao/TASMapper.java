package com.project.dao;

import com.project.bean.TAS;
import com.project.bean.TASExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TASMapper {
    long countByExample(TASExample example);

    int deleteByExample(TASExample example);

    int deleteByPrimaryKey(Integer number);

    int insert(TAS record);

    int insertSelective(TAS record);

    List<TAS> selectByExample(TASExample example);

    TAS selectByPrimaryKey(Integer number);

    int updateByExampleSelective(@Param("record") TAS record, @Param("example") TASExample example);

    int updateByExample(@Param("record") TAS record, @Param("example") TASExample example);

    int updateByPrimaryKeySelective(TAS record);

    int updateByPrimaryKey(TAS record);
}