package com.film.model.film.entity;

/**
 * @PackageName: com.film.model.film.entity
 * @ClassName: FilmVo
 * @Description:
 * @Autor: CourageHe
 * @Date: 2020/7/16 15:25
 */

public class FilmVo {
    //分页查询
    private Integer startRow;//其实记录行
        private Integer pageCount;//每页显示记录数
    private String  pageNo;//换收前台传递参数

    public Integer getStartRow() {
        return startRow;
    }

    public void setStartRow(Integer startRow) {
        this.startRow = startRow;
    }

    public Integer getPageCount() {
        return pageCount;
    }

    public void setPageCount(Integer pageCount) {
        this.pageCount = pageCount;
    }

    public String getPageNo() {
        return pageNo;
    }

    public void setPageNo(String pageNo) {
        this.pageNo = pageNo;
    }
}
