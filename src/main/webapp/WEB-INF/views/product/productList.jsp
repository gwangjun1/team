<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="../inc/header.jsp"></jsp:include>
<!doctype html>

<div class="breadcrumb-area pt-205 pb-210 bg-img" 
style="background-image: 
<c:set var="findType" value="${fCri.findType }" />
				<c:choose>
				    <c:when test="${findType == null}">
				  	url(../pd_img_upload/전체상품.jpg)
				    </c:when>
				    <c:when test="${findType == '과일'}">
				    url(../pd_img_upload/과일.jpg)
				    </c:when>
				    <c:when test="${findType == '채소'}">
				    url(../pd_img_upload/채소.jpg)
				    </c:when>
				    <c:when test="${findType == '쌀'}">
				    url(../pd_img_upload/쌀.jpg)
				    </c:when>
				    <c:when test="${findType == '정육'}">
				    url(../pd_img_upload/정육.jpg)
				    </c:when>
				    <c:when test="${findType == '수산'}">
				    url(../pd_img_upload/수산.jpg)
				    </c:when>
				</c:choose>
">

	<div class="container">
		<div class="breadcrumb-content">
			<h2>shop</h2>
			<ul>
				<li><a href="#">home</a></li>
				<c:set var="findType" value="${fCri.findType }" />
				<c:choose>
				    <c:when test="${findType == null}">
				     <li>전체상품</li>
				    </c:when>
				    <c:when test="${findType != ''}">
				     <li>${fCri.findType }</li>
				    </c:when>
				</c:choose>
			</ul>
		</div>
	</div>
</div>

<div class="shop-page-wrapper hidden-items padding-filter">
	<div class="container-fluid">
		<div class="shop-filters-left">
			<div class="shop-sidebar">
				<div class="sidebar-widget mb-50">
					<h3 class="sidebar-title">전체 상품 검색하기 <br> Search Products</h3>
					<div class="sidebar-search">
						<form action="#">
							<input placeholder="Search Products..." type="text" name="keyword" id="keyword" value="${fCri.keyword }">
							<button>
								<i class="ion-ios-search-strong" id="productFind"></i>
							</button>
							<script type="text/javascript">
					      	$(document).ready(function() {
					      		$('#productFind').on("click", function(e){
					      			self.location ="productList"+"${pagingMaker.makeURI(1)}"
					//       				+"&findType="
					//       				+$("select[name='findType']").val();
					      				+"&keyword="+$("#keyword").val();
					      		});
					      	});
					      </script>
						</form>
					</div>
				</div>
				<div class="sidebar-widget mb-40">
					<!--                                 <h3 class="sidebar-title">Filter by Price</h3> -->
					<!--                                 <div class="price_filter"> -->
					<!--                                     <div id="slider-range"></div> -->
					<!--                                     <div class="price_slider_amount"> -->
					<!--                                         <div class="label-input"> -->
					<!--                                             <label>price : </label> -->
					<!--                                             <input type="text" id="amount" name="price"  placeholder="Add Your Price" /> -->
					<!--                                         </div> -->
					<!--                                         <button type="button">Filter</button>  -->
					<!--                                     </div> -->
					<!--                                 </div> -->
				</div>
				<div class="sidebar-widget mb-45">
					<h3 class="sidebar-title">결과 내 카테고리 재검색</h3>
					<div class="sidebar-categories">
						<ul>
							<li id="findType과일" class="btn-hover">과일</li>
							<li id="findType채소" class="btn-hover">채소</li>
							<li id="findType쌀" class="btn-hover">쌀</li>
							<li id="findType정육" class="btn-hover">정육</li>
							<li id="findType수산" class="btn-hover ">수산</li>
						</ul>
						<script type="text/javascript">
					      	$(document).ready(function() {
					      			$("[id^=findType]").click(function(){
					      				
					      				var id = $(this).attr("id");
					      				var findType = id.replace("findType", ""); 
					      				
					      				self.location ="productList"+"${pagingMaker.makeURI(1)}"
					      				+"&findType="+findType
					      				+"&keyword="+$("#keyword").val();
					      			})
					      	});
					      </script>
					</div>
				</div>
				<div class="sidebar-widget sidebar-overflow mb-45">
					<!--                                 <h3 class="sidebar-title">color</h3> -->
					<!--                                 <div class="product-color"> -->
					<!--                                     <ul> -->
					<!--                                         <li class="red">b</li> -->
					<!--                                         <li class="pink">p</li> -->
					<!--                                         <li class="blue">b</li> -->
					<!--                                         <li class="sky">b</li> -->
					<!--                                         <li class="green">y</li> -->
					<!--                                         <li class="purple">g</li> -->
					<!--                                     </ul> -->
					<!--                                 </div> -->
				</div>
				<div class="sidebar-widget mb-40">
					<!--                                 <h3 class="sidebar-title">size</h3> -->
					<!--                                 <div class="product-size"> -->
					<!--                                     <ul> -->
					<!--                                         <li><a href="#">xl</a></li> -->
					<!--                                         <li><a href="#">m</a></li> -->
					<!--                                         <li><a href="#">l</a></li> -->
					<!--                                         <li><a href="#">ml</a></li> -->
					<!--                                         <li><a href="#">lm</a></li> -->
					<!--                                     </ul> -->
					<!-- 				                                </div> -->
				</div>
				<div class="sidebar-widget mb-50">
					<h3 class="sidebar-title">Top rated products</h3>
					<div class="sidebar-top-rated-all">
						
						
						
						<div class="sidebar-top-rated mb-30">
							<div class="single-top-rated">
								<div class="top-rated-img">
									<a href="#"><img
										src="../assets/img/product/sidebar-product/1.jpg" alt=""></a>
								</div>
								<div class="top-rated-text">
									<h4>
										<a href="#">Flying Drone</a>
									</h4>
									<div class="top-rated-rating">
										<ul>
											<li><i class="reting-color ion-android-star"></i></li>
											<li><i class="reting-color ion-android-star"></i></li>
											<li><i class="ion-android-star-outline"></i></li>
											<li><i class="ion-android-star-outline"></i></li>
											<li><i class="ion-android-star-outline"></i></li>
										</ul>
									</div>
									<span>$140.00</span>
								</div>
							</div>
						</div>
						<div class="sidebar-top-rated mb-30">
							<div class="single-top-rated">
								<div class="top-rated-img">
									<a href="#"><img
										src="../assets/img/product/sidebar-product/2.jpg" alt=""></a>
								</div>
								<div class="top-rated-text">
									<h4>
										<a href="#">Flying Drone</a>
									</h4>
									<div class="top-rated-rating">
										<ul>
											<li><i class="reting-color ion-android-star"></i></li>
											<li><i class="reting-color ion-android-star"></i></li>
											<li><i class="ion-android-star-outline"></i></li>
											<li><i class="ion-android-star-outline"></i></li>
											<li><i class="ion-android-star-outline"></i></li>
										</ul>
									</div>
									<span>$140.00</span>
								</div>
							</div>
						</div>
						<div class="sidebar-top-rated mb-30">
							<div class="single-top-rated">
								<div class="top-rated-img">
									<a href="#"><img
										src="../assets/img/product/sidebar-product/3.jpg" alt=""></a>
								</div>
								<div class="top-rated-text">
									<h4>
										<a href="#">Flying Drone</a>
									</h4>
									<div class="top-rated-rating">
										<ul>
											<li><i class="reting-color ion-android-star"></i></li>
											<li><i class="reting-color ion-android-star"></i></li>
											<li><i class="ion-android-star-outline"></i></li>
											<li><i class="ion-android-star-outline"></i></li>
											<li><i class="ion-android-star-outline"></i></li>
										</ul>
									</div>
									<span>$140.00</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="shop-filters-right">
			<div class="shop-bar-area pb-60">
				<div class="shop-bar">
					<div class="shop-found-selector">
						<!--                                     <div class="shop-found"> -->
						<!--                                         <p><span>23</span> Product Found of <span>50</span></p> -->
						<!--                                     </div> -->
						<!--                                     <div class="shop-selector"> -->
						<!--                                         <label>Sort By : </label> -->
						<!--                                         <select name="select"> -->
						<!--                                             <option value="">Default</option> -->
						<!--                                             <option value="">A to Z</option> -->
						<!--                                             <option value=""> Z to A</option> -->
						<!--                                             <option value="">In stock</option> -->
						<!--                                         </select> -->
						<!--                                     </div> -->
					</div>
					<div class="shop-filter-tab">
						<div class="shop-filter">
							<a class="shop-filter-active" href="#">Filters <i
								class="ion-android-options"></i></a>
						</div>
						<div class="shop-tab nav" role=tablist>
							<!--                                        <a class="active" href="#grid-5-col1" data-toggle="tab" role="tab" aria-selected="false"> -->
							<!--                                             <i class="ion-android-apps"></i> -->
							<!--                                         </a> -->
							<!--                                         <a href="#grid-5-col2" data-toggle="tab" role="tab" aria-selected="true"> -->
							<!--                                             <i class="ion-android-menu"></i> -->
							<!--                                         </a> -->
						</div>
					</div>
				</div>
			</div>


			<div class="shop-product-content tab-content">
				<div id="grid-5-col1" class="tab-pane fade active show">
					<div class="row custom-row">


						<c:forEach items="${list}" var="productvo">
							<!-- foreach문 돌리기 -->
							<div class="custom-col-5 custom-col-style">
								<div class="single-product mb-35">
									<div class="product-img">
										<a
											href="productDetail${pagingMaker.makeFind(pagingMaker.cri.page)}&pd_idx=${productvo.pd_idx }">
											<img src="../pd_img_upload/${productvo.pd_img_name_f }"	alt="${productvo.pd_name }" height="350"></a>
									</div>
									<div class="product-content">
										<div class="product-title-price">
											<div class="product-title">
												<h4>${productvo.pd_name }</h4>
											</div>
											<div class="product-price">
												<span>${productvo.pd_price }</span>
											</div>
										</div>
										<div class="product-cart-categori">
											<div class="product-cart">
												<span>장바구니 담기</span>
											</div>
											<div class="product-categori">
												<a href="cart"><i class="ion-bag"></i> Add to cart</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>



					</div>
				</div>
			</div>


		<div>
			<c:if test="${pagingMaker.prev}">
				<a
					href="productList${pagingMaker.makeFind(pagingMaker.startPage-1)}">
					<button type="button" class="btn btn-theme03">◀</button>
				</a>
			</c:if>
			<c:forEach begin="${pagingMaker.startPage}"
				end="${pagingMaker.endPage}" var="pNum">
				<a href="productList${pagingMaker.makeFind(pNum)}">
					<button type="button"
						class="<c:out value="${pagingMaker.cri.page == pNum?'btn btn-theme':'btn btn-default'}"/>">${pNum}</button>
				</a>
			</c:forEach>
			<c:if test="${pagingMaker.next&&pagingMaker.endPage > 0}">
				<a href="productList${pagingMaker.makeFind(pagingMaker.endPage+1)}">
					<button type="button" class="btn btn-theme03">▶</button>
				</a>
			</c:if>
		</div>

		</div>
	</div>
</div>
<jsp:include page="../inc/footer.jsp"></jsp:include>