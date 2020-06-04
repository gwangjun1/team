<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Neha - Minimalist eCommerce HTML5 Template </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.png">
		
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
        <script src="../assets/js/vendor/modernizr-2.8.3.min.js"></script>
        
        <style>
        .breadcrumb-content h2{color:#F5DCC9;}
        .breadcrumb-content li a{color:white;}
        </style>
    </head>
    <body>

        <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <!-- header start -->
        <div class="wrapper">
		<jsp:include page="../inc/header.jsp"></jsp:include>
            
            <!-- header end -->
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
                                        <a href="#"><img src="../assets/img/cart/1.jpg" alt=""></a>
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
                                        <a href="#"><img src="../assets/img/cart/2.jpg" alt=""></a>
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
                                        <a href="#"><img src="../assets/img/cart/3.jpg" alt=""></a>
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
                                <h4>Language: <span><img src="../assets/img/icon-img/english.png" alt=""> English </span></h4>
                            </div>
                            <div class="cur-lang-acc-dropdown">
                                <ul>
                                    <li><a href="#"><img src="../assets/img/icon-img/english.png" alt=""> English </a></li>
                                    <li><a href="#"><img src="../assets/img/icon-img/es.png" alt=""> spanish </a></li>
                                    <li><a href="#"><img src="../assets/img/icon-img/fr.png" alt=""> french </a></li>
                                    <li><a href="#"><img src="../assets/img/icon-img/ge.png" alt=""> german </a></li>
                                    <li><a href="#"><img src="../assets/img/icon-img/es.png" alt=""> spanish </a></li>
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
            <!-- Login 배너 img/font -->
            <div class="breadcrumb-area pt-205 pb-210" style="background-image: url(../assets/img/bg/loginimg.jpg)">
                <div class="container">
                    <div class="breadcrumb-content">
                        <h2>Login</h2>
                        <ul>
                            <li><a href="/food_market_my/">HOME</a></li>
                            <li><a href="../member/join.do">JOIN</a> </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- login-area start -->
            <div class="register-area ptb-100">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-12 col-lg-6 col-xl-6 ml-auto mr-auto">
                            <div class="login">
                                <div class="login-form-container">
                                    <div class="login-form">
                                        <form method="post">
                                            <input type="text" name="mb_id" placeholder="ID">
                                            <input type="password" name="mb_pw" placeholder="Password">
                                            <c:if test="${msg == 'loginCancel' }"><span style="color:red;">회원정보가 일치하지 않습니다.</span></c:if>
                                            <div class="button-box">
                                                <div class="login-toggle-btn">
                                               		<a href="update.do">비밀번호 찾기 </a>
                                               		&nbsp;<a>|</a>&nbsp;
                                                	<a href="join.do"> 회원가입</a>
                                                </div>
                                                <button type="submit" class="default-btn floatright">로그인</button>
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
            <footer class="footer-area gray-bg pt-100 pb-95">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-5 col-12">
                            <div class="footer-widget">
                                <div class="footer-widget-l-content">
                                    <h4>20 Years Experience</h4>
                                    <ul>
                                        <li><a href="#"><i class="ion-social-twitter"></i></a></li> 
                                        <li><a href="#"><i class="ion-social-tumblr"></i></a></li>
                                        <li><a href="#"><i class="ion-social-facebook"></i></a></li> 
                                        <li><a href="#"><i class="ion-social-instagram-outline"></i></a></li> 
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-7 col-12">
                            <div class="footer-widget">
                                <div class="footer-widget-m-content text-center">
                                    <div class="footer-logo">
                                        <a href="#"><img src="../assets/img/logo/logo.png" alt=""></a>
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
                                    <p>Copyright <i class="fa fa-copyright"></i> 2018 <a href="https://freethemescloud.com/" target="_blank" >Free Themes Cloud.</a> All rights reserved. </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-12 col-12">
                            <div class="footer-widget f-right">
                                <div class="footer-widget-r-content">
                                    <ul>
                                        <li><span>Phone :</span> +8210 9123 1207</li>
                                        <li><span>Email : </span> <a href="#">wtissue0926@gmail.com</a></li>
                                        <li><span>Address :</span> ITWILL 부산교육센터 1강의장</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
		<!-- all js here -->
        <script src="../assets/js/vendor/jquery-1.12.0.min.js"></script>
        <script src="../assets/js/popper.js"></script>
        <script src="../assets/js/bootstrap.min.js"></script>
        <script src="../assets/js/jquery.magnific-popup.min.js"></script>
        <script src="../assets/js/isotope.pkgd.min.js"></script>
        <script src="../assets/js/imagesloaded.pkgd.min.js"></script>
        <script src="../assets/js/jquery.counterup.min.js"></script>
        <script src="../assets/js/waypoints.min.js"></script>
        <script src="../assets/js/slinky.min.js"></script>
        <script src="../assets/js/ajax-mail.js"></script>
        <script src="../assets/js/owl.carousel.min.js"></script>
        <script src="../assets/js/plugins.js"></script>
        <script type="text/javascript">
            // grab an element
            var myElement = document.querySelector(".intelligent-header");
            // construct an instance of Headroom, passing the element
            var headroom  = new Headroom(myElement);
            // initialise
            headroom.init(); 
        </script>
        <script src="../assets/js/main.js"></script>
    </body>
</html>
