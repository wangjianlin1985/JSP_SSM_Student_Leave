package com.jxxt.mapper;

import java.util.List;

import com.jxxt.entity.EnterDetails;
import com.jxxt.entity.TInventory;
import com.jxxt.entity.TMedicinal;

public interface TMedicinalMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TMedicinal record);

    int insertSelective(TMedicinal record);

    TMedicinal selectByPrimaryKey(Integer id);
    
    
    List<TMedicinal> selectByCommonName(String name);

    int updateByPrimaryKeySelective(TMedicinal record);

    int updateByPrimaryKey(TMedicinal record);
    
    int insertSEnterDetails(EnterDetails record);
    int updateTInventory(TInventory record);
    
}