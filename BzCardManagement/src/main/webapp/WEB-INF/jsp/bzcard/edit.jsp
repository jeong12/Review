<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>명함관리:목록</title>
</head>
<style>
.container{height: 50rem; margin: 0 auto; width: 80%;}
.logout{float: right; margin: 18.720px 0;}
.title{display: inline-block;}
.headpart{border-bottom: 1px solid silver;}
.program{float: left; position: relative; left: 2rem; top: 1rem;}
.from{float: right; position: relative; right: 2rem;}
.listsbar{position: relative; height: 60%; width: 17%; border-right: 2px solid silver; display: inline-block;}
.names{position: absolute; left: 2rem; top: 3rem; width: 60%; text-align: center; overflow-y: scroll; height: 25rem;}
#search{position: absolute; left: 2rem; top: 1rem; width: 60%;}
.footerpart{border-top: 1px solid silver; clear: both; position: relative; height: 20%;}
.meno{resize: none;}
.detail{display: inline-block; float: right; margin-right: 10%; width: 60%;}
table{border-collapse: separate; border-spacing: 0 20px;}
.info:nth-child(1){text-align: center;}
a {text-decoration: none; color: black;}
#name{font-size: 2rem; text-align: center;}
</style>
<body>
<div class='container'>
<jsp:include page="../header.jsp"></jsp:include>
<aside class='listsbar'>
<input type="text" id=search placeholder="검색" name='name'>
<div class='names'>
<c:forEach items="${list}" var="m">
<div><a href='detail?bcno=${m.bcno}'>${m.name}</a></div>
</c:forEach>
</div>
</aside>
<div class='detail'>
<form action="editData" class='editform'>
<table class='info'>
<tr><td colspan="2" class='fullname'><input type="text" id='name' name='name' value=${bz.name}></td></tr>
<tr><td><label for='tel'>휴대전화</label></td>
    <td class='tel'><input type='text' id='tel' name='tel' value=${bz.tel}></td></tr>
<tr><td><label for='mtel'>일반 전화</label></td>
    <td class='mtel'><input type='text' id='mtel' name='mtel' value=${bz.mtel}></td></tr>
<tr><td><label for='fax'>팩스</label></td>
    <td class='fax'><input type='text' id='fax' name='fax' value=${bz.fax}></td></tr>
<tr><td><label for='email'>이메일</label></td>
    <td class='email'><input type='text' id='email' name='email' value=${bz.email}></td></tr>
<tr><td>메모</td>
    <td><textarea class='meno'>${bz.memo}</textarea></td></tr>
</table>
<input type="hidden" name='bcno' value=${bz.bcno}>
<button type="button" onclick="chk()">완료</button>
<a href='detail?bcno=${bz.bcno}'><button type="button">취소</button></a>
</form>
</div>
<jsp:include page="../footer1.jsp"></jsp:include>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

function chk(){
	
    var name=$('#name').val();
    var tel = $('#tel').val();
    var email = $('#email').val();
    
	if(name.length == 0) {
		alert("이름을 입력해주세요"); 
		return false
	}
	if(tel.length == 0) {alert("휴대폰 번호를 입력해주세요."); return false}
	
	if(email.length == 0) {alert("이메일을 입력해주세요."); return false}
	
	if(name.length !=0 && tel.length != 0 && email.length !=0){
		$('.editform').submit();
	}
	
}

</script>
</body>
</html>