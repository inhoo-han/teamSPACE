<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
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
<title>글 상세보기</title> 
	<link rel="stylesheet" href="${contextPath}/resoureces/css/reset.css">
    <link rel="stylesheet" href="${contextPath}/resoureces/css/header&footer.css">
    <link rel="stylesheet" href="${contextPath}/resoureces/css/view.css">
    <script src="${contextPath}/resoureces/js/jquery-3.6.3.min.js"></script>
    <script src="${contextPath}/resoureces/js/jquery-ui.min.js"></script>
    <script src="${contextPath}/resoureces/js/header&footer.js"></script>

<script src="http://code.jquery.com/jquery-Latest.min.js"></script>
<script type="text/javascript">
	function readImage(input){
		if(input.files && input.files[0]) {
			let reader=new FileReader();
			reader.onload=function(event){
				$('#preview').attr('src',event.target.result);
			console.log(event.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	function backToList(obj){
		obj.action="${contextPath}/board/listArticles.do";
		obj.submit();	
	}
	
	 //비활성화 된 input을 활성화로 바꿈
	function fn_enable(obj){
		document.getElementById("id_title").disabled=false;
		document.getElementById("id_content").disabled=false;
		let imgName=document.getElementById("id_imgFile");
		if(imgName != null){
			imgName.disabled=false;
		}
		document.getElementById("tr_button_modify").style.display="block";
		document.getElementById("tr_button").style.display="none";
	}
	
	//수정반영하기 버튼
	function fn_modify_article(obj){ 
		obj.action="${contextPath}/board/modArticle.do";
		obj.submit();
	}
	//리스트로 돌아가기
	function toList(obj){ 
		obj.action="${contextPath}/board/viewArticle.do?articleNo=${article.articleNo}";
		obj.submit();	
	}	
	//삭제하기
	function fn_remove_article(url, articleNo){
		let d_form=document.createElement("form"); //createElement : 태그생성 명령어, form을 생성하겠다
		d_form.setAttribute("method","post");
		d_form.setAttribute("action",url);
		let articleNoInput=document.createElement("input");
		articleNoInput.setAttribute("type","hidden");
		articleNoInput.setAttribute("name","articleNo");
		articleNoInput.setAttribute("value",articleNo); //실제 매개변수를 받는 값
		d_form.appendChild(articleNoInput); //appendChild : 자식으로 집어넣음
		document.body.appendChild(d_form); //form을 동적으로 만든다 
		d_form.submit();		
	}
   	//답글쓰기
   	function fn_reply_form(url, parentNo){ //컨트롤 전달할 url, 상세보기 눌럿을때 parentNo로 받음
   		let d_form=document.createElement("form"); //createElement : 태그생성 명령어, form을 생성하겠다
		d_form.setAttribute("method","post");
		d_form.setAttribute("action",url);
		let parentNoInput=document.createElement("input");
		parentNoInput.setAttribute("type","hidden");
		parentNoInput.setAttribute("name","parentNo");
		parentNoInput.setAttribute("value",parentNo); //실제 매개변수를 받는 값
		d_form.appendChild(parentNoInput); //appendChild : 자식으로 집어넣음
		document.body.appendChild(d_form); //form을 동적으로 만든다 
		d_form.submit();		
   	}
</script>
</head>
<body>
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
            <img src="images/go_up.png" alt="위로이동" class="go_up_img">
        </div>
        <!---------- [S] header ---------->
        <header>
            <h1 class="home">
                <span>우나</span>
                <div class="logo">
                    <img src="images/header/logoSample2.png" alt="logo" class="main_logo_img">
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
                        <button type="submit" class="srch_btn"><img src="images/search.png" alt="search"></button>
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
    <div id="view_wrap">
            <div class="view_container">
                <!-- 모임마당 view 시작 -->
                <form name="frmArticle" action="${contextPath}" method="post" enctype="multipart/form-data">
                <div class="view_title">
                    <input type="text" id="id_title" name="title" value="${article.title}" disabled>
                </div>
                <div class="view_info">
                    <ul>
                        <li>번호</li>
                        <li class="view_info_detail"><input class="no" type="text" name="articleNo" value="${article.articleNo}" disabled></li>
                        <input type="hidden" name="articleNo" value="${article.articleNo}">
                        <li class="view_info_detail">&#124;</li>                        
                   
                        <li>글쓴이</li>
                        <li class="view_info_detail"><input class="writer" type="text" value="${article.id}" disabled></li>
                        <li class="view_info_detail">&#124;</li>
               
                        <li>작성일</li>
                        <li class="view_info_detail"><input class="write_date" type="text" value="<fmt:formatDate value="${article.writeDate}"/>" disabled></li>
   
                                       
                    </ul>
                </div>
                <div id="view_content">
                   <textarea rows="10" id="id_content" name="content"cols="50" disabled>${article.content}</textarea>
                </div>
                
                <c:if test="${!empty article.imageFileName}">
                <div id="view_image">
                    <p>이미지</p>
                    <input type="hidden" name="originFileName" value="${article.imageFileName}">
					<img id="preview" src="${contextPath}/download.do?imageFileName=${article.imageFileName}&articleNo=${article.articleNo}">
                	<input type="file" id="id_imgFile" name="imageFileName" onchange="readImage(this)" disabled>
                </div>
                </c:if>
          
			 </div>

            <!-- 모임마당 목록,수정 버튼 시작 -->
            <div id="view_btn_comment_wrap">
            <fieldset>  
            <legend>목록,수정 버튼</legend>  
            
            <div id="view_edit_btn_wrap">
            <input type="button" value="수정반영하기" onclick="fn_modify_article(frmArticle)">
			<input type="button" value="취소" onclick="toList(frmArticle)">
            </div>

            <div id="view_btn_wrap">
          
                <input type="button" value="목록" id="list_btn" name="list_btn" onclick="backToList(this.form)">
                <c:if test="${sId eq 'admin'}">
                <input type="button" value="수정" id="edit_btn" name="edit_btn" onclick="fn_enable(this.form)">
                <!--  <input type="button" value="답글" id="comment_btn" name="comment_btn" onclick="fn_reply_form('${contextPath}/board/replyForm.do',${article.articleNo})"> -->
                <input type="button" value="삭제" id="del_btn" name="del_btn" onclick="fn_remove_article('${contextPath}/board/removeArticle.do',${article.articleNo})">
            	</c:if>
            </div>
            </fieldset>
                </form>
        </div>
        </div>

    
<!---------- [E] #container ---------->
        
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