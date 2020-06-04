<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="../inc/header.jsp"></jsp:include>
<!doctype html>

<div class="breadcrumb-area bg-img border-top-1 pt-55">
	<div class="container">
		<div class="breadcrumb-content-2">
			<ul>
				<li><a class="active" href="#">home</a></li>
				<li><a class="active" href="#">Shop </a></li>
				<li><a class="active" href="#">${productVO.pd_category} </a></li>
				<li>${productVO.pd_name}</li>
			</ul>
		</div>
	</div>
</div>
<div class="product-details ptb-100 pb-90">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="product-details-btn">
					<!--                                 <a href="#"><i class="ion-arrow-left-c"></i></a> -->
					<!--                                 <a class="active" href="#"><i class="ion-arrow-right-c"></i></a> -->
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 col-lg-7 col-12">
				<div class="product-details-img-content">
					<div class="product-details-tab mr-70">
						<div class="product-details-large tab-content">
							<div class="tab-pane active show fade" id="pro-details1"
								role="tabpanel">
								<div class="easyzoom easyzoom--overlay">
									<a href="./pd_img_upload/${productVO.pd_img_name_f }"> 
									<img src="../pd_img_upload/${productVO.pd_img_name_f }" alt="${productVO.pd_img_name_f }">
									
									</a>
								</div>
							</div>
							<!--                                         <div class="tab-pane fade" id="pro-details2" role="tabpanel"> -->
							<!--                                             <div class="easyzoom easyzoom--overlay"> -->
							<%-- <%--                                                 <a href="../pd_img_upload/${productVO.pd_img_name_f }"> --%>
							<%--                                                     <img src="../pd_img_upload/${productVO.pd_img_name_f }" alt=""> --%>
							<!-- <!--                                                 </a> -->
							<!--                                             </div> -->
							<!--                                         </div> -->
							<!--                                         <div class="tab-pane fade" id="pro-details3" role="tabpanel"> -->
							<!--                                             <div class="easyzoom easyzoom--overlay"> -->
							<!--                                                 <a href="assets/img/product-details/bl3.jpg"> -->
							<!--                                                     <img src="assets/img/product-details/l3.jpg" alt=""> -->
							<!--                                                 </a> -->
							<!--                                             </div> -->
							<!--                                         </div> -->
							<!--                                         <div class="tab-pane fade" id="pro-details4" role="tabpanel"> -->
							<!--                                             <div class="easyzoom easyzoom--overlay"> -->
							<!--                                                 <a href="assets/img/product-details/bl4.jpg"> -->
							<!--                                                     <img src="assets/img/product-details/l4.jpg" alt=""> -->
							<!--                                                 </a> -->
							<!--                                             </div> -->
							<!--                                         </div> -->
						</div>
						<!--                                     <div class="product-details-small nav mt-12 main-product-details" role=tablist> -->
						<!--                                         <a class="active mr-12" href="#pro-details1" data-toggle="tab" role="tab" aria-selected="true"> -->
						<!--                                             <img src="assets/img/product-details/s1.jpg" alt=""> -->
						<!--                                         </a> -->
						<!--                                         <a class="mr-12" href="#pro-details2" data-toggle="tab" role="tab" aria-selected="true"> -->
						<!--                                             <img src="assets/img/product-details/s2.jpg" alt=""> -->
						<!--                                         </a> -->
						<!--                                         <a class="mr-12" href="#pro-details3" data-toggle="tab" role="tab" aria-selected="true"> -->
						<!--                                             <img src="assets/img/product-details/s3.jpg" alt=""> -->
						<!--                                         </a> -->
						<!--                                         <a class="mr-12" href="#pro-details4" data-toggle="tab" role="tab" aria-selected="true"> -->
						<!--                                             <img src="assets/img/product-details/s4.jpg" alt=""> -->
						<!--                                         </a> -->
						<!--                                     </div> -->
					</div>
				</div>
			</div>
			<div class="col-md-12 col-lg-5 col-12">
				<div class="product-details-content">
				<!-- 광준  -->
				<!-- 광준 form 장바구니 들고가기 -->
                            
                            <form name="form1" method="post" action="../cart/insert">
                                <h3>${productVO.pd_name}</h3>
                 <!-- hidden --><input type = "hidden" name = "pd_name" value="${productVO.pd_name}">
                 <!-- hidden --><input type = "hidden" name = "pd_img" value = "${productVO.pd_img_name_f }">
                                <!-- 별점 제어하기  -->	
                                <div class="rating-number">
                                    <div class="quick-view-rating">
                                        <i class="ion-ios-star red-star"></i><!-- 채워진 별 -->
                                        <i class="ion-ios-star red-star"></i>
                                        <i class="ion-android-star-outline"></i>
                                        <i class="ion-android-star-outline"></i><!-- 비워진 별 -->
                                        <i class="ion-android-star-outline"></i>
                                    </div>
                                    <div class="quick-view-number">
                                        <span>**개 상품평</span>
                                    </div>
                                </div>
                                <!-- 별점 end -->
                              
                                <div class="details-price">
                 <!-- hidden --><input type="hidden" name="pd_idx" value="${productVO.pd_idx }">
                 <!-- hidden --><input type="hidden" name = "price" value="${productVO.pd_price}">
                                    <span><b>￦&nbsp;</b>
                                    <fmt:formatNumber type="number" maxFractionDigits="3" value="${productVO.pd_price}" />
                                   </span>
                                </div>
                                <p></p>
                                <p></p>
                                <div class="quick-view-select">
                                    <div class="select-option-part">
                                        <label>포장단위별 용량(중량), 수량, 크기</label>
                                       <p>&nbsp;&nbsp;${productVO.pd_size}</p>
                <!-- hidden --><input type = "hidden" name = "pd_size" value="${productVO.pd_size}">
                                    </div>
                                    <div class="select-option-part">
                                        <label>원산지</label>
                                       <p>&nbsp;&nbsp;${productVO.pd_origin}</p>
<%--                                        <input type = "hidden" name = "pd_origin" value="${productVO.pd_origin}"> --%>
                                    </div>
                                </div>
                                <div class="quickview-plus-minus">
                                        
                                    <div class="cart-plus-minus">
				<!-- text 갯수 들고가기 --><input type ="text" class="cart-plus-minus-box" name="amount" value ="1" readonly required="required">
<%-- 							<c:forEach begin="1" end="10" var="i"> --%>
<%-- 								<option value="${i }">${i }</option> --%>
<%-- 							</c:forEach> --%>
<!-- 						</select> -->
<!--                                         <input type="text" name="amount" class="cart-plus-minus-box" value="1" placeholder="주문 갯수" readonly required="required" > -->
                                    </div>
                                    <div>
                                    <div class="quickview-btn-cart">
<!--                                         <a class="btn-hover-black" href="#">add to cart</a> -->
                                        <input type= "submit" class="contact-form-style submit input button " value="add to cart">
                                    </div>
                                    </div>
                                    <div class="quickview-btn-wishlist">
                                        <a class="btn-hover" href="#"><i class="ion-ios-heart-outline"></i></a>
                                    </div>
                                </div>
                                </form>
					
					<!-- 광준 form 장바구니 들고가기 -->
					<!-- 광준  -->
					<div class="product-categories product-cat-tag">
						<ul>
							<li class="categories-title">Categories :</li>
							 <li><a href="${path }/food_market/product/productList?findType=과일">과일</a></li>
                             <li><a href="${path }/food_market/product/productList?findType=채소">채소</a></li>
                             <li><a href="${path }/food_market/product/productList?findType=쌀">쌀</a></li>
                             <li><a href="${path }/food_market/product/productList?findType=정육">정육</a></li>
                             <li><a href="${path }/food_market/product/productList?findType=수산">수산</a></li>
						</ul>
					</div>
					<div class="product-tags product-cat-tag">
						<ul>
							<!--                                         <li class="categories-title">Tags :</li> -->
							<!--                                         <li><a href="#">fashion</a></li> -->
							<!--                                         <li><a href="#">electronics</a></li> -->
							<!--                                         <li><a href="#">toys</a></li> -->
							<!--                                         <li><a href="#">food</a></li> -->
							<!--                                         <li><a href="#">jewellery</a></li> -->
						</ul>
					</div>
					<div class="product-share">
						<ul>
							<li class="categories-title">Share :</li>
							<li><a href="#"> <i class="ion-social-twitter"></i>
							</a></li>
							<li><a href="#"> <i class="ion-social-tumblr"></i>
							</a></li>
							<li><a href="#"> <i class="ion-social-facebook"></i>
							</a></li>
							<li><a href="#"> <i class="ion-social-instagram-outline"></i>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="product-description-review-area pb-100">
	<div class="container">
		<div class="product-description-review text-center">
			<div class="description-review-title nav" role=tablist>
				<a class="active" href="#pro-dec" data-toggle="tab" role="tab"
					aria-selected="true"> Description </a>
				<a href="#pro-review"
					data-toggle="tab" role="tab" aria-selected="false"> Reviews (0<!-- 리뷰 갯수 넣기 -->)
				</a> 
				<a href="#pro-qna" data-toggle="tab" role="tab"
					aria-selected="false"> 상품 문의 (0<!-- 상품 문의 갯수 넣기 -->)
				</a>
			</div>
			<div class="description-review-text tab-content">

				<!-- 상품 상세 설명 -->
				<div class="tab-pane active show fade" id="pro-dec" role="tabpanel">
					<div>
						<img src="../pd_img_upload/${productVO.pd_img_name_s }" alt="">
					</div>
				</div>
				<!-- 상품 상세 설명 -->
				<!-- 리뷰 페이지 -->
				<div class="tab-pane fade" id="pro-review" role="tabpanel">
					<a href="#">Be the first to write your review!</a>
					<hr>
					<!-- 리뷰 목록 테이블  -->
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<h1 class="cart-heading">상품평</h1>
							<div class="table-content table-responsive">
								<table>
									<thead>
										<tr>
											<th class="product-quantity">리뷰 글번호</th>
											<th class="product-name">별점 평가</th>
											<th class="product-price">상품평</th>
											<th class="product-name">구매자</th>
											<th class="product-price">작성일</th>
										</tr>
									</thead>
									<tbody>
										<!-- for each문 돌리기 -->
										<tr>
											<td class="product-remove"></td>
											<td class="product-thumbnail"></td>
											<td class="product-name"></td>
											<td class="product-price"></td>
											<td class="product-subtotal"></td>

										</tr>
										<!-- for each문 돌리기 -->
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- 리뷰 목록 테이블  -->
				</div>
				<!-- 리뷰 목록  페이지-->

				<!-- 상품 문의 페이지 -->
				<div class="tab-pane fade" id="pro-qna" role="tabpanel">
					<c:if test="${sessionScope.mb_id != null }">
					<!-- 상품문의 작성 버튼 -->
						<a class="contact-form-style button submit btn-hover input "
							href="#">상품 문의 작성하기 </a>
					</c:if>
					<hr>
				

					<!-- 리뷰 게시판 목록 띄우기  review list -->
					<!-- shopping-cart-area start -->
					<!-- 					<div class="cart-main-area pt-95 pb-100"> -->
					<!-- 						<div class="container"> -->
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<h1 class="cart-heading">상품 문의</h1>
							<!-- 									<form action="#"> -->
							<div class="table-content table-responsive">
								<table>
									<thead>
										<tr>
											<th class="product-quantity">들여쓰기</th>
											<th class="product-name">글번호</th>
											<th class="product-price">상품 문의 내용</th>
											<th class="product-name">작성자</th>
											<th class="product-price">날짜</th>
										</tr>
									</thead>
									<tbody>
										<!-- for each문 돌리기 -->
										<tr>
											<td class="product-remove"></td>
											<td class="product-thumbnail"></td>
											<td class="product-name"></td>
											<td class="product-price"></td>
											<td class="product-subtotal"></td>

										</tr>
										<!-- for each문 돌리기 -->
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- shopping-cart-area end -->
				</div>
				<!-- 상품 문의 페이지 -->



			</div>
		</div>
	</div>
</div>
<div class="product-collection-area pb-60">
	<div class="container"></div>
</div>

<jsp:include page="../inc/footer.jsp"></jsp:include>
