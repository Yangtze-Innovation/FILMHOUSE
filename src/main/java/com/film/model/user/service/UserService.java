package com.film.model.user.service;

import com.film.model.user.entity.User;

public interface UserService {

	void save(User user);


	String checkUser(User user);

}
