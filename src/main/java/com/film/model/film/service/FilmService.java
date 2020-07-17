package com.film.model.film.service;

import java.util.List;

import com.film.common.persistence.PageBean;
import com.film.model.film.entity.Film;
import com.film.model.film.entity.FilmVo;

public interface FilmService {
	//查询影片列表
	List<Film> findList();
	//获得分页数据
	PageBean<Film> queryFilmByCondition(FilmVo filmVo);

    Film getFilmById(int id);

	void deleteFilmById(int id);
}
