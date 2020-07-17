package com.film.model.film.entity;

import java.io.Serializable;

public class Film implements Serializable{
	private static final long serialVersionUID = 0L;
	
	
	private Integer id;
	private String filmName;
	private String year;
	private String category;
	private String language;
	private String subtitle;
	private String releaseTime;
	private String filmPic;
	private String summary;
	private String director;
	private String actor;
	private String studio;
	private String playTime;
	
	public Film() {
		super();
		// TODO 自动生成的构造函数存根
	}
	public Film(String filmName, String filmPic, String summary) {
		super();
		this.filmName = filmName;
		this.filmPic = filmPic;
		this.summary = summary;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getSubtitle() {
		return subtitle;
	}

	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}

	public String getReleaseTime() {
		return releaseTime;
	}

	public void setReleaseTime(String releaseTime) {
		this.releaseTime = releaseTime;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFilmName() {
		return filmName;
	}
	public void setFilmName(String filmName) {
		this.filmName = filmName;
	}
	public String getFilmPic() {
		return filmPic;
	}
	public void setFilmPic(String filmPic) {
		this.filmPic = filmPic;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public String getStudio() {
		return studio;
	}

	public void setStudio(String studio) {
		this.studio = studio;
	}

	public String getPlayTime() {
		return playTime;
	}

	public void setPlayTime(String playTime) {
		this.playTime = playTime;
	}
}
