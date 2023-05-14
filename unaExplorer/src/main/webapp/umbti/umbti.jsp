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
    <link rel="stylesheet" href="${contextPath}/resources/css/umbti.css">
     <link rel="shortcut icon" type="image/icon" href="${contextPath}/resources/images/header/logoSample2.png">
    <script src="${contextPath}/resources/js/jquery-3.6.3.min.js"></script>
    <script src="${contextPath}/resources/js/jquery-ui.min.js"></script>
    <script src="${contextPath}/resources/js/dep_menu.js"></script>
    <script src="${contextPath}/resources/js/header&footer.js"></script>
    <script src="${contextPath}/resources/js/umbti.js"></script>
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
                <div class="poly_count"><span class="num_ing">1</span>/12</div>
                <!-- 육각형 영역 테두리 -->
                <div id="polygon_border">
                    <!-- 육각형 영역 내부 -->
                    <div id="polygon">
                        <!-- 내부 진행도 표시 영역 // 잠시보류! -->
                        <div class="poly_ing"></div>
                        <!-- umbti질문지 및 선택지*12 영역 -->
                        <div id="umbti_area">
                            <!-- 1 -->
                            <div class="umbti umbti1">
                                <p class="umbti_q">고민거리가 생겼을 때 나는?</p>
                                <div class="umbti_ans">
                                    <p class="umbti_btn umbti_btn1">다른 사람들에게 조언을 구한다</p>
                                    <p class="umbti_btn umbti_btn2">혼자 생각하고 판단한다</p>
                                </div>
                            </div>
                            <!-- 2 -->
                            <div class="umbti umbti2">
                                <p class="umbti_q">퇴근 후 맛있게 저녁을 먹은 뒤 나는?</p>
                                <div class="umbti_ans">
                                    <p class="umbti_btn umbti_btn1">쉬었다가 나중에 치운다</p>
                                    <p class="umbti_btn umbti_btn2">먹은 즉시 치운다</p>
                                </div>
                            </div>
                            <!-- 3 -->
                            <div class="umbti umbti3">
                                <p class="umbti_q">친구가 고민상담 할 때 나는?</p>
                                <div class="umbti_ans">
                                    <p class="umbti_btn umbti_btn1">현실적인 조언을 해주려 한다</p>
                                    <p class="umbti_btn umbti_btn2">괜찮다며 격려를 먼저 해준다</p>
                                </div>
                            </div>
                            <!-- 4 -->
                            <div class="umbti umbti4">
                                <p class="umbti_q">다음 주에 휴가를 떠날 예정인 나,</p>
                                <div class="umbti_ans">
                                    <p class="umbti_btn umbti_btn1">계획을 세워 놓고 움직인다</p>
                                    <p class="umbti_btn umbti_btn2">그 날의 컨디션에 따라 움직인다</p>
                                </div>
                            </div>
                            <!-- 5 -->
                            <div class="umbti umbti5">
                                <p class="umbti_q">친구와 노는 도중, 지인을 부른다고 할 때 나는?</p>
                                <div class="umbti_ans">
                                    <p class="umbti_btn umbti_btn1">당연히 괜찮다며 얼른 부르라 한다</p>
                                    <p class="umbti_btn umbti_btn2">불편할 것 같다고 말한다</p>
                                </div>
                            </div>
                            <!-- 6 -->
                            <div class="umbti umbti6">
                                <p class="umbti_q">입지 않는 옷을 발견한 나는?</p>
                                <div class="umbti_ans">
                                    <p class="umbti_btn umbti_btn1">언젠가는 입겠지..?</p>
                                    <p class="umbti_btn umbti_btn2">안 입었으니 과감히 버린다</p>
                                </div>
                            </div>
                            <!-- 7 -->
                            <div class="umbti umbti7">
                                <p class="umbti_q">애인의 잘못으로 싸웠을 때, 나는?</p>
                                <div class="umbti_ans">
                                    <p class="umbti_btn umbti_btn1">잘못한 이유에 대해 먼저 물어본다</p>
                                    <p class="umbti_btn umbti_btn2">사과를 먼저 받은 뒤 이야기한다</p>
                                </div>
                            </div>
                            <!-- 8 -->
                            <div class="umbti umbti8">
                                <p class="umbti_q">청소를 시작하려는데 갑자기 친구가 놀자고 전화했다.</p>
                                <div class="umbti_ans">
                                    <p class="umbti_btn umbti_btn1">계획은 지켜야지! 청소 후에 생각해본다</p>
                                    <p class="umbti_btn umbti_btn2">빨래고 뭐고 바로 놀러 나간다</p>
                                </div>
                            </div>
                            <!-- 9 -->
                            <div class="umbti umbti9">
                                <p class="umbti_q">오랜만에 친구를 만나기로 한 나는</p>
                                <div class="umbti_ans">
                                    <p class="umbti_btn umbti_btn1">사람이 북적거리고 유명한 카페에 간다</p>
                                    <p class="umbti_btn umbti_btn2">조용하고 한적한 카페에 간다</p>
                                </div>
                            </div>
                            <!-- 10 -->
                            <div class="umbti umbti10">
                                <p class="umbti_q">연인과 맛집을 가려고 한다</p>
                                <div class="umbti_ans">
                                    <p class="umbti_btn umbti_btn1">평소 맛있게 먹었던 가게로 향한다</p>
                                    <p class="umbti_btn umbti_btn2">색다른 맛집을 찾아본다</p>
                                </div>
                            </div>
                            <!-- 11 -->
                            <div class="umbti umbti11">
                                <p class="umbti_q">전 애인이 나의 스토리를 몰래 본 것을 발견했다</p>
                                <div class="umbti_ans">
                                    <p class="umbti_btn umbti_btn1">의미 부여하지 않는다</p>
                                    <p class="umbti_btn umbti_btn2">혹시...?</p>
                                </div>
                            </div>
                            <!-- 12 -->
                            <div class="umbti umbti12">
                                <p class="umbti_q">나는 친한 친구의 생일 선물을</p>
                                <div class="umbti_ans">
                                    <p class="umbti_btn umbti_btn1">미리 알아보고 구매해 놓는다</p>
                                    <p class="umbti_btn umbti_btn2">당일날 기프티콘으로 선물한다</p>
                                </div>
                            </div>
                            <!-- 결과창 -->
                            <div class="umbti umbti_result">
                                <p class="umbti_q">모든 문항이 끝났습니다!<br>개발자도구에서 콘솔창을 확인해주세요.</p>
                                <div class="umbti_ans">
                                    <p class="result_btn" onclick="location.href='${contextPath}/umbtimap/result.una'">결과보기</p>
                                </div>
                            </div>
                            <!-- sample -->
                            <!-- <div class="umbti umbti8">
                                <p class="umbti_q">우리팀의 주제가 우주로 결정되었다.<br>이 때, 나의 행동은?</p>
                                <div class="umbti_ans">
                                    <p class="umbti_btn umbti_btn1">우주? 사전조사 바로 진행</p>
                                    <p class="umbti_btn umbti_btn2">우와, 우주라니 멋있다!</p>
                                </div>
                            </div> -->
                        </div>
                        <div class="prev_arrow"></div>
                    </div>
                </div>
                <!-- 하단 '우나프로젝트' 영역 -->
                <div class="our_name" title="홈으로 이동 or 우나프로젝트 설명으로 이동" onclick="location.href='../index/index.html'">
                    우나프로젝트
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