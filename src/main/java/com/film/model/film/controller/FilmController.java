package com.film.model.film.controller;
import com.film.common.persistence.PageBean;
import com.film.model.film.entity.Film;
import com.film.model.film.entity.FilmVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.film.model.film.service.FilmService;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/film")
public class FilmController {
	
	
	@Autowired
	FilmService filmService;
	//列表
	@RequestMapping("/list")
	public String list(Model model) {
		model.addAttribute("filmList",filmService.findList());
		return "film/index";
	}
	//列表
	@RequestMapping("/list2")
	public String list2(Model model, FilmVo filmVo) {
		PageBean<Film> page = filmService.queryFilmByCondition(filmVo);
		model.addAttribute("page",page);
		return "film/filmList";
	}
	//根据id查询信息
	@RequestMapping("/getFilmById")
	@ResponseBody
	public Film getFilmById(int id ) {
		return filmService.getFilmById(id);
	}
	//列表
	@RequestMapping("/getFilmData")
	public String getFilmData(Model model, FilmVo filmVo) {
		PageBean<Film> page = filmService.queryFilmByCondition(filmVo);
		model.addAttribute("page",page);
		return "film/filmDataPage";
	}

	//列表
	@RequestMapping("/deleteFilmById")
	public String deleteFilmById(int id) {
		filmService.deleteFilmById(id);
		return "redirect:/film/list";
	}
}
