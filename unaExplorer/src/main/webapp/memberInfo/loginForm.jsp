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
<title>Insert title here</title>
<link rel="stylesheet" href="${contextPath}/resoureces/css/reset.css">
<link rel="stylesheet" href="${contextPath}/resoureces/css/login.css">
<script src="${contextPath}/resoureces/js/jquery-3.6.3.min.js"></script>
<script src="${contextPath}/resoureces/js/jquery-ui.min.js"></script>
<script src="${contextPath}/resoureces/js/login.js"></script>

</head>
<body>
    <div id="login_wrap">
        <div class="login_area">
            <form action="${contextPath}/member/login.do" method="post" name="frmLogin">
                <div class="logo_area"><a href="#"><img src="${contextPath}/resoureces/images/logoSample2.png" alt="로고"></a></div>
                <p class="login_welcome">우나에 오신 것을 환영합니다</p>
                <fieldset>
                    <legend>로그인</legend>
                    <label for="user_id">아이디</label>
                    <input type="text" id="user_id" name="user_id" maxlength=20 required ><br>
                    <label for="user_pwd">비밀번호</label>
                    <input type="password" id="user_pwd" name="user_pwd" maxlength=20 required><br>
                    <input type="submit" value="로그인" id="user_login" name="user_login">
                </fieldset>                
           
            <div id="seacrh_join_area">
                <ul>
                <li class="id_pw_search"><a href="id_search.html">아이디/비번찾기</a></li>
                <li class="join"><a href="join.html">회원가입</a></li> 
                </ul>
            </div>
             </form>   
    </div> 
    </div> 
 </body>
</html>
    