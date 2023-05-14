<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>     
<%
	request.setCharacterEncoding("utf-8");
%> 	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
<c:choose>
	<c:when test="${msg=='addMember'}">
		<script>
			window.onload=function(){
				alert("회원을 등록했습니다.");
			}
		</script>
	</c:when>
	
	<c:when test="${msg =='deleted'}">
		<script>
			window.onload=function(){
				alert("회원정보를 삭제했습니다.");
			}
		</script>
	</c:when>
</c:choose>
</head>
<body>
	<h2 align="center">회원정보</h2>
	<table align="center" border="1" width="700">
		<tr align="center" bgcolor="cyan">
			<th>아이디</th><th>비밀번호</th><th>이름</th>
			<th>이메일</th><th>가입일</th><th>삭제</th>		
		</tr>
		<c:choose>
			<c:when test="${empty memberList}">
				<tr>
					<td colspan="6" align="center">등록된 회원이 없습니다.</td>		
				</tr>
			</c:when>
			<c:when test="${!empty memberList}">
				<c:forEach var="mem" items="${memberList}">
					<tr align="center">
						<td>${mem.user_id}</td>
						<td>${mem.user_pwd}</td>
						<td>${mem.user_name}</td>
						<td>${mem.user_email}</td>
						<td>${mem.user_joinDate}</td>
						<td><a href="${contextPath}/member/delMember.do?id=${mem.user_id}">삭제</a></td>
					</tr>					
				</c:forEach>
			</c:when>
		</c:choose>		
	</table>
	
</body>
</html>