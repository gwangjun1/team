<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="no-js" lang="zxx">
    <head>
    <style type="text/css">
   div.radio-wrap {
  display: inline-flex !important;
  align-items: center  !important;
}

input[type='radio'],
input[type='radio']:checked {
  appearance: none  !important;
  width: 0.9rem  !important;
  height: 0.9rem  !important;
  border-radius: 100%  !important;
  margin-right: 0.1rem  !important;
}
   
   </style>
    <script src="../assets/js/jquery-1.12.4"></script>
    <script src="../assets/js/vendor/jquery-1.12.0.min.js"></script>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>food market</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="${path }/food_market/">
		
		<!-- all css here -->
		
        <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="../assets/css/magnific-popup.css">
        <link rel="stylesheet" href="../assets/css/animate.css">
        <link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="../assets/css/slinky.min.css">
        <link rel="stylesheet" href="../assets/css/meanmenu.min.css">
        <link rel="stylesheet" href="../assets/css/jquery-ui.css">
        <link rel="stylesheet" href="../assets/css/slick.css">
        <link rel="stylesheet" href="../assets/css/ionicons.min.css">
        <link rel="stylesheet" href="../assets/css/bundle.css">
        <link rel="stylesheet" href="../assets/css/style.css">
        <link rel="stylesheet" href="../assets/css/responsive.css">
        <script src="../assets/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <!-- header start -->
        <div class="wrapper">
            <!-- Newsletter Popup Start -->
<!--             <div class="popup_wrapper hidden-sm hidden-xs"> -->
<!--                 <div class="test"> -->
<!--                     <span class="popup_off">Close</span> -->
<!--                     <div class="subscribe_area text-center"> -->
<!--                         <h2>Newsletter</h2> -->
<!--                         <p>Subscribe to the Neha mailing list to receive updates on new arrivals, special offers and other discount information.</p> -->
<!--                         <div id="mc_embed_signup" class="subscribe-bottom"> -->
<!--                             <form action="http://devitems.us11.list-manage.com/subscribe/post?u=6bbb9b6f5827bd842d9640c82&amp;id=05d85f18ef" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate> -->
<!--                                 <div id="mc_embed_signup_scroll" class="mc-form"> -->
<!--                                     <input type="email" value="" name="EMAIL" class="email" placeholder="Enter your email address" required> -->
<!--                                     real people should not fill this in and expect good things - do not remove this or risk form bot signups -->
<!--                                     <div class="mc-news" aria-hidden="true"><input type="text" name="b_6bbb9b6f5827bd842d9640c82_05d85f18ef" tabindex="-1" value=""></div> -->
<!--                                     <div class="clear-2"><input type="submit" value="subscribe" name="subscribe" id="mc-embedded-subscribe" class="button"></div> -->
<!--                                 </div> -->
<!--                             </form> -->
<!--                         </div> -->
<!--                         <div class="subscribe-bottom mt-15"> -->
<!--                             <input type="checkbox" id="newsletter-permission"> -->
<!--                             <label for="newsletter-permission">Don't show this popup again</label> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
            <!-- Newsletter Popup End -->
            <header class="pl-155 pr-155 intelligent-header">
                <div class="header-area header-area-2">
                    <div class="container-fluid p-0">
                        <div class="row no-gutters">
                            <div class="col-lg-3 col-md-6 col-6">
                                <div class="logo">
                                    <a href="${path }/food_market/"><img src="../assets/img/logo/logo.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="col-lg-6 menu-none-block menu-center">
                                <div class="main-menu">
                                    <nav>
                                       <ul>
                                            <li><a href="/food_market">home</a></li>
                                            
                                            
                                            <li><a href="/food_market/product/productList">상품</a>
                                          		<ul class="dropdown">
                                          			<li><a href="${path }/food_market/product/productList">전체 상품</a></li>
                                                    <li><a href="${path }/food_market/product/productList?findType=과일">과일</a></li>
                                                    <li><a href="${path }/food_market/product/productList?findType=채소">채소</a></li>
                                                    <li><a href="${path }/food_market/product/productList?findType=쌀">쌀</a></li>
                                                    <li><a href="${path }/food_market/product/productList?findType=정육">정육</a></li>
                                                    <li><a href="${path }/food_market/product/productList?findType=수산">수산</a></li>
<%--                                                     <li><a href="${path }/food_market/product/productSellerList">판매자 페이지</a></li> --%>
                                                </ul>
                                            </li>
                                            <li><a href="/food_market/cart/list">마이 페이지</a>
                                                <ul class="dropdown">
                                                    
                                                    <li><a href="/food_market/cart/list">장바구니</a></li>
                                                    <li><a href="/food_market/orders/orderlist">주문내역</a></li>
                                                   
                                                </ul>
                                            </li>
                                            <li><a href="#">고객센터</a>
                                                <ul class="dropdown">
                                                    <li><a href="#">자주찾는질문 </a></li>
                                                    <li><a href="#">고객문의</a></li>
                                                </ul>
                                            </li>
                                            
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-6">
                                <div class="header-search-cart">
                                    <div class="header-search common-style">
<!--                                         <button class="sidebar-trigger-search"> -->
<!--                                             <span class="ion-ios-search-strong"></span> -->
<!--                                         </button> -->
                                    </div>
                                    <div class="header-cart common-style">
<!--                                         <button class="sidebar-trigger"> -->
<!--                                             <span class="ion-bag"></span> -->
<!--                                         </button> -->
                                    </div>
                                    <div class="header-sidebar common-style">
<!--                                         <button class="header-navbar-active"> -->
<!--                                             <span class="ion-navicon"></span> -->
<!--                                         </button> -->
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </header>
            <div class="header-space"></div>
            <!-- header end -->