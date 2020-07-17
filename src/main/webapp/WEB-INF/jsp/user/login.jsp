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
		height: 320px;
		padding-top: 30px;
		border:1px #ccc solid;
		margin-top: 100px;
		text-align: center;
	}
	.login{
		float: left;
		font-size: 20px;
		font-family: Arial, Helvetica, sans-serif;
	}
	.hr{
		margin-bottom: 20px;
	}
	input{
		width: 200px;
		height: 30px;
		margin-top: 10px;
	}
	.checkbox{
		width: 12px;
		height: 12px;
		
	}
	.btn{
		background-color: #1CBAB4;
		color: white;
		font-size: 16px;
		outline: none;
		border: 1px  #1CBAB4 solid;
	}
</style>
</head>
<body>
	<div>
		<p class="login">管理员登陆</p>
		<br/>
		<br/>
		<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="100%" color=#000 SIZE=1 class="hr">
		<form action="/user/loginSubmit" method="post">
			<input type="text" name="username" placeholder="账号"/><br/>
			<input type="password" name="password" placeholder="密码"/><br/>
			<input type="checkbox" name="memory" value="remember" class="checkbox"/> 记住密码<br/>
			<input type="submit" value="登录" class="btn"/>
		</form>
	</div>
</body>
</html>