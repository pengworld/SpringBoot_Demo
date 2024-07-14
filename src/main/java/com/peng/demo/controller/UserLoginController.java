package com.peng.demo.controller;

import com.peng.demo.common.Result;
import com.peng.demo.model.entity.User;
import com.peng.demo.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/login")
public class UserLoginController {

    @Autowired
    private UserLoginService userLoginService;

    @PostMapping(value="/register")
    public Result register(@RequestBody User user) {
        Integer count = userLoginService.registerUser(user);

        Result result = new Result();
        if (count > 0){
            result.setMsg("用户注册成功");
            result.setSuccess(true);
            result.setDetail(user);
        }else{
            result.setMsg("用户注册失败");
            result.setSuccess(false);
        }
        return result;
    }
}