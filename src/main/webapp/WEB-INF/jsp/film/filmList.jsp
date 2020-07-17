<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
        /* 弹窗 */
     #dialog-bg{
            position:absolute;
            top: 0;
            left: 0;
            z-index: 10000;
            width: 100%;
            height: 100%;
            background-color:#ccc;
            opacity: 0.5;
            filter:Alpha(opacity=50);/*透明度兼容*/
            /*display: none;*/
        }
            
        .dialog-box{
            position: absolute;
            z-index: 20000;
            left: 50%;
            top: 50%;
            margin-left: -320px;
            margin-top: -200px;
            padding-left: 20px;
            width: 600px;
            height: 300px;
            border: 1px solid #f95;
            background-color: #FFF0F5;
            -moz-border-radius: 20px;
            -webkit-border-radius: 20px;
            border-radius: 20px;
            /*display: none;*/
        }
        .dialog-img{
            float: left;
            width: 50%;
            height: 100%;
        }
        .dialog-img img{
            width: 90%;
            height: 80%;
            border: solid 1px #ccc;
            margin-top: 20px;
        }
        .dialog-title{
            float: right;
            width: 50%;
            height: 100%;
         }
        .dialog-title p{
            display: block;
            float: left;
            text-align: left;
            width: 250px;
            height: 40px;
            font-size: 14px;
            font-weight: bold;
            font-family: "宋体";
            color: #000;
        }
        #close-dialog{
            float: right;
            margin-top: -35px;
            width: 20px;
            height: 20px;
            color: #f00;
            font-size: 12px;
            font-family: "宋体";
            cursor:pointer;
        }
    </style>
	<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script type="text/javascript">
    	$(function(){
    		//点击图片，弹出对话框
         /*   $(".href").click(function(){
                $("#dialog-bg").show();
            });
            $(".href").click(function(){
                $(".dialog-box").show();
            });*/
        
            $("span#close-dialog").click(function(){
                $("div#dialog-bg").hide();
                $(".dialog-box").hide();
                window.location.href=document.referrer;
            });
            
    	});	
        
    		
    </script>
</head>
<body>
		<!--弹框效果,需要在img上面加上JS语句，不可与<a></a>并用，此处由于无法点哪选哪，改用超链接标签，转到MealServlet处理-->
    <div id="dialog-bg"></div>
    <!--半透明背景-->
        <div class="dialog-box">
    <!--对话框-->
    	<c:forEach  items="${page.datas }" var="film">
	        <div class="dialog-img">
	            <img src="${film.filmPic }" alt="">
	        </div>
	        <div class="dialog-title">
	            <h3>${film.filmName }</h3>
	            <span id="close-dialog">×</span>
	            <p>${film.summary }</p>
	            <br/>
	            <br/>
<%--	            <p>${meal.mprice }元/份</p>--%>
<%--	            <br/>--%>
<%--	            <br/>--%>
	            
	        </div>
        </c:forEach>
        
    </div>
</body>
</html>