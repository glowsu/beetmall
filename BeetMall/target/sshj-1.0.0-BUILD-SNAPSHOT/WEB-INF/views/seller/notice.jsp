<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>	
		<!-- include libraries(jQuery, bootstrap) -->
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		
		<!-- include summernote css/js -->
		<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
		<!-- font -->
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300&display=swap" rel="stylesheet">

	
		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/jcss/basicStyle.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/jcss/headerStyle.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/jcss/csStyle.css">
</head>

<style>

	
	/*표*/

	td:nth-child(1), td:nth-child(3){
		text-align:center;
		width:100px;
	}
	td:nth-child(2){
		padding-left:30px;
	}
	td:nth-child(2) a, a{
		color:black;
		cursor: pointer;
	}
	th{
		margin-top:30px;
		text-align:center;
	}
	.option_change{
		width:100%;
	}
		
	#seller_cs_menu{
		width:600px;
	}
</style>
<script>
//테이블 collapse
  //showHideFaq
</script>
<body>
	<div class="main">
	<!-- 고객센터 사이드바 -->
		  <div id="seller_header">
      <!-- 상단 메뉴 바 -->
         <nav>
         <div id="headerMember">
            <c:if test="${logStatus != 'Y'}">
               <div class="sellerLoginBtn">   <!-- 로그인 전 -->
                  <input type="button" value="회원가입" class="sellerMenuButtons"/>
                  <input type="button" value="로그인" class="sellerMenuButtons"/>
                  <input type="button" value="고객센터" class="sellerMenuButtons"/>
               </div>
            </c:if>
            <c:if test="${logStatus == 'Y' }">
               <div class="sellerLoginBtn">   <!-- 로그인 후 -->
                  <c:if test="${logType==2}">
                     <input type="button" value="판매자 페이지로 이동하기" class="sellerMenuButtons"/>
                  </c:if>
                  <a href="myinfoEdit">${logName}님</a><span id="sellerMenuButtons">▼</span>
                  <input type="button" value="로그아웃" class="sellerMenuButtons"/>
                  <input type="button" value="고객센터" class="sellerMenuButtons"  onClick="location.href='<%=request.getContextPath() %>/ask_admin_list'"/>
               </div>
            </c:if>
         </div>   
         <ul id="seller_cs_menu">
            <li><a href="#">BEETMALL</a></li>
            <li><a href="notice">공지사항</a></li>
            <li><a href="faq">자주묻는 질문</a></li>
            <li><a href="ask_admin_list">문의하기</a></li>
         </ul>
      </nav>
   </div> 
	<!-- 가운데 메인 div -->
	<div id="article">
		
		<div class="cs_wrapTitle">공지사항</div>
	<!-------------------------검색하기 ---------------------------------------------->
		<div id="search_container">
			<span id="search_box">
				<input type="text" id="search" name="search" placeholder="검색하기"><a href="#" onclick="return false;"><span id="search_btn">검색</span></a>
			</span>
		</div>
		<fieldset>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td><a href="<%=request.getContextPath() %>/notice_view"><strong>코로나19로 인한 픽업 서비스 중단 안내</strong></a></td>
					<td>21/04/21</td>
				</tr>
				
				<!-- 임시로 넣은 정보 -->
				<tr>
					<td>2</td>
					<td><a href="">개인정보 처리방침 개정안내</a></td>
					<td>21/04/21</td>
				</tr>
				<tr>
					<td>3</td>
					<td><a href="">개인정보 처리방침 개정안내</a></td>
					<td>21/04/21</td>
				</tr>
				<tr>
					<td>4</td>
					<td><a href="">개인정보 처리방침 개정안내</a></td>
					<td>21/04/21</td>
				</tr>
			</tbody>
			
		</table>
		<!-- 페이징 by kangsan -->
		<div class="page_wrap">
			<div class="page_nation">
			   <a class="arrow pprev" href="#"></a>
			   <a class="arrow prev" href="#"></a>
			   <a href="#" class="active">1</a>
			   <a href="#">2</a>
			   <a href="#">3</a>
			   <a href="#">4</a>
			   <a href="#">5</a>
			   <a href="#">6</a>
			   <a href="#">7</a>
			   <a href="#">8</a>
			   <a href="#">9</a>
			   <a href="#">10</a>
			   <a class="arrow next" href="#"></a>
			   <a class="arrow nnext" href="#"></a>
			</div>
		 </div>
		</fieldset>
		</div>
	</div>
</body>
</html>