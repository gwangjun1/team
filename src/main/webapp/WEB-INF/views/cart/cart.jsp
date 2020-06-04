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
    
<c:choose>
    <c:when test="${mb_id == null}">

        장바구니가 비었습니다.
    </c:when>
   </c:choose>
 <jsp:include page="../inc/header.jsp"></jsp:include>

            <div class="breadcrumb-area pt-205 pb-210 bg-img" style= "background-image: url(../pd_img_upload/전체상품.jpg)">
                <div class="container">
                    <div class="breadcrumb-content">
                        <h2>cart page</h2>
                        <ul>
                            <li><a href="/food_market/">home</a></li>
                            <li> cart </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- shopping-cart-area start -->
            <div class="cart-main-area pt-95 pb-100">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <h1 class="cart-heading">Cart</h1>
                            <form id="cart1" name="cart1" method="post">
                            
		   <input type="checkbox" name="aa" id="allCheck" style="width: 5%; height: 30px;"/>
		   <label for="allCheck">모두 선택</label> 
		   
		   <script>
		$("#allCheck").click(function(){
		 var chk = $("#allCheck").prop("checked");
		 if(chk) {
		  $(".chBox").prop("checked", true);	
		 } else {
		  $(".chBox").prop("checked", false);
		 }
		});
		</script>
		
                                <div class="table-content table-responsive">
<!--                                     <input type="checkbox1" name="allCheck" id="allCheck" /><label for="allCheck">모두 선택</label>  -->
                                    <table>
                                        <thead>
                                            <tr>
                                                <th class="product-price">간편이미지</th>
                                                <th class="product-name">상품명</th>
                                                <th class="product-price">상품가격</th>
                                                <th class="product-quantity">수량</th>
                                                <th class="product-subtotal">총금액</th>
                                                <th class="product-name">선택</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="row" items="${map.list}" varStatus="i">
                                            <tr>
                                                <td class="product-thumbnail">
                                                <a
											href="../product/productDetail?pd_idx=${row.pd_idx }">
                                                    <img src="../pd_img_upload/${row.pd_img } " alt="${row.pd_img }" width = "200" height = "150">
                                                    </a>
                                                </td>
                                                <td class="product-name">
                                                <a href="#">
                                                <input type="hidden" name="pd_name" value="${row.pd_name}">${row.pd_name}
                                                </a>
                                                </td>
                                                <td class="product-price">
                                                <span class="amount">
                                                <input type="hidden" name="price" value="${row.price}">
                                                ${row.price}
                                                </span>
                                                </td>
                                                <td class="product-quantity">
                                                    <input type="number"  name="amount" min="1" value="${row.amount }">
                    								<input type="hidden" name="pd_idx" value="${row.pd_idx }">
                                                <td class="product-subtotal">${row.money}</td>
                                                
                                                <td>
                                                <div class="checkBox">
												   <input type="checkbox" name="chBox" class="chBox" data-cart_idx="${row.cart_idx}" />
												<script>
													   	$(".chBox").click(function () {
															$("#allCheck").prop("checked" , false);
														});
													   	
												</script>
												  </div>
												  </td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
        
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="coupon-all">
                                            <div class="coupon">
										    <input class="selectDelete_btn"  value="선택 삭제" type="button">
<!-- 										    <button type="button" class="selectDelete_btn">선택 삭제</button> -->
										    <input class="button" name="apply_coupon" value="수량 변경" type="submit" onclick="cart1.action='../cart/update';"/>
                                            </div>
                                            <div class="coupon2">
<!--                                                 <button type="button" class="order_btn">상품 주문</button> -->
												<input type="button" value="상품목록" onclick ="location.href='../product/productList'">
                                                <input class="preorder_btn" value="상품주문" type="button">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5 ml-auto">
                                        <div class="cart-page-total">
                                            <h2>장바구니 합계</h2>
                                            <ul>
                                                <li>주문금액<span>${map.cartmoney}</span></li>
                                                <li>배송료<span>${map.delivery}</span></li>
                                                <li>총금액<span>${map.allsum}</span></li>
                                            </ul>
<!--                                             <a href="#">Proceed to checkout</a> -->
                                        </div>
                                        
                                    </div>
                                </div>
                       </form>
                        </div>
                        
                      </div>
                  </div>
            </div>
<script>
 $(".preorder_btn").click(function(){
	 
  var confirm_val = confirm("선택상품을 주문하시겠습니까?");
  
  if(confirm_val) {
   var checkArr = new Array();
   
   $("input[class='chBox']:checked").each(function(){
    checkArr.push($(this).attr("data-cart_idx"));
   });
    
   $.ajax({
    url : "../orders/preinsert",
    type : "post",
    data : { chbox : checkArr },
    success : function(data){
    	alert("주문 페이지 바로가기");
		location.href="../orders/prelist";
    },
    error : function(){
        alert("주문 실패");
       }
   });
  } 
 });
</script>

<script>
 $(".selectDelete_btn").click(function(){
  var confirm_val = confirm("정말 삭제하시겠습니까?");
  
  if(confirm_val) {
   var checkArr = new Array();
   
   $("input[class='chBox']:checked").each(function(){
    checkArr.push($(this).attr("data-cart_idx"));
   });
    
   $.ajax({
    url : "../cart/delete",
    type : "post",
    data : { chbox : checkArr },
    success : function(){
    	alert("삭제 완료");
    	location.href="../cart/list";
    },
    error : function(){
        alert("카트 담기 실패");
       }
   });
  } 
 });
</script>
                
			
            <!-- shopping-cart-area end -->
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
