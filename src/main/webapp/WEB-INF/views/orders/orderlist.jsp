<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html class="no-js" lang="">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Neha - Minimalist eCommerce HTML5 Template </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
		
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
         
    </head>
    <body>
    

 <jsp:include page="../inc/header.jsp"></jsp:include>

            <div class="breadcrumb-area pt-205 pb-210 bg-img" style= "background-image: url(../pd_img_upload/전체상품.jpg)">
                <div class="container">
                    <div class="breadcrumb-content">
                        <h2>주문 page</h2>
                        <ul>
                            <li><a href="/food_market/">home</a></li>
                            <li> 주문내역 </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- shopping-cart-area start -->
            <div class="cart-main-area pt-95 pb-100">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <h1 class="cart-heading">order</h1>


                                <div class="table-content table-responsive">
									<h2>주문내역</h2>
<!-- 									<form method="post" action="../orders/orderDetailList"> -->
                                    <table border="1">
                                        <thead>
                                            <tr>
                                                <th>주문번호 {od_num}</th>
                                                <th>주문일자{od_date}</th>
                                                <th>주문상품</th>
                                                <th>결제금액od_price</th>
                                                <th>주문상태od_trans</th>
                                             
                                            </tr>
                                        </thead>

<tbody>
								<c:forEach items="${odlist}" var="od" varStatus="i">
                                            <tr>	
                                                <td>
                                                ${od.od_num }
<%--                                                 <input type="hidden" name="od_num" value="${od.od_num }"> --%>
<%--                                                <input type="submit" name ="od_num" value="${od.od_num }"> --%>
                                               </td>
                                                <td>
                                                
                                                <a href="orderDetailList?od_num=${od.od_num }">
                                     	          ${od.od_date}
                                               </a>
                                                	
                                                	
                                                </td>
                                                <td >
                                                	주문상품
                                                </td>
                                                <td>
           											결제금액${od.od_total}	
                                                </td>
                                                <td>
           											주문상태	
                                                </td>
                            				</tr>
                                    </c:forEach>
                                        </tbody>
                                    </table>
<!--                                     </form> -->
                                </div>
                        </div>
                        
                      </div>
                  </div>
            </div>

 <jsp:include page="../inc/footer.jsp"></jsp:include>
		
		
		
		
		
		
		
		
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
