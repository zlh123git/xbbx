package com.service.impl;

import com.dao.EmpMapper;
import com.entity.Emp;
import com.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author zlh
 * @date 2018/5/16 15:16
 */
@Service
public class EmpServiceImpl implements EmpService{

    @Autowired
    private EmpMapper empMapper;

    @Override
    public List<Emp> selectAllEmp(int page, int rows) {
        return empMapper.selectAllEmp();
    }

    @Override
    public Emp selectEmpById(Integer id) {
        return empMapper.selectByPrimaryKey(id);
    }

    @Override
    public boolean updateEmpById(Emp emp) {
        int result = empMapper.updateByPrimaryKeySelective(emp);
        return result == 1;
    }
}
