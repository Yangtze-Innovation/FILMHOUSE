<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		*{
			margin: 0;
			padding: 0;
		}
		.user{
			width: 80%;
			height: 10%;
			text-align: right;
			float: right;
			color: #666;
			font-size: 20px;
			margin-right: 10%;
			border: 1px solid #ccc;
			background-color: #f6f6f6;
			padding-top: 1%;
			margin-bottom: 2%;
		}
		.tianyue{
			float: left;
		}
		.user p{
			display: inline-block;
		}
		.user a{
			color: #666;
			text-decoration: none;
		}
		.user a:hover{
			color: #f0f;
		}

		.top
		{
			width: 90%;
			margin-left: 5%;
			text-align: center;
			height: 80px;

			padding-top: 3%;
		}
		.top input{
			width: 400px;
			height: 30px;
		}
		.top .btn{
			background-color: #1CBAB4;
			color: white;
			font-size: 16px;
			outline: none;
			border: 1px  #1CBAB4 solid;
			width: 80px;
			height: 32px;
			position: relative;/*相对于自己原位置定位*/
			left:-5px;
			top:1px;
		}
		.main {

			width: 90%;
			margin-left: 5%;

		}
		.main table{
			width: 90%;
			margin-left: 5%;
			border:1px #1CBAB4 solid;
			border-collapse: collapse;
			text-align: center;
			margin-top: 20px;
		}
		.main td,th{
			border:1px #1CBAB4 solid;
		}
		.main tr{
			height: 50px;
		}
		.main .btn{
			display:inline-block;
			background-color: #F0F0F0;
			color: #000;
			font-size: 12px;
			font-weight:bold;
			outline: none;
			width: 70px;
			height: 30px;
			line-height:30px;
			text-decoration: none;
		}
		.main .btn:hover {
			background-color:#1CBAB4;
			color: white;
		}
		.fname{
			color: #666;
			text-decoration: none;
		}

		/* 弹窗 */
		#dialog-bg{
			position:absolute;
			top: 0;
			left: 0;
			z-index: 10000;
			width: 100%;
			height: 100%;
			background-color:#888;
			opacity: 0.5;
			filter:Alpha(opacity=50);/*透明度兼容*/
			display: none;
		}

		.dialog-box{
			position: absolute;
			z-index: 20000;
			left: 50%;
			top: 50%;
			margin-left: -450px;
			margin-top: -300px;
			padding-left: 20px;
			width: 900px;
			height: 600px;
			border: 1px solid #f0f0f0;
			background-color: #ffffff;
			/* -moz-border-radius: 20px;
            -webkit-border-radius: 20px;
            border-radius: 20px; */
			display: none;
		}
		.dialog-img{
			float: right;
			width: 40%;
			height: 60%;
			margin-right: 20px;
		}
		.dialog-img img{
			width: 100%;
			height: 100%;
			border: solid 1px #ccc;
			margin-top: 20px;
		}
		.dialog-title{
			float: left;
			width: 55%;
			height: 100%;
		}
		.dialog-title p{
			display: block;
			float: left;
			text-align: left;
			width: 95%;
			height: 32px;
			font-size: 16px;
			font-weight: bold;
			font-family: "宋体";
			color: #000;
			margin-top: 10px;
		}
		.box-top{
			width: 100%;
			height: 6%;
			color: #000;
			background-color: #f0f0f0;
			margin-left: -20px;
			padding-right: 20px;
			font-family: "宋体";
			font-size: 25px;
			border: 1px #ccc solid;
		}
		.box-top p{
			margin-left: 10px;
		}
		#close-dialog{
			float: right;
			width: 30px;
			height: 30px;
			color: #000000;
			font-size: 25px;
			cursor:pointer;
			margin-top: -25px;
		}

	</style>

		
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>

	
</head>
<body>
	<div class="user">
		<p class="tianyue">天悦在线电影后台管理系统</p>
		<p><span>dango</span> <a href="">&nbsp;&nbsp;安全退出</a></p>
		
	</div>
	<div class="top">
		<form action="" >
			<input type="text" placeholder="请输入电影名" name="word">
			<input type="submit" value="搜索" class="btn">
		</form>
	</div>
	<div class="main">
		<a href="" class="btn" style="margin-left: 5%;text-align: center;">添加电影</a>
	<table>
		<tr>
				<th>影片编号</th>
				<th>影片名称</th>
				<th>导演</th>
				<th>主演</th>
				<th>播放影厅</th>
				<th>播放时间</th>
				<th>操作</th>
			</tr>
		<c:forEach  items="${filmList }" var="film">
			<tr>
				<td>${film.id }</td>
				<td class="fname" onclick="onclick_film(${film.id})">${film.filmName }</td>
				<td>${film.director }</td>
				<td>${film.actor }</td>
				<td>${film.studio }</td>
				<td>${film.playTime }</td>
				<td>
					<!-- 修改之前先查询该电影，提高用户体验度 -->
					<a href=""  class="btn">修改</a>
					<a href="/film/deleteFilmById?id=${film.id}"  class="btn">删除</a>
				</td>
			</tr>
		</c:forEach>
<%--			<tr>--%>
<%--				<td>20200001</td>--%>
<%--				<td class="fname">朝花夕誓——于离别之朝束起约定之花</td>--%>
<%--				<td>冈田麿里，篠原俊哉（副）</td>--%>
<%--				<td>玛奇亚 (配音)石见舞菜香</td>--%>
<%--				<td>1</td>--%>
<%--				<td>2020-07-17 19:30</td>--%>
<%--				<td>--%>
<%--					<!-- 修改之前先查询该电影，提高用户体验度 -->--%>
<%--					<a href=""  class="btn">修改</a>--%>
<%--					<a href=""  class="btn">删除</a>--%>
<%--				</td>--%>
<%--			</tr>--%>

	</table>
	</div>

	<!-- 弹窗 -->
	<div id="dialog-bg"></div>
    <!--半透明背景-->
        <div class="dialog-box">
	<!--对话框-->
			<div class="box-top">
				<p>影片信息</p>
				<p><span id="close-dialog">×</span></p>
			</div>
	        <div class="dialog-img">
	            <img src="1.jpg" alt="">
	        </div>
	        <div class="dialog-title">
				<p>影片编号&nbsp;&nbsp;<span>XXXX</span></p>
	            <p>片名&nbsp;&nbsp;&nbsp;&nbsp;<span>XXXX</span></p>
	            <p>年代&nbsp;&nbsp;&nbsp;&nbsp;<span>XXXX</span></p>
				<p>类别&nbsp;&nbsp;&nbsp;&nbsp;<span>XXXX</span></p>
				<p>语言&nbsp;&nbsp;&nbsp;&nbsp;<span>XXXX</span></p>
				<p>字幕&nbsp;&nbsp;&nbsp;&nbsp;<span>XXXX</span></p>
				<p>导演&nbsp;&nbsp;&nbsp;&nbsp;<span>XXXX</span></p>
				<p>演员&nbsp;&nbsp;&nbsp;&nbsp;<span>XXXX</span></p>
				<p>上映时间&nbsp;&nbsp;<span>XXXX</span></p>
				<p>播放影厅&nbsp;&nbsp;<span>XXXX</span></p>
				<p>播放时间&nbsp;&nbsp;<span>XXXX</span></p>
	        </div>
    	</div>
</body>
<script type="text/javascript">
	$(function(){
		//点击图片，弹出对话框
		$(".fname").click(function(){
			$("#dialog-bg").show();
		});
		$(".fname").click(function(){
			$(".dialog-box").show();
		});

		$("span#close-dialog").click(function(){
			$("div#dialog-bg").hide();
			$(".dialog-box").hide();
			window.location.href=document.referrer;
		});
	});
	function onclick_film(id){
		var server="http://"+window.location.hostname+":"+window.location.port;
		var url = server+"/film/getFilmById?id="+id;
		$.ajax({
			type:"GET",
			url,
			async:true,
			dataType: "json",//指定服务器返回的数据类型
			success:function(res){
				parseFilm_Html(res);
			}
		});
	}
	function parseFilm_Html(film) {
		$(".dialog-img img").attr("src", film.filmPic);
		$(".dialog-title p:first-child span").text(film.id);
		$(".dialog-title p:nth-child(2) span").text(film.filmName);
		$(".dialog-title p:nth-child(3) span").text(film.year);
		$(".dialog-title p:nth-child(4) span").text(film.category);
		$(".dialog-title p:nth-child(5) span").text(film.language);
		$(".dialog-title p:nth-child(6) span").text(film.subtitle);
		$(".dialog-title p:nth-last-child(5) span").text(film.director);
		$(".dialog-title p:nth-last-child(4) span").text(film.actor);
		$(".dialog-title p:nth-last-child(3) span").text(film.releaseTime);
		$(".dialog-title p:nth-last-child(2) span").text(film.studio);
		$(".dialog-title p:nth-last-child(1) span").text(film.playTime);
	}
</script>
</html>