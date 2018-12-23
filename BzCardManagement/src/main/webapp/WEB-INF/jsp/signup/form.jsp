<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>명함관리시스템:회원가입</title>
</head>
<style>
.container{margin: 0 auto; width: 80%; padding-top: 2%;}
h2{text-align: center;}
form {width: 15rem; margin: 0 auto; padding-top: 2rem;}
input {margin-bottom: 1rem; margin-top: 0.5rem;}
button{color:white; background-color: blue;}
.btn{margin: 0 auto; width: 15rem; text-align: center;}
</style>
<body>
<div class='container'>
<h2>회원 가입</h2>
<form action="add">
<label for='email'>이메일</label><br>
<input type='email' id='email' name='email' placeholder="example@test.com" size="30"><br>
<label for='name'>이름</label><br>
<input type="text" id='name' name='name' placeholder="홍길동" size="30"><br>
<label for='pwd'>암호</label><br>
<input type="password" id='pwd' name='password' placeholder="..." size="30"><br>
<div class='btn'><button type="submit">가입하기</button></div>
</form>
</div>
</body>
</html>