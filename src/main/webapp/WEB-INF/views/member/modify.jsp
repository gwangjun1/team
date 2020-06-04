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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- daum 도로명주소 찾기 api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	
	var mailRegx = /^[\w\.-]{1,64}@[\w\.-]{1,252}\.\w{2,4}$/;
	var mobileRegx = /^01([0|1|7|9]?)?([0-9]{3,4})?([0-9]{4})$/;
	
	$('#fr_modify').on('submit',function(){
		var inval_arr=[false,false,false];
		// 메일 유효성 체크
		if (mailRegx.test($('#mb_email').val())) {
			inval_arr[0]=true;
		}else{
			alert('메일을 확인해주세요.');
			return false;
		}
		// 번호 유효성 체크
		if (mobileRegx.test($('#mb_mobile').val())) {
			inval_arr[1]=true;
		}else{
			alert('번호를 확인해주세요.');
			return false;
		}
		// 주소 유효성 체크
		if ($('#mb_address1').val() != "") {
			inval_arr[2]=true;
		}else{
			alert('주소를 확인해주세요.');
			return false;
		}
		//전체 유효성 검사
		var validAll = true;
		for(var i = 0; i < inval_arr.length; i++){
			if(inval_arr[i] == false){
				validAll = false;
			}
		}
		if(validAll == true){ // 유효성 모두 통과
			alert('회원 정보 수정되었습니다.');
		}else{
			alert('회원 정보를 다시 입력해주세요');
		}
	});
	
	// 이메일 유효성
	$('#mb_email').blur(function() {
		if (mailRegx.test($('#mb_email').val())) {
			$('#email_check').text('');
		} else {
			$('#email_check').text('이메일 양식을 확인해주세요. Ex) id@mail.com');
			$('#email_check').css('color', 'red');
		}
	});
	
	// 휴대전화 유효성
	$('#mb_mobile').blur(function(){
		if(mobileRegx.test($('#mb_mobile').val())){
			$("#mobile_check").text('');
		} else {
			$('#mobile_check').text('휴대폰번호를 확인해주세요 ');
			$('#mobile_check').css('color', 'red');
		}
	});
	
	
});

</script>
<script>
// 주소찾기 api 클릭 이벤트
function execPostCode() {
	new daum.Postcode({
		oncomplete: function(data) {
		// 주소찾기 검색창에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
		// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
			var extraRoadAddr = ''; // 도로명 조합형 주소 변수
			// 법정동명이 있을 경우 추가한다. (법정리는 제외)
			// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
				extraRoadAddr += data.bname;
			}
			// 건물명이 있고, 공동주택일 경우 추가한다.
			if(data.buildingName !== '' && data.apartment === 'Y'){
				extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			}
			// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			if(extraRoadAddr !== ''){
				extraRoadAddr = ' (' + extraRoadAddr + ')';
			}
			// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
			if(fullRoadAddr !== ''){
				fullRoadAddr += extraRoadAddr;
			}
			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			console.log(data.zonecode);
			console.log(fullRoadAddr);
			/* var a = console.log(data.zonecode);
			var b = console.log(fullRoadAddr);
			if(a == null || b = null){
			alert("주소를 확인하세요.");
			return false;
			} */
			$("[name=mb_postcode]").val(data.zonecode);
			$("[name=mb_address]").val(fullRoadAddr);
			document.getElementById('mb_postcode').value = data.zonecode; //5자리 새우편번호 사용
			document.getElementById('mb_address').value = fullRoadAddr;
			//document.getElementById('mb_address1').value = data.jibunAddress;
		}
	}).open();
}
</script>
</head>

<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<!-- header start -->
<div class="wrapper">
 <!-- header -->
<jsp:include page="../inc/header.jsp"></jsp:include>
<!-- header -->
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
            <h2>Modify</h2>
            <ul>
                <li><a href="/food_market">home</a></li>
                <li> Modify </li>
            </ul>
           
        </div>
    </div>
</div>

<!-- register-area start -->
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
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-12 col-lg-6 col-xl-6 ml-auto mr-auto">
               
                <div class="login">
                    <div class="login-form-container">
                        <div class="login-form">
                   
			    <form action="modifyPro.do" method="post" id="fr_modify" role="form" >
				<!-- 아이디 -->
				<div>
					<label for="mb_id">아이디</label> 
					<input type="text" id="mb_id" name="mb_id" readonly="readonly" value="${memInfo.mb_id}" style="background-color: #e2e2e2; font-size:16px; font-weight:bold;">
				</div>
				<!-- 이름 -->
				<div >
					<label for="mb_name">이름</label> 
					<input type="text" id="mb_name" name="mb_name" readonly="readonly" value="${memInfo.mb_name}" style="background-color: #e2e2e2; font-size:16px; font-weight:bold;">
				</div>
				<!-- 생년월일 -->
				<div >
					<label for="mb_birth">생년월일</label> 
					<input type="text" id="mb_birth" name="mb_birth" readonly="readonly" value="${memInfo.mb_birth}" style="background-color: #e2e2e2; font-size:16px; font-weight:bold;">
				</div>
				<!-- 이메일 -->
				<div >
					<label for="mb_email">이메일 주소</label> 
					<input type="email" id="mb_email" name="mb_email" value="${memInfo.mb_email}">
					<div id="email_check"></div>
				</div>
				<!-- 휴대폰 -->
				<div >
					<label for="mb_mobile">휴대폰 번호('-'없이 번호만 입력해주세요)</label> 
					<input type="text" id="mb_mobile" name="mb_mobile" value="${memInfo.mb_mobile}">
					<div id="mobile_check"></div>
				</div>
				<!-- 주소(우편) -->
				<div >
				<label for="mb_address">주소 </label><br>
					<input  style="width: 40%; display: inline;" name="mb_postcode" id="mb_postcode" type="text" value="${memInfo.mb_postcode }" readonly="readonly">
					<button type="button" class="btn btn-default" onclick="execPostCode();">
					<i class="fa fa-search"></i> 우편번호 찾기
					</button>
				</div>
				<!-- 주소(도로명/상세) -->
				<div >
					<input style="top: 5px;" name="mb_address" id="mb_address" type="text" readonly="readonly" value="${memInfo.mb_address}"/>
					<input type="text" name="mb_address1" id="mb_address1" value="${memInfo.mb_address1}" />
					<div id="address_check"></div>
				</div>
				<input type="submit" value="회원 정보 수정" >
				<input type="button" value="HOME" onclick="location.href='/food_market'">
				</form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- register-area end -->
    
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