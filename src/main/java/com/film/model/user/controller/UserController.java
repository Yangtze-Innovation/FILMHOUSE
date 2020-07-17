package com.film.model.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.film.model.user.dao.UserDao;
import com.film.model.user.entity.User;
import com.film.model.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	
	@Autowired
	UserService userService;
	//跳转到登陆页面
	@RequestMapping("/login")
	public String login() {
		return "user/login";//登陆页面的位置（jsp存放位置）
	}
	//请求登陆
	@RequestMapping("/loginSubmit")
	public String loginSubmit(User user) {
		String status =  userService.checkUser(user);
		if(status.equals("101")){
			//验证成功
			return "redirect:/film/list";
		}else{
			return null;
		}
	}
	@RequestMapping("/save")	
	@ResponseBody
	public String save(User user) {
		userService.save(user);
		return "OK";
	}

}
