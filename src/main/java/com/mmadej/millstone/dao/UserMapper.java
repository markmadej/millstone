package com.mmadej.millstone.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import java.util.List;

import com.mmadej.millstone.domain.User;


@Mapper
public interface UserMapper {

     @Select("SELECT user_id as userID, first_name as firstName, last_name as lastName FROM users WHERE user_id = #{id}")
     User getUser(long id);

     @Select("SELECT user_id as userID, first_name as firstName, last_name as lastName FROM users")
     List<User> getUsers();

     @Insert("INSERT INTO millstone.users (user_id, first_name, last_name) VALUES (#{userID}, #{firstName}, #{lastName})")
     
     // Sets the object id to the id generated in database
     @Options(useGeneratedKeys = true, keyColumn = "user_id", keyProperty = "user_id")
     void createUser(User user);
}
