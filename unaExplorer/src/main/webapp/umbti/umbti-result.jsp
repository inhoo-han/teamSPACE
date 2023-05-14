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
            <h1 class="home" onclick="location.href='${contextPath}/index.una'">
                <span>우나</span>
                <div class="logo">
                    <img src="${contextPath}/resources/images/header/logoSample2.png" alt="logo" class="main_logo_img">
                </div>
            </h1>
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
                            <p class="umbti_result_name">전갈자리</p>
                            <p class="umbti_result_explanation">
                            <img src="${contextPath}/resources/images/umbti_result/star_scorpio.png" alt="전갈자리이미지">
                        </div>
                    </div>
                </div>
                <div class="result_detail">
                	<div class="result_detail_text">
                		<p>모든 일에 체계적이고 계획적이며 어려운 도전을 즐깁니다.</p>
                		<p>힘든 상황에도 포기하지 않는 강한 의지를 가지고, 계획한 것은 모두 해내려는 타입</p>
                		<p>인싸는 아닌 것 같은데 한 달치 약속이 미리 정해져 있어요</p>
                		<p>창의적인 문제 해결에 능숙하고 리더십이 넘칩니다</p>
                	</div>
                </div>
                <!-- 나와 잘 맞는 육각형 영역 테두리 -->
                <div id="poly_good" class="sub_polygon_border">
                    <!-- 서브 육각형 영역 내부 -->
                    <div class="sub_polygon">
                        <!-- 서브 결과 출력 영역 -->
                        <div class="umbti_area">
                            <p class="umbti_head">사이가 좋은 행성</p>
                            <p class="umbti_result_name">목성</p>
                            <img src="images/planet_1.png" alt="목성이미지">
                        </div>
                    </div>
                </div>
                <!-- 나와 안 맞는 육각형 영역 테두리 -->
                <div id="poly_bad" class="sub_polygon_border">
                    <!-- 서브 육각형 영역 내부 -->
                    <div class="sub_polygon">
                        <!-- 서브 결과 출력 영역 -->
                        <div class="umbti_area">
                            <p class="umbti_head">사이가 나쁜 행성</p>
                            <p class="umbti_result_name">천왕성</p>
                            <img src="images/blue1.png" alt="천왕성이미지">
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