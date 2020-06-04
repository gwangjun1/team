<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="page-sidebar">
	<!-- 로고 -->
    <a class="logo-box" href="index.do">
        <span>ecaps</span>
        <i class="icon-close" id="sidebar-toggle-button-close"></i>
    </a>
    
    <!-- 왼쪽 메인 메뉴 -->
    <div class="page-sidebar-inner">
        <div class="page-sidebar-menu">
            <ul class="accordion-menu">
                <li class="active-page">
                    <a href="index.do">
                        <i class="menu-icon icon-home4"></i><span>HOME</span>
                    </a>
                </li>
                <li class="active-page">
                    <a href="memberList.do">
                        <i class="menu-icon icon-format_list_bulleted"></i><span>회원 리스트</span>
                    </a>
                </li>
                <li class="active-page">
                    <a href="productList.do">
                        <i class="menu-icon icon-format_list_bulleted"></i><span>상품 리스트</span>
                    </a>
                </li>
                <li class="active-page">
                    <a href="../">
                        <i class="menu-icon icon-public"></i><span>나가기</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div><!-- /Page Sidebar -->