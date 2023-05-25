package com.jxxt.mapper;

import java.util.List;

import com.jxxt.common.pojo.Page;
import com.jxxt.entity.THoliday;

public interface THolidayMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(THoliday record);

    int insertSelective(THoliday record);

    THoliday selectByPrimaryKey(Integer id);
    
    List findPage(Page page);

    int updateByPrimaryKeySelective(THoliday record);

    int updateByPrimaryKey(THoliday record);
}