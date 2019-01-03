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
.edit{float: right; margin-top: 1rem;}
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
<a href='edit?bcno=${bz.bcno}'><button class='edit'>edit</button></a>
<table class='info'>
<tr><td colspan="2"><h2 class='fullname'>${bz.name}</h2></td></tr>
<tr><td>휴대 전화</td><td class='tel'>${bz.tel}</td></tr>
<tr><td>일반 전화</td><td class='mtel'>${bz.mtel}</td></tr>
<tr><td>팩스</td><td class='fax'>${bz.fax}</td></tr>
<tr><td>이메일</td><td class='email'>${bz.email}</td></tr>
<tr><td>메모</td><td><textarea class='meno' readonly="readonly">${bz.memo}</textarea></td></tr>
</table>
<a href='form'><button class='addcont'>추가</button></a>
<button onclick="chkbefore(${bz.bcno})">삭제</button>
</div>
<jsp:include page="../footer1.jsp"></jsp:include>
</div>
<script type="text/javascript">

function chkbefore(e){

	if(confirm('정말로 삭제하시겠습니까?')){
	window.location.href = 'delete?bcno='+e;
	}else if(false){window.location.href = 'detail?bano='+e;}


}

</script>
</body>
</html>