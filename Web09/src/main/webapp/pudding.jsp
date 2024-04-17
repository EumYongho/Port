<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.7.0.min.js"></script>
<script>
	$(function() {
		$
				.ajax({
					url : "./script/best.json",
					dataType : "json",
					success : function(data) {
						if (data.length > 0) {
							console.log(data)
							for ( var i in data) {
								var title = data[i].title;
								var subtitle = data[i].subtitle;
								var price = data[i].price;
								var url = data[i].url;
								$(".box")
										.eq(i)
										.append(
												'<div><a href="#">'
														+ "<img src='img/best/" + data[i].url + "'/>"
														+ '</a></div>');
								$(".box").eq(i).append(
										'<h5><a href="#">' + data[i].title
												+ "</a></h5>");
								$(".box").eq(i).append(
										'<p><a href="#">' + data[i].subtitle
												+ "</a></p>");
								$(".box").eq(i).append(
										"<span>" + data[i].price + "</span>");

								var count = Math.floor(Math.random() * 100);
								$(".box").eq(i).append(
										"<button" + count + "REVIEWS"
												+ "</button>");

								$(".box > div").attr("width", "228");
								$(".box > div").attr("height", "228");
								$(".box > div").attr("overflow", "hidden");

								$(".box > div > a > img").attr("width", "228");
								$(".box > div > a > img").attr("height", "228");
								$(".box > div > a > img").attr("alt", "상품사진");

								$(".box > div > a > img").hover(
										function() {
											$(this).attr("width", "228").attr(
													"height", "228").css({
												"opacity" : "0.6",
												"display" : "inline"
											});
										},
										function() {
											$(this).attr("width", "228").attr(
													"height", "228").css({
												"opacity" : "1",
												"display" : "inline"
											});
										});
								$(".box>h5>a").css({
									"font-size" : "15px",
									"height" : "30px",
									"margin" : "0px",
									"marginTop" : "0px",
									"marginRight" : "15px",
									"marginLeft" : "15px",
									"color" : "#000",
									"text-align" : "left",
									"text-decoration" : "none",
									"display" : "block"
								});
								$(".box>p>a").css({
									"border-bottom" : "1px solid #eee",
									"marginRight" : "15px",
									"marginTop" : "-5px",
									"marginLeft" : "15px",
									"font-size" : "12px",
									"color" : "#666",
									"line-height" : "45px",
									"text-align" : "left",
									"text-decoration" : "none",
									"display" : "block"
								});
								$(".box>span").css({
									"font-size" : "15px",
									"marginLeft" : "15px",
									"marginRight" : "15px",
									"float" : "left"
								});
								$(".box>button").css({
									"font-size" : "11px",
									"border-radius" : " 3px",
									"border" : "none",
									"background" : "#ba7112",
									"padding" : "5px",
									"color" : "#fff",
									"marginRight" : "15px",
									"float" : "right",
									"cursor" : "pointer"
								});
							}
						}
					}
				});
	});
</script>

<link rel="stylesheet" , href="css/main.css">
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
			<div id="nav">
				<ul class="nav_wrap">
					<li class="first_nav_btn"><img src="img/karte.svg"> 카테고리</li>
					<li><a href="https://www.foodingfactory.com/concept/index.php"><span
							class="newst">N</span> 푸딩공작소 </a></li>
					<li><a
						href="https://www.foodingfactory.com/goods/goods_list.php?cateCd=041002">신상품</a></li>
					<li><a href="https://www.foodingfactory.com/goods/best.php">베스트</a></li>
					<li><a
						href="https://www.foodingfactory.com/goods/goods_list.php?cateCd=043">할인특가</a></li>
					<li><a
						href="https://www.foodingfactory.com/providerlist/provider_list.php">입점브랜드</a></li>
					<li><a
						href="https://www.foodingfactory.com/board/list.php?&bdId=cock&list=all">이벤트</a></li>
				</ul>
			</div>
			<slide></slide>
	</div>
	</header>
	</div>
	<div id="slidewrap">


		<ul class="slide">

			<li><img src="img/slide1.jpg" alt="slide image"></li>
			<li><img src="img/slide2.jpg" alt="slide image"></li>
			<li><img src="img/slide3.jpg" alt="slide image"></li>
			<li><img src="img/slide4.jpg" alt="slide image"></li>

		</ul>

	</div>
	<main>
		<h3 id="title"></h3>

		<section>

			<article>
				<div class="box"></div>

				<div class="box"></div>

				<div class="box"></div>

				<div class="box"></div>

				<div class="box"></div>

				<div class="box"></div>

				<div class="box"></div>

				<div class="box"></div>
			</article>

		</section>
		<h1 id="newpro">푸딩이 처음인 고객님</h1>
		<p id="newp">무조건 담으세요!</p>
		<section>

			<article>
				<div class="box"></div>

				<div class="box"></div>

				<div class="box"></div>

				<div class="box"></div>

				<div class="box"></div>

				<div class="box"></div>

				<div class="box"></div>

				<div class="box"></div>
			</article>

		</section>


	</main>

	<script>
		window.onload = function() {
			// 전체 폰트,배경색깔
			document.body.style.fontFamily = "Charcoal,sans-serif";

			// title
			var title = document.getElementById("title")
			title.innerHTML = "베스트 제품";
			title.style.color = "black";
			title.style.fontSize = "45px";
			title.style.width = "100%";
			title.style.textAlign = "center";
			title.style.letterSpacing = "10px";
			title.style.fontFamily = "Impact";
			title.margin = "0";

			// sub title

			var subtitle = document.createElement("p");
			var textnode = document.createTextNode(" 지금 실시간 인기 ");
			subtitle.appendChild(textnode);
			title.appendChild(subtitle);
			subtitle.style.color = "#666";
			subtitle.style.fontSize = "25px";
			subtitle.style.textAlign = "center";
			subtitle.style.margin = "24px 0px";
			//article

			var article = document.getElementsByTagName("article")[0];
			article.style.width = "1260px";
			article.style.height = "827px";
			article.style.textAlign = "center";
			article.style.margin = "0 auto";

			var article = document.getElementsByTagName("article")[1];
			article.style.width = "1260px";
			article.style.height = "827px";
			article.style.textAlign = "center";
			article.style.margin = "0 auto";
			//box
			var boxs = document.getElementsByClassName('box');
			for (var i = 0; i < boxs.length; i++) {
				boxs[i].boxSizing = "border-box";
				boxs[i].style.width = "228px";
				boxs[i].style.height = "228px";
				boxs[i].style.backgroundColor = "#fff";
				boxs[i].style.margin = "35px 10px";
				boxs[i].style.display = "inline-block";
				boxs[i].style.boxShadow = "4px 4px 4px #ddd";
			}
		}

		var i = 0;

		function slide() {

			i++;

			if (i > $('.slide li:last').index()) {

				i = 0;

			}

			$('.slide li').eq(i).stop().fadeIn('slow');

			$('.slide li').eq(i - 1).stop().fadeOut();

		}
		setInterval(slide, 3000);
	</script>
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