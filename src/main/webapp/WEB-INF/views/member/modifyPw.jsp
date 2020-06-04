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
	var pwRegx = /^[A-Za-z0-9]{4,12}$/;
	$('#fr_modify').on('submit',function(){
		var inval_arr=[false,false,false];
		if ($('#mb_pw').val()!="") {
			inval_arr[0]=true;
		}else{
			return false;
		}
		if (pwRegx.test($('#mb_pw2').val())) {
			inval_arr[1]=true;
		}else{
			return false;
		}
		if ($('#mb_pw2').val()==$('#mb_pw3').val()) {
			inval_arr[2]=true;
		}else{
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
			alert('비밀번호가 수정되었습니다. 다시 로그인 해주세요.');
		}else{
			alert('다시 입력해주세요');
		}
	});
	
	//변경 비밀번호 유효성 체크
	$('#mb_pw2').blur(function() {
		if (pwRegx.test($('#mb_pw2').val())) {
			console.log('true');
			$('#pw2_check').text('');
		} else {
			console.log('false');
			$('#pw2_check').text('4~12자의 숫자 , 문자로만 사용 가능합니다.');
			$('#pw2_check').css('color', 'red');
		}
	});

	//1~2 패스워드 일치 확인
	$('#mb_pw3').blur(function() {
		if ($('#mb_pw2').val() != $(this).val()) {
			$('#pw3_check').text('비밀번호가 일치하지 않습니다.');
			$('#pw3_check').css('color', 'red');
		} 
		else if($('#mb_pw2').val() == $(this).val()) {
			$('#pw3_check').text('비밀번호 일치 확인!');
			$('#pw3_check').css('color', 'green');
		} else {
			$('#pw3_check').text('');
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
                   
			    <form action="modifyPw.do" method="post" id="fr_modify" role="form" >
				<!-- 비번 -->
				<div >
					<label for="mb_pw">비밀번호</label> 
					<input type="password" id="mb_pw" name="mb_pw" >
				</div>
				<!-- 비번2 -->
				<div >
					<label for="mb_pw2">변경 비밀번호</label> 
					<input type="password" id="mb_pw2" name="mb_pw2" >
					<div id="pw2_check"></div>
				</div>
				<!-- 비번3 -->
				<div >
					<label for="mb_pw2">비밀번호 환인</label> 
					<input type="password" id="mb_pw3" name="mb_pw3" >
					<div id="pw3_check"></div>
				</div>
				<c:if test="${msg=='loginCancel' }" ><span style="color:red">비밀번호를 확인해주세요.</span></c:if><br>
				<input type="submit" value="비밀번호 번경" >
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