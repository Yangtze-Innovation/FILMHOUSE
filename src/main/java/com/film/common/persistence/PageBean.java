package com.film.common.persistence;

import org.omg.CORBA.INTERNAL;

import java.io.Serializable;
import java.util.List;

/**
 * @PackageName: com.film
 * @ClassName: PageBean
 * @Description:
 * @Autor: CourageHe
 * @Date: 2020/7/16 16:25
 */

public class PageBean<T> implements Serializable {
    private static final long serialVersionUID = 0L;
    private final int MAX_PAGE_SIZE=50;//最多每页显示50行
    public static final int DEFAULT_PAGE_SIZE = 8;
    //属性
    private int total;//总记录数
    private int pageSize;//每页显示的记录数
    private int pageNum;//总页数

    private int first = 1;//第一页
    private int last;//最后一页
    private int previous;//上一页
    private int next;//下一页
    private int current = 1;//当前页 默认是1

    private List<T>datas;//存放分页的数据

    public PageBean(int total) {
        this(total,DEFAULT_PAGE_SIZE);//默认的每页行数是8
    }

    public PageBean(int total, int pageSize) {
       //复制
        this.total = total;
        if(pageSize>MAX_PAGE_SIZE){
            this.pageNum=MAX_PAGE_SIZE;
        }else {
            this.pageSize = pageSize;
        }
        //更新受pageSize影响的属性
        update();
        this.current = 1;//默认当前页数是1
        this.next = this.pageNum == 1?1:this.current+1;
        this.previous = this.current==1?1:this.current-1;
    }
    //更新受pageSize影响的属性
    private void update(){
        this.pageNum = (int) Math.ceil((double)total/(double)pageNum);//向上取整
        this.last = pageNum;
    }
    public int getTotal() {
        return total;
    }

    public int getPageSize() {
        return pageSize;
    }
    //注意会影响其他属性值
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
        update();
        this.current = 1;//默认当前页数是1
        this.next = this.pageNum == 1?1:this.current+1;
        this.previous = this.current==1?1:this.current-1;
    }

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getFirst() {
        return first;
    }

    public void setFirst(int first) {
        this.first = first;
    }

    public int getLast() {
        return last;
    }

    public void setLast(int last) {
        this.last = last;
    }

    public int getPrevious() {
        return previous;
    }

    public void setPrevious(int previous) {
        this.previous = previous;
    }

    public int getNext() {
        return next;
    }

    public void setNext(int next) {
        this.next = next;
    }

    public int getCurrent() {
        return current;
    }

    public void setCurrent(int current) {
        this.current = current;
        this.next = this.pageNum == 1?1:this.current+1;
        this.previous = this.current==1?1:this.current-1;
    }

    public List<T> getDatas() {
        return datas;
    }

    public void setDatas(List<T> datas) {
        this.datas = datas;
    }
}
