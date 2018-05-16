package com.dao;

import com.entity.Meal;

public interface MealMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Meal record);

    int insertSelective(Meal record);

    Meal selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Meal record);

    int updateByPrimaryKeyWithBLOBs(Meal record);

    int updateByPrimaryKey(Meal record);
}