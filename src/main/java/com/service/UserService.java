package com.service;

import com.entity.User;

/**
 * @author zlh
 * @date 2018/5/16 15:36
 */
public interface UserService {
    User selectUserByName(String name, String password);

    boolean updateUserById(User user);

    boolean updatePwd(Integer id, String newPwd, String oldPwd);
}
