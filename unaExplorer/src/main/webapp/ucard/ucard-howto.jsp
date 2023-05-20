<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>우나카드뒤집기</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/jquery-ui.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/reset.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/header&footer.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/bookmark_playground.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/ucard-howto.css">
    <link rel="shortcut icon" type="image/icon" href="${contextPath}/resources/images/header/logoSample2.png">
    <script src="${contextPath}/resources/js/jquery-3.6.3.min.js"></script>
    <script src="${contextPath}/resources/js/jquery-ui.min.js"></script>
    <script src="${contextPath}/resources/js/header&footer.js"></script>
    <script src="${contextPath}/resources/js/ucard-howto.js"></script>
</head>
<body>
    <!-------------------- [S] #wrap -------------------->
    <div id="wrap">
        <!-- bookmark_menu -->
        <div id="bookmark_div_wrap">
            <ul id="bookmark_ul">
                <li class="bookmark_li bk_title">참여마당</li>
                <li class="bookmark_li bk_li_1"><a href="#">두근두근 추첨마당</a></li>
                <li class="bookmark_li bk_li_3"><a href="#">모여봐요 모임마당</a></li>
                <li class="bookmark_li bk_li_4"><a href="#">복작복작 놀이마당</a></li>
            </ul>
        </div>
        <!---------- [S] header ---------->
        <header>
            <div class="home">
                <h1>
                    <a href="${contextPath}/index/index.jsp">우나</a>
                </h1>
                <div class="logo">
                    <a href="${contextPath}/index/index.jsp">
                        <img class="main_logo_img" src="${contextPath}/resources/images/header/logoSample2.png" alt="logo">
                    </a> 
                </div>
            </div>
            <nav>
                <ul class="tMenu">
                    <li class="menu">
                        <a href="#">우주마당</a>
                        <ul class="subMenu">
                            <li class="smenu"><a href="#">알아봐요 탐험마당</a></li>
                            <li class="smenu"><a href="#">신기해요 소식마당</a></li>
                        </ul>
                    </li>
                    <li class="menu">
                        <a href="#">참여마당</a>
                        <ul class="subMenu">
                            <li class="smenu"><a href="#">두근두근 추첨마당</a></li>
                            <li class="smenu"><a href="#">모여봐요 모임마당</a></li>
                            <li class="smenu"><a href="#">복작복작 놀이마당</a></li>
                        </ul>
                    </li>
                    <li class="menu">
                        <a href="#">알림마당</a>
                        <ul class="subMenu">
                            <li class="smenu"><a href="#">여기주목 공지사항</a></li>
                            <li class="smenu"><a href="#">반짝반짝 우리소개</a></li>
                            <li class="smenu"><a href="#">공유해요 자료마당</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div id="login_area">
                <ul>
                    <li class="srch_btn"><a href="#"><img class="srch_img" src="${contextPath}/resources/images/search.png" alt="search"></a></li>
                    <li><a href="#">로그인</a></li>
                    <li><a href="#">회원가입</a></li>
                </ul>
            </div>
            <div id="header_search">
                <form action="#" method="post" name="search">
                    <fieldset>
                        <legend>검색영역</legend>
                        <label for="srch" class="hidden">검색</label>
                        <input type="search" id="srch" placeholder="검색어를 입력하세요">
                        <button type="submit" class="srch_btn"><img src="${contextPath}/resources/images/search.png" alt="search"></button>
                    </fieldset>
                </form>
            </div>
        </header>
        <!---------- [E] header ---------->
        <!---------- [S] h2 title and BG img div ---------->
        <div id="title_bg_wrap">
            <h2 id="sub_page_h2">복작복작 놀이마당</h2>
        </div>
        <!---------- [E] h2 title and BG img div ---------->
        <!---------- [S] #container ---------->
        <div id="container">
        <!-- 배경에 육각형을 넣어보고 싶어졌다. -->
        	<div class="bg_container">
	        	<div class="bg_polygon bg_polygon1">&nbsp;</div>	
	        	<div class="bg_polygon bg_polygon2">&nbsp;</div>	
	        	<div class="bg_polygon bg_polygon3">&nbsp;</div>	
	        	<div class="bg_polygon bg_polygon4">&nbsp;</div>	
	        	<div class="bg_polygon bg_polygon5">&nbsp;</div>	
	        	<div class="bg_polygon bg_polygon6">&nbsp;</div>	
        	</div>
            <!-- width 65%인 내용 영역 -->
            <div id="ucard_area">
                <!-- 프로젝트 이름 영역 -->
                <div class="our_name">우나프로젝트</div>
                <!-- howto 영역 -->
                <div id="ucard_howto_area">
                	<!-- 눈에 보이는 영역 -->
                	<div class="animation_canvas">
                		<!-- 실제 슬라이드 길이(이미지가 담기는 곳) -->
                		<div class="slider_panel">
                			<!-- 각각의 이미지 -->
                			<img class="slider_image" src="${contextPath}/resources/images/ucard_howto/ucard_howto_1+.png" alt="첫 번째 설명 이미지">
                			<img class="slider_image" src="${contextPath}/resources/images/ucard_howto/ucard_howto_2+.png" alt="두 번째 설명 이미지">
                			<img class="slider_image" src="${contextPath}/resources/images/ucard_howto/ucard_howto_3+.png" alt="세 번째 설명 이미지">
                			<img class="slider_image" src="${contextPath}/resources/images/ucard_howto/ucard_howto_4+.png" alt="네 번째 설명 이미지">
                			<img class="slider_image" src="${contextPath}/resources/images/ucard_howto/ucard_howto_5+.png" alt="다섯 번째 설명 이미지">
                		</div>
                	</div>
 			        <!-- 좌우 컨트롤 패널 영역 -->
					<div class="next"></div>
					<div class="prev"></div>
                </div>
                <!-- 하단 육각형 게임 로고 영역 -->
                <div id="polygon_area" onclick="location.href='${contextPath}/ucardmap/ucardIndex.una'">
                    <!-- 왼쪽 poly는 테두리가 필요해서 내부 poly 존재-->
                    <div class="polygon poly_left">
                        <div class="poly_left_inner">
                            <p class="poly_left_p">카드</p>
                        </div>
                    </div>
                    <!-- 오른쪽 poly -->
                    <div class="polygon poly_right">
                        <p class="poly_right_p">뒤집기</p>
                    </div>
                </div>
            </div>
        </div>
        <!---------- [E] container ---------->
        <!---------- [S] footer ---------->
        <footer>
            <div id="footer_link">
                <ul>
                    <li><a href="#">공지사항</a></li>
                    <li><a href="#">우리소개</a></li>
                    <li><a href="#">자료마당</a></li>
                    <li><a href="#">체험마당</a></li>
                </ul>
            </div>
            <p class="copyright">
                &copy; 2023 TeamSPACE. ALL RIGHTS RESERVED.
            </p>
        </footer>
        <!---------- [E] footer ---------->
    </div>
    <!-------------------- [E] #wrap -------------------->
</body>
</html>