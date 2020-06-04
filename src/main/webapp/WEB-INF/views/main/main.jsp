<%@page import="org.springframework.web.context.request.SessionScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>main</title>
<!-- all css here -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/slinky.min.css">
<link rel="stylesheet" href="assets/css/meanmenu.min.css">
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/ionicons.min.css">
<link rel="stylesheet" href="assets/css/bundle.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">

<script type="text/javascript">
	$(document).ready(function() {
		$('.slider').slider();
	});
</script>
<style type="text/css">
*{margin:0;padding:0;}
    ul,li{list-style:none;}
    .slider{width:1573px;overflow:hidden;}
    .slider ul{position:relative;height:830px;}
    .slider li{position:absolute;left:0;right:0;top:0;bottom:0;opacity:0;animation:fade 12s infinite;}
    .slider li:nth-child(1){background:url("assets/img/slider/main0.jpg");animation-delay:0s}
    .slider li:nth-child(2){background:url("assets/img/slider/main1.jpg");animation-delay:3s}
    .slider li:nth-child(3){background:url("assets/img/slider/main2.jpg");animation-delay:6s}
    .slider li:nth-child(4){background:url("assets/img/slider/main3.jpg");animation-delay:9s}
     /* 100 / 8 = 12.5 */
    @keyframes fade {
      0% {opacity:0;}
      5% {opacity:1;}
      25% {opacity:1;}
      30% {opacity:0;}
      100% {opacity:0;}
}

.ban-font {text-align:center;position: absolute;bottom: 15px;left: 636px;}
.ban-font h2{font-size:45px;color:white;}
.ban-font h3{font-size:30px;color:white;}

</style>
</head>
<body>
	<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
	<div class="wrapper">
		<div class="body-overlay"></div>
		<div class="body-overlay"></div>
		<!-- 왼쪽 메인 메뉴바 -->
		<div class="sidebar-style">
			<div class="sidebar-style-all">

				<!-- 로고 위치  -->
				<div class="sidebar-logo-menu">
					<div class="sidebar-logo">
						<a href="/food_market/"> <img alt=""
							src="assets/img/logo/logo.png">
						</a>
					</div>

					<!-- 왼쪽 로고 메뉴 -->
					<div class="sidebar-main-menu main-menu">
						<nav>
							<ul>
								<li><a href="/food_market/">Home</a></li>
								<li><a href="product/productList">Category
<!-- 								<span><i class="ion-ios-arrow-forward"></i></span> -->
								</a>
									<div class="mega-dropdown width-col3">
										<ul class="dropdown">
											<li><a href="product/productList">전체 상품</a></li>
                                                    <li><a href="product/productList?findType=과일">과일</a></li>
                                                    <li><a href="product/productList?findType=채소">채소</a></li>
                                                    <li><a href="product/productList?findType=쌀">쌀</a></li>
                                                    <li><a href="product/productList?findType=정육">정육</a></li>
                                                    <li><a href="product/productList?findType=수산">수산</a></li>
										</ul>
									</div></li>
								<li><a href="member/orderlist.do">MyPage</a>
									<div class="mega-dropdown width-col3">
										<c:choose>
											<c:when test="${sessionScope.mb_seller == '1' }"> <!-- 판매자 -->
												<ul class="dropdown">
													<li><a href="product/productSellerList">판매자 페이지</a></li>
													<li><a href="#">물품 등록</a></li>
													<li><a href="#">판매중인 목록</a></li>
													<li><a href="#">구매 요청 상품</a></li>
												</ul>
											</c:when>
											<c:when test="${sessionScope.mb_seller == '2' }"> <!-- 구매자 -->
												<ul class="dropdown">
													<li><a href="member/info.do">회원정보 수정</a></li>
													<li><a href="member/modifyPw.do">비밀번호 변경</a></li>
													<li><a href="cart/list">장바구니</a></li>
													<li><a href="member/orderlist.do">구매내역</a></li>
													<li><a href="#">배송조회</a></li>
												</ul>
											</c:when>
											<c:when test="${sessionScope.mb_seller == '3' }"> <!-- 관리자 -->
												<ul class="dropdown">
													<li><a href="#">관리자 페이지</a></li>
													<li><a href="#">회원 리스트</a></li>
													<li><a href="#">상품 리스트</a></li>
												</ul>
											</c:when>
											<c:otherwise>
												<ul class="dropdown">
												<li><a href="member/login.do">로그인 해주세요</a></li>
												</ul>
											</c:otherwise>
										</c:choose>
									</div></li>
								<li><a href="cs/list">고객센터</a></li>
							</ul>
						</nav>
					</div>
				</div>

				<div class="sidebar-cart-contact">
					<!-- 로그인, 회원가입 / 내 정보, 로그아웃 -->
					 
					<div class="member-info">
						<c:choose>
							<c:when test="${sessionScope.mb_seller == null }">
								<input type="button" value="로그인"
									onclick="location.href='member/login.do#login'">
								<input type="button" value="회원가입"
									onclick="location.href='member/join.do'">
<!-- 								<input type="button" value="장바구니" -->
<!-- 									onclick="location.href='member/login.do'"> -->
							</c:when>
							<c:when test="${sessionScope.mb_seller == 3 }">
								<b>${sessionScope.mb_name }</b><a> 님 환영합니다.</a> <br>
								<input type="button" value="관리자페이지"
									onclick="location.href='admin/index.do'"><br>
								<input type="button" value="로그아웃"
									onclick="location.href='member/logout.do'">
							</c:when>
							<c:when test="${sessionScope.mb_seller== 2}">
								<b>${sessionScope.mb_name}</b><a> 님 환영합니다.</a><br>
								<input type="button" value="마이페이지"
									onclick="location.href='member/myPage.do'">
								<br>
								<input type="button" value="장바구니"
									onclick="location.href=''">
								<br>
								<input type="button" value="로그아웃"
									onclick="location.href='member/logout.do'">
							</c:when>
							<c:when test="${sessionScope.mb_seller== 1}">
								<b>${sessionScope.mb_name}</b><a> 님 환영합니다.</a><br>
								<input type="button" value="마이페이지"
									onclick="location.href='member/orderlist.do'">
								<br>
								<input type="button" value="로그아웃"
									onclick="location.href='member/logout.do'">
								<br>
<!-- 								<input type="button" value="장바구니" -->
<!-- 									onclick="location.href=''"> -->
							</c:when>
						</c:choose>
					</div>
					
					<!-- 검색, 장바구니, 오른쪽 메뉴바 버튼 -->
<!-- 					<div class="header-search-cart"> -->
<!-- 						검색 버튼 -->
<!-- 						<div class="header-search common-style"> -->
<!-- 							<button class="sidebar-trigger-search"> -->
<!-- 								<span class="ion-ios-search-strong"></span> -->
<!-- 							</button> -->
<!-- 						</div> -->
<!-- 						장바구니 버튼 -->
<!-- 						<div class="header-cart common-style"> -->
<!-- 							<button class="sidebar-trigger"> -->
<!-- 								<span class="ion-bag"></span> -->
<!-- 							</button> -->
<!-- 						</div> -->
<!-- 						오른쪾 메뉴바 버튼 -->
<!-- 						<div class="header-sidebar common-style"> -->
<!-- 							<button class="header-navbar-active"> -->
<!-- 								<span class="ion-navicon"></span> -->
<!-- 							</button> -->
<!-- 						</div> -->
<!-- 					</div> -->
					<div class="sidebar-contact">
						<p>Call Us : +8210 1234 5678 </p>
					</div>
				</div>
			</div>
			<!-- sidebar-cart-contact END -->
		</div>
	<div class="sidebar-wrapper">
		<!-- 메인 배너 -->
		<div class="slider">
			<ul>
				<li>
				  <div class="ban-font">
	                  <h2 class="animated">Fresh Market!</h2>
	                  <h3 class="animated">Buy Fresh Food!</h3>
	                  <a class="btn-hover slider-btn-toy animated" href="shop-grid-view-sidebar.html">shop now</a>
                  </div>
				</li>
				<li>
					<div class="ban-font">
	                    <h2 class="animated">Fresh Market!</h2>
	                    <h3 class="animated">Buy Fresh Food!</h3>
	                    <a class="btn-hover slider-btn-toy animated" href="shop-grid-view-sidebar.html">shop now</a>
                 	</div>
                </li>
				<li>
					<div class="ban-font">
                        <h2 class="animated">Fresh Market!</h2>
                        <h3 class="animated">Buy Fresh Food!</h3>
                        <a class="btn-hover slider-btn-toy animated" href="shop-grid-view-sidebar.html">shop now</a>
                  	</div>
				</li>
				<li>
					<div class="ban-font">
                        <h2 class="animated">Fresh Market!</h2>
                        <h3 class="animated">Buy Fresh Food!</h3>
                        <a class="btn-hover slider-btn-toy animated" href="shop-grid-view-sidebar.html">shop now</a>
                  	</div>
				</li>
			</ul>
		</div>

			<!-- 아래 상품 목록 -->
			<div class="toy-banner-shop gray-bg-5">
				<!-- 하단 목록 1 -->
				<div class="toy-banner-cart">
					<div class="shop-services-area">
						<div class="toy-services">
							<div class="single-shop-services-all">
								<div class="single-shop-services mb-30">
									<div class="single-shop-img">
										<img alt="" src="assets/img/icon-img/3.png">
									</div>
									<div class="single-shop-content">
										<h5>건강한 무료 배송</h5>
										<p>배송비에 허덕이지 말자</p>
									</div>
								</div>
								<div class="single-shop-services mb-30">
									<div class="single-shop-img">
										<img alt="" src="assets/img/icon-img/4.png">
									</div>
									<div class="single-shop-content">
<!-- 										<h5>고객 문의</h5> -->
										<p>고객 문의 평일 24시간이지만 <br>담당자도 쉬어야지</p>
									</div>
								</div>
								<div class="single-shop-services mb-30">
									<div class="single-shop-img">
										<img alt="" src="assets/img/icon-img/5.png">
									</div>
									<div class="single-shop-content">
										<h5>옆 사이트보다 싸요</h5>
										<p>확인해보진 않았어</p>
									</div>
								</div>
								<div class="single-shop-services mb-30">
									<div class="single-shop-img">
										<img alt="" src="assets/img/icon-img/6.png">
									</div>
									<div class="single-shop-content">
										<h5>MEMBER DISCOUNT</h5>
										<p>Onevery order over $150</p>
									</div>
								</div>
								<div class="single-shop-services mb-30">
									<div class="single-shop-img">
										<img alt="" src="assets/img/icon-img/mainheart.png">
									</div>
									<div class="single-shop-content">
										<h5>신선은 생명</h5>
										<p>너는 여기서 사먹어</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 하단 목록1 END -->

				<!-- 하단 목록2(인형 3개) -->
				<div class="banner-area pt-70 pb-100">
					<div class="single-banner5">
						<img alt="" src="assets/img/banner/16.jpg">
						<div class="banner-content-5">
							<h3>Wooden Toys</h3>
							<h4>Best Deal &amp; Discounts</h4>
							<a href="shop-grid-view-sidebar.html">shop now</a>
						</div>
					</div>
					<div class="single-banner5 toy-mrg">
						<img alt="" src="assets/img/banner/17.jpg">
						<div class="banner-content-5">
							<h3>Teddy Bears</h3>
							<h4>Best Deal &amp; Discounts</h4>
							<a href="shop-grid-view-sidebar.html">shop now</a>
						</div>
					</div>
					<div class="single-banner5">
						<img alt="" src="assets/img/banner/18.jpg">
						<div class="banner-content-5">
							<h3>Electric Toys</h3>
							<h4>Best Deal &amp; Discounts</h4>
							<a href="shop-grid-view-sidebar.html">shop now</a>
						</div>
					</div>
				</div>
				<!-- 하단 목록2 END -->

				<!-- 하단 목록3 best toy -->
				<div class="product-collection-area">
					<div class="toy-product container-fluid p-0">
						<div class="section-title text-center mb-55 section-title-2">
							<h2>인기 상품</h2>
							<p>최근 고객님들께서 구매한 인기 상품들을 모아보았습니다.</p>
						</div>
						<div class="row">
							<div class="col-md-6 col-lg-4 col-xl-3 col-12">
								<div class="single-product mb-45">
									<div class="product-img">
										<a href="#"><img alt=""
											src="assets/img/product/toys/1.jpg"></a> <span>sale</span>
										<div class="product-action">
											<a title="Wishlist" class="animate-left" href="#"><i
												class="ion-ios-heart-outline"></i></a> <a title="Quick View"
												class="animate-right" href="#" data-toggle="modal"
												data-target="#exampleModal"><i
												class="ion-ios-eye-outline"></i></a>
										</div>
									</div>
									<div class="product-content">
										<div class="product-title-price">
											<div class="product-title">
												<h4>
													<a href="product-details-6.html">WOODEN FURNITURE</a>
												</h4>
											</div>
											<div class="product-price">
												<span>$110.00</span>
											</div>
										</div>
										<div class="product-cart-categori">
											<div class="product-cart">
												<span>toys</span>
											</div>
											<div class="product-categori">
												<a href="#"><i class="ion-bag"></i> Add to cart</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-4 col-xl-3 col-12">
								<div class="single-product mb-45">
									<div class="product-img">
										<a href="#"><img alt=""
											src="assets/img/product/toys/2.jpg"></a>
										<div class="product-action">
											<a title="Wishlist" class="animate-left" href="#"><i
												class="ion-ios-heart-outline"></i></a> <a title="Quick View"
												class="animate-right" href="#" data-toggle="modal"
												data-target="#exampleModal"><i
												class="ion-ios-eye-outline"></i></a>
										</div>
									</div>
									<div class="product-content">
										<div class="product-title-price">
											<div class="product-title">
												<h4>
													<a href="product-details-6.html">WOODEN FURNITURE</a>
												</h4>
											</div>
											<div class="product-price">
												<span>$120.00</span>
											</div>
										</div>
										<div class="product-cart-categori">
											<div class="product-cart">
												<span>toys</span>
											</div>
											<div class="product-categori">
												<a href="#"><i class="ion-bag"></i> Add to cart</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-4 col-xl-3 col-12">
								<div class="single-product mb-45">
									<div class="product-img">
										<a href="#"><img alt=""
											src="assets/img/product/toys/3.jpg"></a> <span>sale</span>
										<div class="product-action">
											<a title="Wishlist" class="animate-left" href="#"><i
												class="ion-ios-heart-outline"></i></a> <a title="Quick View"
												class="animate-right" href="#" data-toggle="modal"
												data-target="#exampleModal"><i
												class="ion-ios-eye-outline"></i></a>
										</div>
									</div>
									<div class="product-content">
										<div class="product-title-price">
											<div class="product-title">
												<h4>
													<a href="product-details-6.html">HANDCRAFTED MUG</a>
												</h4>
											</div>
											<div class="product-price">
												<span>$130.00</span>
											</div>
										</div>
										<div class="product-cart-categori">
											<div class="product-cart">
												<span>toys</span>
											</div>
											<div class="product-categori">
												<a href="#"><i class="ion-bag"></i> Add to cart</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-4 col-xl-3 col-12">
								<div class="single-product mb-45">
									<div class="product-img">
										<a href="#"><img alt=""
											src="assets/img/product/toys/4.jpg"></a>
										<div class="product-action">
											<a title="Wishlist" class="animate-left" href="#"><i
												class="ion-ios-heart-outline"></i></a> <a title="Quick View"
												class="animate-right" href="#" data-toggle="modal"
												data-target="#exampleModal"><i
												class="ion-ios-eye-outline"></i></a>
										</div>
									</div>
									<div class="product-content">
										<div class="product-title-price">
											<div class="product-title">
												<h4>
													<a href="product-details-6.html">HANDCRAFTED MUG</a>
												</h4>
											</div>
											<div class="product-price">
												<span>$140.00</span>
											</div>
										</div>
										<div class="product-cart-categori">
											<div class="product-cart">
												<span>toys</span>
											</div>
											<div class="product-categori">
												<a href="#"><i class="ion-bag"></i> Add to cart</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-4 col-xl-3 col-12">
								<div class="single-product mb-45">
									<div class="product-img">
										<a href="#"><img alt=""
											src="assets/img/product/toys/5.jpg"></a>
										<div class="product-action">
											<a title="Wishlist" class="animate-left" href="#"><i
												class="ion-ios-heart-outline"></i></a> <a title="Quick View"
												class="animate-right" href="#" data-toggle="modal"
												data-target="#exampleModal"><i
												class="ion-ios-eye-outline"></i></a>
										</div>
									</div>
									<div class="product-content">
										<div class="product-title-price">
											<div class="product-title">
												<h4>
													<a href="product-details-6.html">HANDCRAFTED MUG</a>
												</h4>
											</div>
											<div class="product-price">
												<span>$150.00</span>
											</div>
										</div>
										<div class="product-cart-categori">
											<div class="product-cart">
												<span>toys</span>
											</div>
											<div class="product-categori">
												<a href="#"><i class="ion-bag"></i> Add to cart</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-4 col-xl-3 col-12">
								<div class="single-product mb-45">
									<div class="product-img">
										<a href="#"><img alt=""
											src="assets/img/product/toys/6.jpg"></a> <span>sale</span>
										<div class="product-action">
											<a title="Wishlist" class="animate-left" href="#"><i
												class="ion-ios-heart-outline"></i></a> <a title="Quick View"
												class="animate-right" href="#" data-toggle="modal"
												data-target="#exampleModal"><i
												class="ion-ios-eye-outline"></i></a>
										</div>
									</div>
									<div class="product-content">
										<div class="product-title-price">
											<div class="product-title">
												<h4>
													<a href="product-details-6.html">WOODEN FURNITURE</a>
												</h4>
											</div>
											<div class="product-price">
												<span>$160.00</span>
											</div>
										</div>
										<div class="product-cart-categori">
											<div class="product-cart">
												<span>toys</span>
											</div>
											<div class="product-categori">
												<a href="#"><i class="ion-bag"></i> Add to cart</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-4 col-xl-3 col-12">
								<div class="single-product mb-45">
									<div class="product-img">
										<a href="#"><img alt=""
											src="assets/img/product/toys/7.jpg"></a>
										<div class="product-action">
											<a title="Wishlist" class="animate-left" href="#"><i
												class="ion-ios-heart-outline"></i></a> <a title="Quick View"
												class="animate-right" href="#" data-toggle="modal"
												data-target="#exampleModal"><i
												class="ion-ios-eye-outline"></i></a>
										</div>
									</div>
									<div class="product-content">
										<div class="product-title-price">
											<div class="product-title">
												<h4>
													<a href="product-details-6.html">WOODEN FURNITURE</a>
												</h4>
											</div>
											<div class="product-price">
												<span>$170.00</span>
											</div>
										</div>
										<div class="product-cart-categori">
											<div class="product-cart">
												<span>toys</span>
											</div>
											<div class="product-categori">
												<a href="#"><i class="ion-bag"></i> Add to cart</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-4 col-xl-3 col-12">
								<div class="single-product mb-45">
									<div class="product-img">
										<a href="#"><img alt=""
											src="assets/img/product/toys/8.jpg"></a> <span>sale</span>
										<div class="product-action">
											<a title="Wishlist" class="animate-left" href="#"><i
												class="ion-ios-heart-outline"></i></a> <a title="Quick View"
												class="animate-right" href="#" data-toggle="modal"
												data-target="#exampleModal"><i
												class="ion-ios-eye-outline"></i></a>
										</div>
									</div>
									<div class="product-content">
										<div class="product-title-price">
											<div class="product-title">
												<h4>
													<a href="product-details-6.html">WOODEN FURNITURE</a>
												</h4>
											</div>
											<div class="product-price">
												<span>$180.00</span>
											</div>
										</div>
										<div class="product-cart-categori">
											<div class="product-cart">
												<span>toys</span>
											</div>
											<div class="product-categori">
												<a href="#"><i class="ion-bag"></i> Add to cart</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="load-more text-center">
									<a class="btn-hover load-more-style"
										href="shop-grid-view-sidebar.html"><i class="ion-refresh"></i>
										Load More</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 하단 목록3 END -->

				<!-- 하단 목록4 (배너 아이콘) -->
				<div class="brand-logo pt-100 pb-100">
					<div class="container-fluid p-0">
						<div class="brand-logo-active owl-carousel owl-loaded owl-drag">
							<div class="owl-stage-outer">
								<div class="owl-stage"
									style="transition: all; width: 2120px; transform: translate3d(-578px, 0px, 0px);">
									<div class="owl-item cloned" style="width: 192.66px;">
										<div class="single-logo">
											<img alt="" src="assets/img/brand-logo/3.png">
										</div>
									</div>
									<div class="owl-item cloned" style="width: 192.66px;">
										<div class="single-logo">
											<img alt="" src="assets/img/brand-logo/4.png">
										</div>
									</div>
									<div class="owl-item cloned" style="width: 192.66px;">
										<div class="single-logo">
											<img alt="" src="assets/img/brand-logo/5.png">
										</div>
									</div>
									<div class="owl-item active" style="width: 192.66px;">
										<div class="single-logo">
											<img alt="" src="assets/img/brand-logo/1.png">
										</div>
									</div>
									<div class="owl-item active" style="width: 192.66px;">
										<div class="single-logo">
											<img alt="" src="assets/img/brand-logo/2.png">
										</div>
									</div>
									<div class="owl-item active" style="width: 192.66px;">
										<div class="single-logo">
											<img alt="" src="assets/img/brand-logo/3.png">
										</div>
									</div>
									<div class="owl-item" style="width: 192.66px;">
										<div class="single-logo">
											<img alt="" src="assets/img/brand-logo/4.png">
										</div>
									</div>
									<div class="owl-item" style="width: 192.66px;">
										<div class="single-logo">
											<img alt="" src="assets/img/brand-logo/5.png">
										</div>
									</div>
									<div class="owl-item cloned" style="width: 192.66px;">
										<div class="single-logo">
											<img alt="" src="assets/img/brand-logo/1.png">
										</div>
									</div>
									<div class="owl-item cloned" style="width: 192.66px;">
										<div class="single-logo">
											<img alt="" src="assets/img/brand-logo/2.png">
										</div>
									</div>
									<div class="owl-item cloned" style="width: 192.66px;">
										<div class="single-logo">
											<img alt="" src="assets/img/brand-logo/3.png">
										</div>
									</div>
								</div>
							</div>
							<div class="owl-nav disabled">
								<div class="owl-prev">prev</div>
								<div class="owl-next">next</div>
							</div>
							<div class="owl-dots">
								<div class="owl-dot active">
									<span></span>
								</div>
								<div class="owl-dot">
									<span></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 하단 목록 4 END -->
			<!-- footer -->
			<footer class="footer-area pt-100 pb-95 gray-bg-5 toys-footer"
				style="background-image: url(assets/img/bg/1.png)">
				<div class="container-fluid footer-plr">
					<div class="row">
						<div class="col-xl-3 col-lg-5 col-md-5 col-12">
							<div class="footer-widget">
								<div class="footer-widget-l-content">
									<h4>20 Years Experience</h4>
									<ul>
										<li><a href="#"><i class="ion-social-twitter"></i></a></li>
										<li><a href="#"><i class="ion-social-tumblr"></i></a></li>
										<li><a href="#"><i class="ion-social-facebook"></i></a></li>
										<li><a href="#"><i
												class="ion-social-instagram-outline"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-xl-6 col-lg-7 col-md-7 col-12">
							<div class="footer-widget">
								<div class="footer-widget-m-content text-center">
									<div class="footer-logo">
										<a href="#"><img alt="" src="assets/img/logo/logo.png"></a>
									</div>
									<div class="footer-nav">
										<nav>
											<ul>
												<li><a href="index.html">home</a></li>
												<li><a href="about-us.html">about us</a></li>
												<li><a href="shop-grid-view-sidebar.html">shop </a></li>
												<li><a href="blog-left-sidebar.html"> blog </a></li>
												<li><a href="#">pages </a></li>
											</ul>
										</nav>
									</div>
									<p>
										Copyright © <a href="https://hastech.company/">HasTech</a>
										2018 . All Right Reserved.
									</p>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-12 col-md-12 col-12">
							<div class="footer-widget">
								<div class="footer-widget-r-content f-right">
									<ul>
										<li><span>Phone :</span> +00 123 54 0056</li>
										<li><span>Email : </span> <a href="#">neha@gmail.com</a></li>
										<li><span>Address :</span> Dhaka Bangladesh</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</footer>
			<!-- footer -->
		</div>
		<!-- sidebar-wrapper END -->

		<!-- 오른쪽 장바구니 사이드바 -->
		<div class="sidebar-cart onepage-sidebar-area">
			<div class="wrap-sidebar">
				<!-- 전체 내용 -->
				<div class="sidebar-cart-all">
					<!-- 닫기 버튼 -->
					<div class="sidebar-cart-icon">
						<button class="op-sidebar-close">
							<span class="ion-android-close"></span>
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 장바구니 오른쪽 메뉴바 END -->

		
		<!-- 오른쪽 사이드 메뉴바 목록 END -->
	</div>

	<!--     modal -->
	<!--     <div tabindex="-1" class="modal fade" id="exampleModal" role="dialog" aria-hidden="true"> -->
	<!--         <button class="close" aria-label="Close" type="button" data-dismiss="modal"> -->
	<!--             <span class="ion-android-close" aria-hidden="true"></span> -->
	<!--         </button> -->
	<!--         <div class="modal-dialog" role="document"> -->
	<!--             <div class="modal-content"> -->

	<!--                 <div class="modal-body"> -->
	<!--                     <div class="qwick-view-left"> -->
	<!--                         <div class="quick-view-learg-img"> -->
	<!--                             <div class="quick-view-tab-content tab-content"> -->
	<!--                                 <div class="tab-pane active show fade" id="modal1" role="tabpanel"> -->
	<!--                                     <img alt="" src="assets/img/quick-view/l1.jpg"> -->
	<!--                                 </div> -->
	<!--                                 <div class="tab-pane fade" id="modal2" role="tabpanel"> -->
	<!--                                     <img alt="" src="assets/img/quick-view/l2.jpg"> -->
	<!--                                 </div> -->
	<!--                                 <div class="tab-pane fade" id="modal3" role="tabpanel"> -->
	<!--                                     <img alt="" src="assets/img/quick-view/l3.jpg"> -->
	<!--                                 </div> -->
	<!--                             </div> -->
	<!--                         </div> -->
	<!--                         <div class="quick-view-list nav" role="tablist"> -->
	<!--                             <a class="active" role="tab" aria-selected="true" href="#modal1" data-toggle="tab"> -->
	<!--                                 <img alt="" src="assets/img/quick-view/s1.jpg"> -->
	<!--                             </a> -->
	<!--                             <a role="tab" aria-selected="false" href="#modal2" data-toggle="tab"> -->
	<!--                                 <img alt="" src="assets/img/quick-view/s2.jpg"> -->
	<!--                             </a> -->
	<!--                             <a role="tab" aria-selected="false" href="#modal3" data-toggle="tab"> -->
	<!--                                 <img alt="" src="assets/img/quick-view/s3.jpg"> -->
	<!--                             </a> -->
	<!--                         </div> -->
	<!--                     </div> -->
	<!--                     <div class="qwick-view-right"> -->
	<!--                         <div class="qwick-view-content"> -->
	<!--                             <h3>Handcrafted Supper Mug</h3> -->
	<!--                             <div class="price"> -->
	<!--                                 <span class="new">$90.00</span> -->
	<!--                                 <span class="old">$120.00  </span> -->
	<!--                             </div> -->
	<!--                             <div class="rating-number"> -->
	<!--                                 <div class="quick-view-rating"> -->
	<!--                                     <i class="ion-ios-star red-star"></i> -->
	<!--                                     <i class="ion-ios-star red-star"></i> -->
	<!--                                     <i class="ion-android-star-outline"></i> -->
	<!--                                     <i class="ion-android-star-outline"></i> -->
	<!--                                     <i class="ion-android-star-outline"></i> -->
	<!--                                 </div> -->
	<!--                                 <div class="quick-view-number"> -->
	<!--                                     <span>2 Ratting (S)</span> -->
	<!--                                 </div> -->
	<!--                             </div> -->
	<!--                             <p>Lorem ipsum dolor sit amet, consectetur adip elit, sed do tempor incididun ut labore et dolore magna aliqua. Ut enim ad mi , quis nostrud veniam exercitation .</p> -->
	<!--                             <div class="quick-view-select"> -->
	<!--                                 <div class="select-option-part"> -->
	<!--                                     <label>Size*</label> -->
	<!--                                     <select class="select"> -->
	<!--                                         <option value="">- Please Select -</option> -->
	<!--                                         <option value="">900</option> -->
	<!--                                         <option value="">700</option> -->
	<!--                                     </select> -->
	<!--                                 </div> -->
	<!--                                 <div class="select-option-part"> -->
	<!--                                     <label>Color*</label> -->
	<!--                                     <select class="select"> -->
	<!--                                         <option value="">- Please Select -</option> -->
	<!--                                         <option value="">orange</option> -->
	<!--                                         <option value="">pink</option> -->
	<!--                                         <option value="">yellow</option> -->
	<!--                                     </select> -->
	<!--                                 </div> -->
	<!--                             </div> -->
	<!--                             <div class="quickview-plus-minus"> -->