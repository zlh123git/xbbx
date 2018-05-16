package com.controller;

import com.entity.Emp;
import com.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author zlh
 * @date 2018/5/16 15:15
 */
@RestController
@RequestMapping(value = "/emp")
public class EmpController {

    @Autowired
    private EmpService empService;

    /**
     * 查询所有员工
     *
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping(value = "/selectAllEmp")
    public List<Emp> selectAllEmp(int page, int rows) {
        return empService.selectAllEmp(page, rows);
    }

    /**
     * 根据id查询员工详情
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/selectEmpById")
    public Emp selectEmpById(Integer id) {
        return empService.selectEmpById(id);
    }

    /**
     * 根据员工id修改员工信息
     *
     * @param emp
     * @return
     */
    @RequestMapping(value = "/updateEmpById")
    public String updateEmpById(Emp emp) {
        boolean result = empService.updateEmpById(emp);
        return result?"ok":"fail";
    }
}
