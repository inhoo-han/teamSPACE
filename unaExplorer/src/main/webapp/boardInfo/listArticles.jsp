<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="articleList" value="${articleMap.articleList}"/>
<c:set var="totArticles" value="${articleMap.totArticles}"/>
<c:set var="section" value="${articleMap.section}"/>
<c:set var="pageNum" value="${articleMap.pageNum}"/>
<%
	String sId=(String)session.getAttribute("log_id");
%>
<c:set var="sId" value="<%= sId %>"/>
<%
   request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 목록 창</title>
	<link rel="stylesheet" href="${contextPath}/resoureces/css/reset.css">
    <link rel="stylesheet" href="${contextPath}/resoureces/css/header&footer.css">
    <link rel="stylesheet" href="${contextPath}/resoureces/css/meeting_board.css">
    <script src="${contextPath}/resoureces/js/jquery-3.6.3.min.js"></script>
    <script src="${contextPath}/resoureces/js/jquery-ui.min.js"></script>
    <script src="${contextPath}/resoureces/js/header&footer.js"></script>
</head>

<body>
 <!-------------------- [S] #wrap -------------------->
    <div id="wrap">
        <!-- bookmark_menu -->
        <div id="bookmark_div_wrap">
            <ul id="bookmark_ul">
                <li class="bookmark_li bk_title">참여마당</li>
                <li class="bookmark_li bk_li_1"><a href="#">두근두근 추첨마당</a></li>
                <li class="bookmark_li bk_li_2"><a href="#">하루하루 체험마당</a></li>
                <li class="bookmark_li bk_li_3"><a href="#">모여봐요 모임마당</a></li>
                <li class="bookmark_li bk_li_4"><a href="#">복작복작 놀이마당</a></li>
            </ul>
            <!-- <div id="bookmark_sub_title"><span>참여마당</span></div> -->
        </div>
        <div id="go_up_div">
            <img src="${contextPath}/resoureces/images/go_up.png" alt="위로이동" class="go_up_img">
        </div>
        <!---------- [S] header ---------->
        <header>
            <h1 class="home">
                <span>우나</span>
                <div class="logo">
                    <img src="${contextPath}/resoureces/images/header/logoSample2.png" alt="logo" class="main_logo_img">
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
                            <li class="smenu"><a href="#">하루하루 체험마당</a></li>
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
                    <li class="srch_btn"><a href="#"><img class="srch_img" src="images/search.png" alt="search"></a></li>
                    <c:choose>
					<c:when test="${isLogon == true && log_id != null}">
						<li>${log_id}님!</li>
						<li><a href="${contextPath}/member/logout.do">로그아웃</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="${contextPath}/member/loginForm.do">로그인</a></li>
					</c:otherwise>
				</c:choose>
                </ul>

                
            </div>
            <div id="header_search">
                <form action="#" method="post" name="search">
                    <fieldset>
                        <legend>검색영역</legend>
                        <label for="srch" class="hidden">검색</label>
                        <input type="search" id="srch" placeholder="검색어를 입력하세요">
                        <button type="submit" class="srch_btn"><img src="${contextPath}/resoureces/images/search.png" alt="search"></button>
                    </fieldset>
                </form>
            </div>
        </header>
        <!---------- [E] header ---------->
        <!-- h2 title and BG img div -->
        <div id="title_bg_wrap">
            <h2 id="sub_page_h2">모여봐요 모임마당</h2>
        </div>
        <!---------- [S] #container ---------->
    <div id="meeting_wrap">
        <div id="meeting_table_wrap">
        <table class="meeting_table_list">
      <caption>모임마당 게시판 목록</caption>
      <thead>
      <tr>
         <th scope="col">번호</th><th scope="col">제목</th><th scope="col">글쓴이</th><th scope="col">작성일</th>
      </tr>
      </thead>
      <c:choose>
         <c:when test="${empty articleList}">
            <tr>
               <td colspan="4" align="center">등록된 글이 없습니다.</td>
            </tr>
         </c:when>
         <c:when test="${not empty articleList}">
            <c:forEach var="article" items="${articleList}" varStatus="articleNum">
               <tr align="center">
                  <td width="7%">${(pageNum-1)*10+articleNum.count}</td>                 
                  <td align="left" width="30%">
                  	<span style="padding-left:10px"></span>
                  	<c:choose>
                  		<c:when test="${article.level > 1}">
                  			<c:forEach begin="1" end="${article.level}" step="1">
                  				<span style="padding-left:20px"></span>
                  			</c:forEach>
                  			[답변]<a href="${contextPath}/board/viewArticle.do?articleNo=${article.articleNo}">${article.title}</a>
                  		</c:when>
                  		<c:otherwise>
                  			<a href="${contextPath}/board/viewArticle.do?articleNo=${article.articleNo}">${article.title}</a>
                  		</c:otherwise>
                  	</c:choose>
                  </td>
                  <td width="10%">${article.id}</td>
                  <td width="10%">${article.writeDate}</td>
               </tr>
            </c:forEach>
         </c:when>
      </c:choose>
      </table>
      
       <!-------글쓰기 영역 ------->
        <div id="meeting_btn_wrap">
        <div id="meeting_write">
        <c:if test="${sId eq 'admin'}">
            <a href="${contextPath}/board/articleForm.do" class="meeting_write_btn">글쓰기</a>
            </c:if>
        </div> 
      
      
      <div id="meeting_page">
      <c:if test="${totArticles != 0}">
         <c:choose>
            <c:when test="${totArticles > 100}">
               <c:forEach var="page" begin="1" end="10" step="1">
                  <c:if test="${section > 1 && page == 1}">
                     <a href="${contextPath}/board/listArticles.do?section=${section-1}&pageNum=${(section-1)*10+1}"> prev </a> <%-- 1번섹션으로 돌아가는 링크 --%>
                  </c:if>
                  <a href="${contextPath}/board/listArticles.do?section=${section}&pageNum=${page}">${(section-1)*10+page}</a>
                  <c:if test="${page == 10}">
                     <a href="${contextPath}/board/listArticles.do?section=${section+1}&pageNum=${section*10+1}"> next </a> <%-- 다음 섹션으로 넘어가는 링크 --%>
                  </c:if>
               </c:forEach>
            </c:when>
            
            <c:when test="${totArticles == 100}">
               <c:forEach var="page" begin="1" end="10" step="1">
                  <a href="#">${page}</a>
               </c:forEach>
            </c:when>
            <c:when test="${totArticles <= 100}">
               <c:if test="${(totArticles mod 10) == 0}">
                  <c:set var="totArticles" value="${totArticles-1}"/>
               </c:if>
               <c:forEach var="page" begin="1" end="${totArticles/10+1}" step="1">
                  <c:choose>
                     <%-- 현재 보고 있는 페이지를 다르게 표시하기 위해 쓰는 코드 --%>
                     <c:when test="${page==pageNum}">
                        <a class="selPage" href="${contextPath}/board/listArticles.do?section=${section}&pageNum=${page}">${page}</a>
                     </c:when>
                     <c:otherwise>
                        <a class="noLine" href="${contextPath}/board/listArticles.do?section=${section}&pageNum=${page}">${page}</a>
                     </c:otherwise>
                  </c:choose>
               </c:forEach>
            </c:when>
         </c:choose>
      </c:if>
   </div>
   
   
             <!------- 검색 영역 ------->

        <div id="meeting_search_wrap">
            <form action="#" method="get" name="meeting">
                <fieldset>
                    <legend>모임마당 검색 영역</legend>
                    <select id="meeting_search_menu">
                        <option value="all">전체</option>
                        <option value="name">제목</option>
                        <option value="content">내용</option>
                        <option value="writer">글쓴이</option>
                    </select>
                    <input type="search" name="meeting_search_content" id="meeting_search_content">
                    <button type="submit" name="meeting_search_btn" id="meeting_search_btn">검색</button>
                </fieldset>
            </form>
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
