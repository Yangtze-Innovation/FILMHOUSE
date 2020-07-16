package com.film.model.user.service.impl;


import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.film.model.user.dao.UserDao;
import com.film.model.user.entity.User;
import com.film.model.user.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService{
	@Autowired
	UserDao userDao;

	public void save(User user) {
		userDao.save(user);
		System.out.println("测试");
		
	}

	public User findUserByName(String username) {
		User user = userDao.findUserByName(username);
		return user;
	}

	/**
	 * 验证用户信息。
	 */
	public String checkUser(User user) {
		User u= userDao.findUserByName(user.getUsername());
		if(u!= null) {
			if(user.getPassword().equals(u.getPassword())) {
				return "101";//登陆成功
			}else {
				return "102";
			}
		}else {
			 return "102";//用户不存在
		}
	}
}
