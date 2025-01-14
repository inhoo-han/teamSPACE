<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TeamSPACE</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/reset.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/header&footer_index.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/index.css">
     <link rel="shortcut icon" type="image/icon" href="${contextPath}/resources/images/header/logoSample2.png">
    <script src="${contextPath}/resources/js/jquery-3.6.3.min.js"></script>
    <script src="${contextPath}/resources/js/jquery-ui.min.js"></script>
    <script src="${contextPath}/resources/js/header&footer_index.js"></script>
    <script src="${contextPath}/resources/js/index.js"></script>
</head>
<body>
    <!-------------------- [S] #wrap -------------------->
    <div id="wrap">
        <!---------- [S] header ---------->
        <header>
            <!------- header .home //로고영역// ------->
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
            <!------- header nav //탑메뉴영역// ------->
            <nav>
                <ul class="tMenu">
                    <li class="menu">
                        <a href="#">우주마당</a>
                        <ul class="subMenu">
                            <li class="smenu"><a href="${contextPath}/book.una">알아봐요 탐험마당</a></li>
                            <li class="smenu"><a href="#">신기해요 소식마당</a></li>
                        </ul>
                    </li>
                    <li class="menu">
                        <a href="#">참여마당</a>
                        <ul class="subMenu">
                            <li class="smenu"><a href="#">두근두근 추첨마당</a></li>
                            <li class="smenu"><a href="#">모여봐요 모임마당</a></li>
                            <li class="smenu"><a href="${contextPath}/fst_pg/fst_pg.jsp">복작복작 놀이마당</a></li>
                        </ul>
                    </li>
                    <li class="menu">
                        <a href="#">알림마당</a>
                        <ul class="subMenu">
                            <li class="smenu"><a href="#">여기주목 공지사항</a></li>
                            <li class="smenu"><a href="#">반짝반짝 우리소개</a></li>
                            <li class="smenu"><a href="${contextPath}/wallpaper/wallpaper.jsp">공유해요 자료마당</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <!------- header .login_area //로그인, 회원가입 버튼영역// ------->
            <div id="login_area">
                <ul>
                    <li class="srch_btn"><a href="#"><img class="srch_img" src="${contextPath}/resources/images/search.png" alt="search"></a></li>
                    <li><a href="#">로그인</a></li>
                    <li><a href="#">회원가입</a></li>
                </ul>
            </div>
            <!------- header .header_search //검색영역// --  ----->
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
        <!---------- [S] #container ---------->
        <div id="container">
            <!-- 캐치프레이즈 영역 -->
            <div id="text_area">
                <p class="main_text">
                    <span class="text text1">내 코드도</span>
                    <span class="text text2">챗GPT가 짜 줬으면</span>
                    <span class="text text3">좋겠다.</span>
                </p>
                <p class="sub_text">
                    <span class="text">by 팀우나의 한인후</span>
                </p>
            </div>
            <!-- 뭔가 하나 더 추가될 중간 영역 -->
            <div id="i_dont_know"></div>
            <!-- 천체영역 -->
            <div id="space_area">
                <div class="cele">
                    <ul class="cele_ul">
                        <li class="celestial celestial1">
                            <img src="${contextPath}/resources/images/sun.png" alt="sun" title="태양계로 이동">
                            <p class="title">태양계로 가보기</p>
                        </li>
                        <li class="celestial celestial2">
                            <img src="${contextPath}/resources/images/ngc7293.png" alt="ngc7293" title="성운,성단으로 이동">
                            <p class="title">성운, 성단으로 가보기</p>
                        </li>
                        <li class="celestial celestial3">
                            <img src="${contextPath}/resources/images/galaxy_20.png" alt="galaxy" title="은하로 이동">
                            <p class="title">은하로 가보기</p>
                        </li>
                        <li class="celestial celestial4">
                            <img src="${contextPath}/resources/images/m1.png" alt="m1" title="아직 안이동">
                            <p class="title">우주어디론가 가보기</p>
                        </li>
                    </ul>
                </div>    
            </div>
            <div id="earth_area_v2">
                <img id="earth_v2" src="${contextPath}/resources/images/earth_sample2.gif" alt="earth">
            </div>
            <div id="go_up_div">
                <img src="${contextPath}/resources/images/go_up.png" alt="위로이동" class="go_up_img">
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