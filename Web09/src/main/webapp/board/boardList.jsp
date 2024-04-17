<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/shopping.css">
</head>
<body>
	<div class="container">
		<header>
			<div id="logo">
				<a href="pudding.jsp"><img src="img/logo.gif" alt="logo"></a>
			</div>
			<div class="search">
				<input type="text" placeholder="">
			</div>
			<div id="unmenu">
				<ul>
					<li><a href="login.do"><img src="img/login.png"></a></li>
					<li><a href="productList.do"><img src="img/mypage.png"></a></li>
					<li><a href="index2.jsp"><img src="img/qa.png"></a></li>
				</ul>
			</div>
	</div>
	<div id="wrap" align="center">
		<h1>상품 문의사항</h1>
		<table class="list">
			<tr>
				<td colspan="5" style="border: white; text-align: right"><a
					href="BoardServlet?command=board_write_form">문의사항 등록</a></td>
			</tr>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회</th>
			</tr>
			<c:forEach var="board" items="${boardList }">
				<tr class="record">
					<td>${board.num }</td>
					<td><a href="BoardServlet?command=board_view&num=${board.num}">
							${board.title } </a></td>
					<td>${board.username}</td>
					<td><fmt:formatDate value="${board.writedate }" /></td>
					<td>${board.readcount}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div id="footer">
		<div class="ftsec1">
			<li><a href="#">회사소개</a></li>
			<li><a href="#">이용약관</a></li>
			<li><a href="#">쇼핑몰이용안내</a></li>
			<li><a href="#">개인정보처리방침</a></li>
			<li><a href="#">오프라인 입점매장</a></li>
			<li><a href="#">상품제휴</a></li>
			<li><a href="#">입점신청</a></li>
			<li><a href="#">촬영.디자인 의뢰</a></li>
		</div>
		<div class="ftsec2">
			<address>
				<span class="company">주식회사 더나음</span><br> "대표 :
				김선국&nbsp;&nbsp;&nbsp;&nbsp;사업자 등록번호 :
				132-86-30090&nbsp;&nbsp;&nbsp;&nbsp; 통신판매업 신고 :
				제2017-별내-0243호[사업자정보확인]"<br> "본사 : 경기도 남양주시 송산로339번길 4-16
				3층&nbsp;&nbsp;&nbsp;&nbsp;물류 : 경기도 남양주시 진건읍 독정로성지2길 36-11"<br>
				"고객센터 : 1599-7988&nbsp;&nbsp;&nbsp;&nbsp;팩스 :
				031-575-1722&nbsp;&nbsp;&nbsp;&nbsp; 개인정보관리책임자 :
				김선국&nbsp;&nbsp;&nbsp;&nbsp;Hosting by NHNGOOD"<br> "Copyright
				2014. ww.foodingfactory.com All rights reserver. "
			</address>
			<div class="ftsec2-2">
				<h3>고객상담센터</h3>
				<h4>1599-7988</h4>
				<p>
					"평일 10:00 ~ 18:00 (점심시간 12:00 ~ 13:00)"<br>
					"주말&nbsp;&nbsp;&nbsp;&nbsp;공휴일 휴무"
				</p>
			</div>
		</div>
		<div class="ftsec3">
			<p class="notice">
				"주식회사 더나음이 운영하는 푸딩팩토리 홈페이지 이미지 및 모든 컨텐츠 등은 저작권등록 제c-2017-012413호에 등록
				되어 있으며 저작권 및 법 및 콘텐츠 산업진흥법에 의해 보호받고 있습니다."<br> "따라서 홈페이지 내의
				컨텐츠와 이미지를 무단 도용하여 상업적으로 이용하시는 경우 사전 예고없이 민.형사 상 책임을 물을 수 있습니다."
			</p>
			<div class="pay">
				"고객님은 안전거래를 위해 현금 등으로 결제시 저희 쇼핑몰에서 가입한 PG 사의 구매안전서비스를 이용하실 수 있습니다."<br>
				"NHN KCP 에스크로"
			</div>
		</div>
	</div>
</body>
</html>