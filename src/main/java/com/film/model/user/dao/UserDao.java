package com.film.model.user.dao;


import com.film.model.user.entity.User;

public interface UserDao {
	//根据用户名查询用户信息
	User findUserByName(String username);
	
	//保存用户信息
	void save(User user);
}
