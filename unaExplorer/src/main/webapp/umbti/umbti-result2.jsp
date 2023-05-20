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
    <title>우나엠비티아이</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/reset.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/header&footer.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/bookmark_playground.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/umbti-result.css">
     <link rel="shortcut icon" type="image/icon" href="${contextPath}/resources/images/header/logoSample2.png">
    <script src="${contextPath}/resources/js/jquery-3.6.3.min.js"></script>
    <script src="${contextPath}/resources/js/jquery-ui.min.js"></script>
    <script src="${contextPath}/resources/js/dep_menu.js"></script>
    <script src="${contextPath}/resources/js/header&footer.js"></script>
    <script src="${contextPath}/resources/js/umbti.js"></script>
    <script type="text/javascript"></script>
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
        	</div>        
            <!-- 이미지+타이틀 추가해야 함 -->
            <!-- width 65%인 내용 영역 -->
            <div id="polygon_area">
                <!-- 상단 진행도 숫자표시 영역 -->
                <div class="poly_count hidden">0</div>
                <!-- 메인 육각형 영역 테두리 -->
                <div id="poly_main" class="polygon_border">
                    <!-- 메인 육각형 영역 내부 -->
                    <div class="polygon">
                        <!-- 결과 출력 영역 -->
                        <div class="umbti_area">
                            <p class="umbti_head">당신과 닮은 별자리는</p>
                            <p class="umbti_result_name">물고기자리</p>
                            <img src="${contextPath}/resources/images/umbti_result/star_fish.png" alt="물고기자리이미지">
                        </div>
                    </div>
                </div>
                <div class="result_detail">
                	<div class="result_detail_text">
                		<p>혼자 시간 보내는 것을 매우 선호해요. 많은 사람과 시간을 보낸 후에는 꼭 혼자만의 시간이 필요해요.</p>
                		<p>남에게 관심이 없기 때문에 웬만한 일에는 상처를 받지 않아요.</p>
                		<p>평소에는 말이 없다가도 내가 관심있는 분야가 나오면 말이 많아져요.</p>
                		<p>게으른 천재예요. 시작하면 잘하지만 맨날 미루고 말아요. 혼자 있는게 너무 행복한 타입이에요.</p>
                	</div>
                </div>
                <!-- 나와 잘 맞는 육각형 영역 테두리 -->
                <div id="poly_good" class="sub_polygon_border" onclick="location.href='${contextPath}/umbtimap/result3.una'">
                    <!-- 서브 육각형 영역 내부 -->
                    <div class="sub_polygon">
                        <!-- 서브 결과 출력 영역 -->
                        <div class="umbti_area">
                            <p class="umbti_head">사이 좋은<br>별자리</p>
                            <p class="umbti_result_name">페가수스자리</p>
                        </div>
                    </div>
                </div>
                <!-- 나와 안 맞는 육각형 영역 테두리 -->
                <div id="poly_bad" class="sub_polygon_border" onclick="location.href='${contextPath}/umbtimap/result.una'">
                    <!-- 서브 육각형 영역 내부 -->
                    <div class="sub_polygon">
                        <!-- 서브 결과 출력 영역 -->
                        <div class="umbti_area">
                            <p class="umbti_head">사이 나쁜<br>별자리</p>
                            <p class="umbti_result_name">전갈자리</p>
                        </div>
                    </div>
                </div>
                <!-- 하단 '우나프로젝트' 영역 -->
                <div class="test_restart" onclick="location.href='${contextPath}/umbtimap/index.una'">
                    테스트 다시하기
                </div>
                <!-- <div class="share" onclick="clip()">링크로 공유하기</div> -->
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