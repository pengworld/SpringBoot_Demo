package com.peng.demo.service.impl;

import com.peng.demo.mapper.UserLoginMapper;
import com.peng.demo.model.entity.User;
import com.peng.demo.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserLoginServiceImpl implements UserLoginService {

    @Autowired
    private UserLoginMapper userLoginMapper;

    @Override
    public Integer registerUser(User user) {
        return userLoginMapper.registerUser(user);
    }
}
