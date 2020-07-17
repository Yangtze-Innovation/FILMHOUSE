package com.film.model.film.dao;

import java.io.Serializable;
import java.util.List;

import com.film.model.film.entity.Film;
import com.film.model.film.entity.FilmVo;

public interface FilmDao {
	//查询影片信息
	List<Film> findList();
	//保存影片信息
	void insertSelective(Film film);

	//查询总记录数
	int rowCount();

	//根据页码查询对应的列表数据
	List<Film> selectListByCondition(FilmVo filmVo);


    Film getFilmById(int id);

	void deleteFilmById(int id);
}
