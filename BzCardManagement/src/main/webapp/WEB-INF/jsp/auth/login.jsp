<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>명함관리시스템: 로그인</title>
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
<h2>로그인</h2>
<form class="confirm">
<label for='email'>이메일</label><br>
<input type='email' id='email' name='email' placeholder="example@test.com"><br>
<label for='pwd'>비밀번호</label><br>
<input type='password' id='pwd' name='password' placeholder="..."><br>
<div class='btn'><button type="button" onclick="login()">로그인</button></div>
</form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

function login(){
	var email = document.getElementById('email').value;
	var pwd = document.getElementById('pwd').value;

    $.ajax({
    	type:'POST',
    	url:'confirm',
    	data:{"email":email, "pwd":pwd},
    	success:function(data){
    		if(data == "success"){
    			location.href = '../bzcard/list'
    		}else if(data == "wrong"){
    			alert("비밀번호가 틀렸습니다.");
    		}else if(data == "nodata"){
    			alert("해당 이메일이 없습니다.");
    			setTimeout(function(){
    				location.href='../signup/form'
    			},3000);
    		}else{
    			alert("오류?");
    		}
    	}
    	
    });


}

</script>
</body>
</html>