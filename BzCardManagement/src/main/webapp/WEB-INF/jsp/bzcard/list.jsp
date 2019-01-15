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
.detail{display: inline-block; float: right; margin-right: 35%;}
table{border-collapse: separate; border-spacing: 0 20px;}
.info:nth-child(1){text-align: center;}
a {text-decoration: none; color: black;}
#btnimg{width: 1rem; height: 1rem; position: relative;}
.img-button{position: relative; top: 1rem;}
</style>
<body>
<div class='container'>
<jsp:include page="../header.jsp"></jsp:include>
<aside class='listsbar'>
<div>
<button class='img-button' onclick="search()"><img src="/img/search.png" id='btnimg' onclick="search()"></button>
<input type="text" id=search placeholder="검색" name='name'>
</div>
<div class='names'>
<c:forEach items="${list}" var="m">
<div><a href='detail?bcno=${m.bcno}'>${m.name}</a></div>
</c:forEach>
</div>
</aside>
<div class='detail'>
<table class='info'>
<tr><td colspan="2"><h2 class='fullname'></h2></td></tr>
<tr><td>휴대 전화</td><td class='tel'></td></tr>
<tr><td>일반 전화</td><td class='mtel'></td></tr>
<tr><td>팩스</td><td class='fax'></td></tr>
<tr><td>이메일</td><td class='email'></td></tr>
<tr><td>메모</td><td><textarea class='meno' readonly="readonly"></textarea></td></tr>
</table>
</div>
<jsp:include page="../footer1.jsp"></jsp:include>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

function search(){
	var name = $('#search').val();

	$.ajax({
		type:"GET",
		url:"search",
		data:{"word":name},
		success:function(data){
			console.log(data);
			$('.names').empty();
		    $.each(function(item){
		    	if(item.name == "NoData"){
		    		console.log(data);
		    		alert("해당 데이터가 없습니다.");
		    		window.location.href = "list";
		    	}else{
		    		$('.names').append("<div><a href='detail?bcno="+
		    				item.bcno+"'>"+
		    				item.name+"</a></div>")
		    	}
		    	});
		},
		error:function(xhr,status,error){
			alert("관리자에게 문의해주시기 바랍니다");
		}
		
		
	});
	
}

</script>
</body>
</html>