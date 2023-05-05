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
    <title>탐험마당</title>
    <link rel="stylesheet" href="${contextPath}/bookInfo/css/jquery-ui.min.css">
    <link rel="stylesheet" href="${contextPath}/bookInfo/css/reset.css">
    <link rel="stylesheet" href="${contextPath}/bookInfo/css/header&footer.css">
    <link rel="stylesheet" href="${contextPath}/bookInfo/css/ep-firstdepth.css">
    <link rel="shortcut icon" type="image/icon" sizes="32*32" href="${contextPath}/bookInfo/images/header/logoSample2.png">
    <script src="${contextPath}/bookInfo/js/jquery-3.6.3.min.js"></script>
    <script src="${contextPath}/bookInfo/js/jquery-ui.min.js"></script>
    <script src="${contextPath}/bookInfo/js/turn.min.js"></script>
    <script src="${contextPath}/bookInfo/js/header&footer.js"></script>
</head>
<body>
    <!-------------------- [S] #wrap -------------------->
    <div id="wrap">
        <!-- bookmark_menu -->
        <div id="bookmark_div_wrap">
            <ul id="bookmark_ul">
                <li class="bookmark_li bk_title">우주마당</li>
                <li class="bookmark_li bk_li_1"><a href="#">알아봐요 탐험마당</a></li>
                <li class="bookmark_li bk_li_2"><a href="#">신기해요 소식마당</a></li>
            </ul>
        </div>
        <!---------- [S] header ---------->
        <header>
            <h1 class="home" onclick="location.href='../index/index.html'">
                <span>우나</span>
                <div class="logo">
                    <img src="${contextPath}/bookInfo/images/header/logoSample2.png" alt="logo" class="main_logo_img">
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
                    <li class="srch_btn"><a href="#"><img class="srch_img" src="${contextPath}/bookInfo/images/search.png" alt="search"></a></li>
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
                        <button type="submit" class="srch_btn"><img src="${contextPath}/bookInfo/images/search.png" alt="search"></button>
                    </fieldset>
                </form>
            </div>
        </header>
        <!---------- [E] header ---------->
        <!---------- [S] h2 title and BG img div ---------->
        <div id="title_bg_wrap">
            <h2 id="sub_page_h2">알아봐요 탐험마당</h2>
        </div>
        <!---------- [E] h2 title and BG img div ---------->
        <!---------- [S] #container ---------->
        <div id="container">
            <!-- width 65%영역 -->
            <div id="book_area">
                <section id="explain_area">
                    <p class="ep_title_p">
                        <span class="ep_title_span ep_title_span1">우나</span><br>
                        <span class="ep_title_span ep_title_span2">탐험마당</span><br>
                    </p>
                    <p class="ep_content_p">
                        <span class="ep_content_span">오른쪽의 책을 열어<br>우주를 탐험해봅시다.</span>
                    </p>
                </section>
                <div id="book_shelf">
                    <div id="book_shelf_1st" class="row">
                        <img class="img_shelf img_shelf1" src="${contextPath}/bookInfo/images/wall-bookshelf.png" alt="책장">
                        <div class="book book1" onclick="location.href='${contextPath}/book.una?action=bookPages&value=1'">
                            <div class="page page1" ></div>
                        </div>
                        <div class="book book2" onclick="location.href='${contextPath}/book.una?action=bookPages&value=2'">
                            <div class="page page1"></div>
                        </div>
                    </div>
                    <div id="book_shelf_2nd" class="row">
                        <img class="img_shelf img_shelf2" src="${contextPath}/bookInfo/images/wall-bookshelf.png" alt="책장">
                        <div class="book book3"  onclick="location.href='${contextPath}/book.una?action=bookPages&value=3'">
                            <div class="page page1"></div>
                        </div>
                        <div class="book book4" onclick="location.href='${contextPath}/book.una?action=bookPages&value=4'">
                            <div class="page page1"></div>
                        </div>
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

    <script>
        $('#clickBook').turn({
            gradients: true,
            acceleration: true,
            elevation: 50
        });
    </script>
</body>
</html>