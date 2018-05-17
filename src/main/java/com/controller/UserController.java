package com.controller;

import com.entity.User;
import com.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

/**
 * @author zlh
 * @date 2018/5/16 10:26
 */
@RestController
@RequestMapping(value = "/user")
@Api(description = "用户管理接口")
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 验证登录
     *
     * @param name
     * @param password
     * @return
     */
    @RequestMapping(value = "/login")
    @ApiOperation(value = "登录", notes = "登录")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "name", value = "用户名", required = true, paramType = "query"),
            @ApiImplicitParam(name = "password", value = "密码", required = true, paramType = "query")})
    public String login(String name, String password, HttpSession session) {
        User user = userService.selectUserByName(name, password);
        if (user!=null) {
            session.setAttribute("login",user);
            return "ok";
        }
        return "fail";
    }

    /**
     * 注销登录
     *
     * @param session
     */
    @RequestMapping(value = "/logout")
    public void logout(HttpSession session) {
        session.setAttribute("login",null);
    }

    /**修改用户
     *
     * @param user
     * @return
     */
    @RequestMapping(value = "/updateUserById")
    public String updateUserById(User user) {
        boolean result = userService.updateUserById(user);
        return result?"ok":"fail";
    }

    /**
     * 修改密码
     *
     * @param id
     * @param newPwd
     * @param oldPwd
     * @return
     */
    @RequestMapping(value = "/updatePassword")
    public String updatePassword(Integer id, String newPwd, String oldPwd) {
        boolean result = userService.updatePwd(id, newPwd, oldPwd);
        return result?"ok":"fail";
    }
}
