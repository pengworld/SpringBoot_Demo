package com.peng.demo.mapper;

import com.peng.demo.model.entity.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface UserLoginMapper {

    @Insert("insert into user(username,password,status,create_time) values(#{username},#{password},1,CURRENT_TIME))")
    Integer registerUser(User user);
}
