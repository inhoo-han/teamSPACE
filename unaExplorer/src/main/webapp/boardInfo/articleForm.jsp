<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
   request.setCharacterEncoding("utf-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기창</title>
<script src="http://code.jquery.com/jquery-Latest.min.js"></script>
	<link rel="stylesheet" href="${contextPath}/resoureces/css/reset.css">
    <link rel="stylesheet" href="${contextPath}/resoureces/css/header&footer.css">
    <link rel="stylesheet" href="${contextPath}/resoureces/css/write.css">
    <script src="${contextPath}/resoureces/js/jquery-3.6.3.min.js"></script>
    <script src="${contextPath}/resoureces/js/jquery-ui.min.js"></script>
    <script src="${contextPath}/resoureces/js/header&footer.js"></script>
    <script src="${contextPath}/resoureces/js/write.js"></script>
<script type="text/javascript">
	//이미지 미리보기
	function readImage(input){
		if(input.files && input.files[0]){
			let reader=new FileReader();
			reader.onload = function(event){
				$('#preview').attr('src',event.target.result);				
			}
			reader.readAsDataURL(input.files[0]);			
		}		
	}
	//다른 액션을 submit
	function toList(obj){
		obj.action="${contextPath}/board/listArticles.do";
		obj.submit();
	}
	
</script>
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
                    <li class="srch_btn"><a href="#"><img class="srch_img" src="${contextPath}/resoureces/images/search.png" alt="search"></a></li>
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
         <div id="write_wrap">
            <!--글쓰기 영역-->
            <form action="${contextPath}/board/addArticle.do" method="post" name="write" enctype="multipart/form-data">
            <div id="write_container">             
                <fieldset>
                <legend>글쓰기 영역</legend>
                <div class="write_title">
                    <ul>
                        <li class="write_name"><label for="write_content_name">제목</label></li>
                        <li class="write_text"><input type="text" placeholder="제목 입력" size="50" name="title" id="write_content_name" spellcheck="false" required></li>
                    </ul>
                </div>
                <div class="write_content">
                <textarea placeholder="내용 입력" name="content" maxlength="4000" id="write_content_detail" spellcheck="false">
                    </textarea>
                </div>
                </fieldset>
            </div>

            <!--글쓰기 첨부파일 영역-->
            <div id="file_wrap"> 
              <fieldset>
              <p>첨부파일</p>
              <input class="file_text" value="파일선택" name="file_text">
              <label for="file">파일찾기</label> 
              <input type="file" id="file" name="imageFileName" onchange="readImage(this)" accept=".jpg,.jpeg,.png">                          
            </fieldset>
            </div>
            
              <!--이미지 미리보기 영역-->
            <div id="file_image_wrap"> 
                <fieldset>
                <p>이미지</p>
                <img id="preview" src="${contextPath}/resoureces/images/no_image.jpg" alt="미리보기">    
              </fieldset>
              </div>

          <!--글쓰기 버튼 영역-->                   
          <div id="write_btn_wrap">
                <fieldset>
                <legend>버튼 영역</legend>            
               <input type="submit" value="등록" id="write_register" name="write_register">
               <input type="submit" value="취소" id="write_cancle" name="write_cancle" onclick="toList(this.form)">   
            </fieldset>     
            </div>
        </form>      
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