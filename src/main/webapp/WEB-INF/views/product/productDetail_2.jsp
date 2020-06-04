<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="../inc/header.jsp"></jsp:include>
<!doctype html>

               <div class="breadcrumb-area bg-img border-top-1 pt-55">
                <div class="container">
                    <div class="breadcrumb-content-2">
                        <ul>
                            <li><a class="active" href="../">home</a></li>
                            <li><a class="active" href="../product/productList">Shop </a></li>
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
                                        <div  id="pro-details1" role="tabpanel">
                                            <div class="easyzoom">
                                                <a href="../pd_img_upload/${productVO.pd_img_name_f }">
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
                                        <li>
                                            <a href="#">
                                                <i class="ion-social-twitter"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="ion-social-tumblr"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="ion-social-facebook"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="ion-social-instagram-outline"></i>
                                            </a>
                                        </li>
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
                            <a class="active" href="#pro-dec" data-toggle="tab" role="tab" aria-selected="true">
                                Description
                               
                            </a>
                            <a href="#pro-review" data-toggle="tab" role="tab" aria-selected="false">
                                Reviews (0<!-- 리뷰 갯수 넣기 -->)
                            </a>
                            <a href="#pro-qna" data-toggle="tab" role="tab" aria-selected="false">
                 		               상품 문의  (0<!-- 상품 문의 갯수 넣기 -->)
                            </a>
                        </div>
                        <div class="description-review-text tab-content">
                            <div class="tab-pane active show fade" id="pro-dec" role="tabpanel">
 								<div>
                                 <img src="../pd_img_upload/${productVO.pd_img_name_s }" alt="">
                                 </div>
                            </div>
                            <div class="tab-pane fade" id="pro-review" role="tabpanel">
                                   <!-- 리뷰 게시판 목록 띄우기  review list -->
                            </div>
                             <div class="tab-pane fade" id="pro-qna" role="tabpanel">
                               <a class="contact-form-style button submit btn-hover input " href="#">상품 문의 작성하기 </a>
                                 <!-- 상품 문의 게시판 목록 띄우기  qna list -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-collection-area pb-60">
                <div class="container">
                  
                </div>
            </div>

<jsp:include page="../inc/footer.jsp"></jsp:include>
 