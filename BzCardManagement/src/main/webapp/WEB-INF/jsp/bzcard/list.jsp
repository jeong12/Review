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
header{display: block;}
footer{display: block;}
.container{width: 100%; margin: 0 auto;}
.title{position: absolute; left: 1rem;}
.logout{position: absolute; left:78rem; top: 1rem;}
.headerhr{clear: both;}
.program{float: left;}
.from{float: right;}
.list{position: relative;}
.names{position: absolute; left: 2rem; top: 6rem;}
#search{position: absolute; left: 2rem; top: 3rem;}
</style>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<div class='container'>
<div class='list'>
<input type="text" id=search placeholder="검색" name='name'>
<div class='names'>
<c:forEach items="${list}" var="m">
<div>${m.name}</div>
</c:forEach>
</div>
</div>
<hr class='mid' width="1" size="500">
<div class='detail'>
</div>
</div>
<jsp:include page="../footer1.jsp"></jsp:include>
</body>
</html>