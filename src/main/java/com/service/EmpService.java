package com.service;

import com.entity.Emp;

import java.util.List;

/**
 * @author zlh
 * @date 2018/5/16 15:16
 */
public interface EmpService {
    List<Emp> selectAllEmp(int page, int rows);

    Emp selectEmpById(Integer id);

    boolean updateEmpById(Emp emp);
}
