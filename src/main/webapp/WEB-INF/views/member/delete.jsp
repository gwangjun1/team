<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <!-- all css here -->
        <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="../assets/css/magnific-popup.css">
        <link rel="stylesheet" href="../assets/css/animate.css">
        <link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="../assets/css/slinky.min.css">
        <link rel="stylesheet" href="../assets/css/meanmenu.min.css">
        <link rel="stylesheet" href="../assets/css/slick.css">
        <link rel="stylesheet" href="../assets/css/ionicons.min.css">
        <link rel="stylesheet" href="../assets/css/bundle.css">
        <link rel="stylesheet" href="../assets/css/style.css">
        <link rel="stylesheet" href="../assets/css/responsive.css">
</head>

<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<div class="wrapper">
<!-- header -->
<jsp:include page="../inc/header.jsp"></jsp:include>
<!-- header -->
<div class="header-space"></div>

<!-- sidebar-cart start -->
<div class="sidebar-cart onepage-sidebar-area">
    <div class="wrap-sidebar">
        <div class="sidebar-cart-all">
            <div class="sidebar-cart-icon">
                <button class="op-sidebar-close"><span class="ion-android-close"></span></button>
            </div>
            <div class="cart-content">
                <h3>Shopping Cart</h3>
                <ul>
                    <li class="single-product-cart">
                        <div class="cart-img">
                            <a href="#"><img src="assets/img/cart/1.jpg" alt=""></a>
                        </div>
                        <div class="cart-title">
                            <h3><a href="#"> HANDCRAFTED MUG</a></h3>
                            <span>1 x $140.00</span>
                        </div>
                        <div class="cart-delete">
                            <a href="#"><i class="ion-ios-trash-outline"></i></a>
                        </div>
                    </li>
                    <li class="single-product-cart">
                        <div class="cart-img">
                            <a href="#"><img src="assets/img/cart/2.jpg" alt=""></a>
                        </div>
                        <div class="cart-title">
                            <h3><a href="#"> HANDCRAFTED MUG</a></h3>
                            <span>1 x $140.00</span>
                        </div>
                        <div class="cart-delete">
                            <a href="#"><i class="ion-ios-trash-outline"></i></a>
                        </div>
                    </li>
                    <li class="single-product-cart">
                        <div class="cart-img">
                            <a href="#"><img src="assets/img/cart/3.jpg" alt=""></a>
                        </div>
                        <div class="cart-title">
                            <h3><a href="#"> HANDCRAFTED MUG</a></h3>
                            <span>1 x $140.00</span>
                        </div>
                        <div class="cart-delete">
                            <a href="#"><i class="ion-ios-trash-outline"></i></a>
                        </div>
                    </li>
                    <li class="single-product-cart">
                        <div class="cart-total">
                            <h4>Total : <span>$ 120</span></h4>
                        </div>
                    </li>
                    <li class="single-product-cart">
                        <div class="cart-checkout-btn">
                            <a class="btn-hover cart-btn-style" href="#">view cart</a>
                            <a class="no-mrg btn-hover cart-btn-style" href="#">checkout</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- main-search start -->
<div class="main-search-active">
    <div class="sidebar-search-icon">
        <button class="search-close"><span class="ion-android-close"></span></button>
    </div>
    <div class="sidebar-search-input">
        <form>
            <div class="form-search">
                <input id="search" class="input-text" value="" placeholder="Search Entire Store" type="search">
                <button>
                    <i class="ion-ios-search-strong"></i>
                </button>
            </div>
        </form>
    </div>
</div>
<!-- main-search start -->
<div class="cur-lang-acc-active">
    <div class="wrap-sidebar">
        <div class="sidebar-nav-icon">
            <button class="op-sidebar-close"><span class="ion-android-close"></span></button>
        </div>
        <div class="cur-lang-acc-all">
            <div class="single-currency-language-account">
                <div class="cur-lang-acc-title">
                    <h4>Currency: <span>USD </span></h4>
                </div>
                <div class="cur-lang-acc-dropdown">
                    <ul>
                        <li><a href="#">EUR  Euro</a></li>
                    </ul>
                </div>
            </div>
            <div class="single-currency-language-account">
                <div class="cur-lang-acc-title">
                    <h4>Language: <span><img src="assets/img/icon-img/english.png" alt=""> English </span></h4>
                </div>
                <div class="cur-lang-acc-dropdown">
                    <ul>
                        <li><a href="#"><img src="assets/img/icon-img/english.png" alt=""> English </a></li>
                        <li><a href="#"><img src="assets/img/icon-img/es.png" alt=""> spanish </a></li>
                        <li><a href="#"><img src="assets/img/icon-img/fr.png" alt=""> french </a></li>
                        <li><a href="#"><img src="assets/img/icon-img/ge.png" alt=""> german </a></li>
                        <li><a href="#"><img src="assets/img/icon-img/es.png" alt=""> spanish </a></li>
                    </ul>
                </div>
            </div>
            <div class="single-currency-language-account">
                <div class="cur-lang-acc-title">
                    <h4>My Account:</h4>
                </div>
                <div class="cur-lang-acc-dropdown">
                    <ul>
                        <li><a href="#">Compare Products </a></li>
                        <li><a href="#">Default welcome msg!</a></li>
                        <li><a href="register.html">register</a></li>
                        <li><a href="wishlist.html">My Wish List</a></li>
                        <li><a href="login.html">Sign In </a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="breadcrumb-area pt-205 pb-210" style="background-image: url(assets/img/bg/breadcrumb.jpg)">
    <div class="container">
        <div class="breadcrumb-content">
            <h2>회원 탈퇴</h2>
            <ul>
                <li><a href="/food_market">home</a></li>
                <li><a href="/food_market/member/info.do">Info</a></li>
                <li> 회원 탈퇴 </li>
            </ul>
        </div>
    </div>
</div>
<!-- login-area start -->
<div class="register-area ptb-100">
	<div style="float: left;padding-left: 100px;">
		<ul>
			<c:choose><c:when test="${seller == 1 }">
			<li style="padding-top:50px;"><a href="/food_market/product/productSellerList">내 상품 목록</a></li></c:when>
			<c:otherwise><li style="padding-top:50px;"><a href="/food_market/member/orderlist.do">주문 내역</a></li></c:otherwise></c:choose>
			<li style="padding-top:50px;"><a href="/food_market/member/info.do">회원정보 수정</a></li>
			<li style="padding-top:50px;"><a href="/food_market/member/modifyPw.do">비밀번호 번경</a></li>
			<li style="padding-top:50px;"><a href="/food_market/member/delete.do">회원 탈퇴</a></li>
		</ul>
	</div>
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-12 col-lg-6 col-xl-6 ml-auto mr-auto">
                <div class="login">
                    <div class="login-form-container">
                        <div class="login-form">
                            <form method="post" id="login">
                                <label>아이디</label><input type="text" name="mb_id" value="${sessionScope.mb_id }" readonly style="background-color: #e2e2e2; font-size:16px; font-weight:bold;">
                                <label>비밀번호</label><input type="password" name="mb_pw">
                                <div class="button-box">
                                    
                                    <input type="submit" value="탈퇴">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- login-area end -->
<!-- footer -->
<jsp:include page="../inc/footer.jsp"></jsp:include>
<!-- footer -->
</div>









<!-- all js here -->
<script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
<script src="assets/js/popper.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script src="assets/js/isotope.pkgd.min.js"></script>
<script src="assets/js/imagesloaded.pkgd.min.js"></script>
<script src="assets/js/jquery.counterup.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>
<script src="assets/js/slinky.min.js"></script>
<script src="assets/js/ajax-mail.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/plugins.js"></script>
<script type="text/javascript">
// grab an element
var myElement = document.querySelector(".intelligent-header");
// construct an instance of Headroom, passing the element
var headroom  = new Headroom(myElement);
// initialise
headroom.init(); 
</script>
 <script src="assets/js/main.js"></script>
</body>
</html>