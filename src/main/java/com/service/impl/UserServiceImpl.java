package com.service.impl;

import com.dao.UserMapper;
import com.entity.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author zlh
 * @date 2018/5/16 15:37
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User selectUserByName(String name, String password) {
        return userMapper.selectUserByName(name, password);
    }

    @Override
    public boolean updateUserById(User user) {
        int result = userMapper.updateByPrimaryKeySelective(user);
        return result == 1;
    }

    @Override
    public boolean updatePwd(Integer id, String newPwd, String oldPwd) {
        User user = userMapper.selectByPrimaryKey(id);
        if (user!=null) {
            if (oldPwd.equals(user.getPassword())) {
                user.setPassword(newPwd);
                int result = userMapper.updateByPrimaryKeySelective(user);
                return result == 1;
            }
        }
        return false;
    }
}
