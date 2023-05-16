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
    <title>월페이퍼</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/reset.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/header&footer.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/bookmark_notice.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/colorbox.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/wallpaper.css">
    <link rel="shortcut icon" type="image/icon" href="${contextPath}/resources/images/header/logoSample2.png">
    <script src="${contextPath}/resources/js/jquery-3.6.3.min.js"></script>
    <script src="${contextPath}/resources/js/jquery-ui.min.js"></script>
    <script src="${contextPath}/resources/js/jquery.colorbox.js"></script>
    <script src="${contextPath}/resources/js/wallpaper.js"></script>
</head>
<body>
      <!-------------------- [S] #wrap -------------------->
      <div id="wrap">
        <!-- bookmark_menu -->
        <div id="bookmark_div_wrap">
            <ul id="bookmark_ul">
                <li class="bookmark_li bk_title">소식마당</li>
                <li class="bookmark_li bk_li_1"><a href="/subpage/thirdmenu/notice/notice.html">여기주목 공지사항</a></li>
                <li class="bookmark_li bk_li_3"><a href="/subpage/thirdmenu/aboutus/aboutus.html">반짝반짝 우리소개</a></li>
                <li class="bookmark_li bk_li_4"><a href="/subpage/thirdmenu/data_firstdepth/dep_menu.html">공유해요 자료마당</a></li>
            </ul>
            <!-- <div id="bookmark_sub_title"><span>참여마당</span></div> -->
        </div>
        <div id="go_up_div">
            <img src="${contextPath}/resources/images/go_up.png" alt="위로이동" class="go_up_img">
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
                    <li class="menu menu1">
                        <a href="#" class="hover_a hover_a1">우주마당</a>
                        <ul class="subMenu subMenu1">
                            <li class="smenu"><a href="/subpage/firstmenu/explore/solarsystem/ep-solarsystem.html">알아봐요 탐험마당</a></li>
                            <li class="smenu"><a href="/subpage/firstmenu/news/sub_news.html">신기해요 소식마당</a></li>
                        </ul>
                    </li>
                    <li id="top_menu2" class="menu menu2">
                        <a href="#" class="hover_a hover_a2" >참여마당</a>
                        <ul class="subMenu subMenu2">
                            <li class="smenu"><a href="/subpage/secondmenu/event_board/sub_event.html">두근두근 추첨마당</a></li>
                            <li class="smenu"><a href="/subpage/secondmenu/meet_firstdepth/dep_menu.html">모여봐요 모임마당</a></li>
                            <li class="smenu"><a href="/subpage/secondmenu/playground_firstdepth/dep_menu.html">복작복작 놀이마당</a></li>
                        </ul>
                    </li>
                    <li class="menu menu3">
                        <a href="#" class="hover_a hover_a3">알림마당</a>
                        <ul class="subMenu subMenu3">
                            <li class="smenu"><a href="/subpage/thirdmenu/notice/notice.html">여기주목 공지사항</a></li>
                            <li class="smenu"><a href="/subpage/thirdmenu/aboutus/aboutus.html">반짝반짝 우리소개</a></li>
                            <li class="smenu"><a href="/subpage/thirdmenu/data_firstdepth/dep_menu.html">공유해요 자료마당</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div id="login_area">
                <ul>
                    <li class="srch_btn"><a href="#"><img class="srch_img" src="${contextPath}/resources/images/search.png" alt="search"></a></li>
                    <li><a href="/subpage/login_join/login/login.html">로그인</a></li>
                    <li><a href="/subpage/login_join/join/join.html">회원가입</a></li>
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
            <h2 id="sub_page_h2">공유해요 자료마당</h2>
        </div>
        <!---------- [E] h2 title and BG img div ---------->
        <!---------- [S] #container ---------->
        <div id="container">
        	<!-- width 65%인 내용 영역 -->
            <div id="wallpaper_area">
            	<!-- 월페이퍼 타이틀 영역 -->
            	<div class="wallpaper_area_title">
	            	<h3>월페이퍼</h3>
	            	<p>사진을 눌러 확대 및 다운로드 하세요</p>
            	</div>
            	<!-- 이미지 슬라이드 ㅡ 눈에 보이는 영역 -->
            	<div class="animation_canvas">
	             	<!-- 실제 슬라이드 길이(이미지가 담기는 곳) -->
	             	<div class="slider_panel">
	             		<!-- 각각의 이미지 -->
	             		<img class="slider_image" src="${contextPath}/resources/images/wallpaper/1.jpg" alt="첫 번째 슬라이드 이미지">
	             		<img class="slider_image" src="${contextPath}/resources/images/wallpaper/2.jpg" alt="두 번째 슬라이드 이미지">
	             		<img class="slider_image" src="${contextPath}/resources/images/wallpaper/3.jpg" alt="세 번째 슬라이드 이미지">
	             		<img class="slider_image" src="${contextPath}/resources/images/wallpaper/4.jpg" alt="네 번째 슬라이드 이미지">
	             		<img class="slider_image" src="${contextPath}/resources/images/wallpaper/5.jpg" alt="다섯 번째 슬라이드 이미지">
	             	</div>
	             	<!-- 좌우 컨트롤 패널 영역 -->
					<div class="next"></div>
					<div class="prev"></div>
            	</div>
                <!-- 이미지 목록-->
                <div id="image_area">
                	<c:forEach var="i" begin="1" end="5">
                	<div class="wall_img_div">
                        <a class="wall_img_cb" href="${contextPath}/resources/images/wallpaper/${i*3-2}.jpg" title="<a href='${contextPath}/resources/images/wallpaper/${i*3-2}.jpg' download>이미지 다운로드하기</a>">
                       		<img class="wall_img wall_img1" src="${contextPath}/resources/images/wallpaper/${i*3-2}.jpg" alt="배경이미지">
                        </a>
                    </div>
                    <div class="wall_img_div">
                        <a class="wall_img_cb" href="${contextPath}/resources/images/wallpaper/${i*3-1}.jpg" title="<a href='${contextPath}/resources/images/wallpaper/${i*3-1}.jpg' download>이미지 다운로드하기</a>">
                       		<img class="wall_img wall_img2" src="${contextPath}/resources/images/wallpaper/${i*3-1}.jpg" alt="배경이미지">
                        </a>
                    </div>   
                    <div class="wall_img_div"> 
                        <a class="wall_img_cb" href="${contextPath}/resources/images/wallpaper/${i*3}.jpg" title="<a href='${contextPath}/resources/images/wallpaper/${i*3}.jpg' download>이미지 다운로드하기</a>">
                       		<img class="wall_img wall_img3" src="${contextPath}/resources/images/wallpaper/${i*3}.jpg" alt="배경이미지">
                        </a>
                    </div>    
                    </c:forEach>
                </div>
            </div>
        </div>
        <!---------- [E] container ---------->
        <!---------- [S] footer ---------->
        <footer>
            <div id="footer_link">
                <ul>
                    <li><a href="/subpage/thirdmenu/notice.html">공지사항</a></li>
                    <li><a href="/subpage/thirdmenu/aboutus.html">우리소개</a></li>
                    <li><a href="/subpage/thirdmenu/wallpaper.html">자료마당</a></li>
                    <li><a href="/subpage/secondmenu/eg_firstdepth/dep_menu.html">놀이마당</a></li>
                </ul>
            </div>
            <p class="copyright">
                &copy; 2023 TeamSPACE. ALL RIGHTS RESERVED.
            </p>
        </footer>
        <!---------- [E] footer ---------->
    </div>
    <!-------------------- [E] #wrap -------------------->
    </div>
</body>
</html>