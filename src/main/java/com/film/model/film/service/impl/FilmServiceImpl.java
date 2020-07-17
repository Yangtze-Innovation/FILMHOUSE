package com.film.model.film.service.impl;

import java.util.List;

import com.film.common.persistence.PageBean;
import com.film.model.film.entity.FilmVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.film.model.film.dao.FilmDao;
import com.film.model.film.entity.Film;
import com.film.model.film.service.FilmService;
import com.film.model.user.dao.UserDao;

@Service
@Transactional
public class FilmServiceImpl implements FilmService{
	private static final Integer pageSize= 2;
	private static final Integer firstPage=1;
	@Autowired
	FilmDao filmDao;
	public List<Film> findList(){
		return filmDao.findList();
	}

	public PageBean<Film> queryFilmByCondition(FilmVo filmVo) {
		Integer currentPage =firstPage;
		if(filmVo.getPageNo() != null){
			currentPage = Integer.valueOf(filmVo.getPageNo());
		}
		//获取记录总数
		int count = filmDao.rowCount();
		//查询列表数据
		filmVo.setStartRow((currentPage-1)*pageSize);
		List<Film> filmList = filmDao.selectListByCondition(filmVo);
		PageBean<Film> pageBean = new PageBean<Film>(count,pageSize);
		pageBean.setCurrent(currentPage);
		pageBean.setDatas(filmList);
		return pageBean;
	}

	public Film getFilmById(int id) {
		return  filmDao.getFilmById(id);
	}

	public void deleteFilmById(int id) {
		filmDao.deleteFilmById(id);
	}

}
