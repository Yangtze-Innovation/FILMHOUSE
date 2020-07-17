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
		margin:0;
		padding:0;
	}
	div{
		width: 50%;

		margin-left: 25%;
		height: 100%;
		padding-top: 50px;
		padding-bottom: 50px;
		border:1px #ccc solid;
		text-align: center;
	}
	p{
		float: left;
		font-size: 20px;
		font-family: Arial, Helvetica, sans-serif;
	}
	input{
		width: 200px;
		height: 30px;
		margin-top: 10px;
	}
	#img_id{
		width: 200px;
		margin-left: 50px;
	}
	textarea{
		position: relative;
		margin-top: 20px;
	}
	.btn{
		background-color: #1CBAB4;
		color: white;
		font-size: 16px;
		outline: none;
		border: 1px  #1CBAB4 solid;
	}
	button{
		margin-top: 10px;
		width: 200px;
		height: 30px;
		background-color: #1CBAB4;
		color: white;
		font-size: 16px;
		outline: none;
		border: 1px  #1CBAB4 solid;
	}
</style>
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script>
		 function showImg(){
            // var img_file =  $("#img_file").val();
            var file =  document.getElementById('img_file').files[0];
            var re = new FileReader();
            re.readAsDataURL(file);
            re.onload = function(re){
                $('#img_id').attr("src", re.target.result);
            }
        }
    </script>
</head>
<body>
	<div>
		<p>新增影片信息</p>
		<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="100%" color=#ccc SIZE=1 class="hr">
		<form action="">
			影片编号&nbsp;&nbsp;<input type="text" placeholder="影片编号" name="fno"><br/>
			片&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;<input type="text" placeholder="片名" name="fname"><br/>
			海&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;报&nbsp;&nbsp;
				<input type="file" onchange="showImg()" id="img_file"><br/>
				<img src="" alt="" id="img_id"><br/>
			年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;代&nbsp;&nbsp;<input type="text" placeholder="年代" name="year"><br/>
			类&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别&nbsp;&nbsp;<input type="text" placeholder="类别" name="type"><br/>
			语&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;言&nbsp;&nbsp;<input type="text" placeholder="语言" name="language"><br/>
			字&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;幕&nbsp;&nbsp;<input type="text" placeholder="字幕" name="ass"><br/>
			导&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;演&nbsp;&nbsp;<input type="text" placeholder="导演" name="director"><br/>
			主&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;演&nbsp;&nbsp;<input type="text" placeholder="主演" name="actor"><br/>
			上映时间&nbsp;&nbsp;<input type="text" placeholder="上映时间   2018(美国)" name="yearplace" ><br/>
			播放影厅&nbsp;&nbsp;<input type="text" placeholder="播放影厅" name="place"><br/>
			播放时间&nbsp;&nbsp;<input type="text" placeholder="播放时间" name="time"><br/><br/>
			<label>简介&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
				 <textarea cols="25" rows="10" name="introduce" style="vertical-align:top" placeholder="在这里输入内容..."></textarea><br/>
			
			<input type="submit" value="保存"  class="btn"><br/>
			<input type="reset" value="重置"  class="btn"><br/>
			<button onclick="self.location=document.referrer;">返回</button>
		</form>
	</div>
</body>
</html>