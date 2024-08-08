<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<div id="baongoaiheader">
        <div id="header">
            <div id="logo" onclick="ChuyenTrang ()">
                <img src="${base }/image/logo_arisitino.png" alt="">
            </div>
            <div id="menu">
                <ul>
                    <li><a href="" >THƯƠNG HIỆU</a></li>
                    <li class="menusanpham"><a href="/san-pham" target="_parent">SẢN PHẨM</a>
                        <ul class="menucon1">
                            <li class="menuao"><a href="/san-pham?tenloai=Áo">Áo</a>
                                <ul class="menucon2 menucap2">
                                <c:forEach items="${danhMucSanPhamBac2 }" var="b2">
                                	<c:if test="${b2.danhMucSanPhamBac1.id == 10 and b2.status == 1}">
                                		<li><a href="${base }/san-pham-ao?tendm=${b2.tenDanhMuc }">${b2.tenDanhMuc }</a></li>
                                	</c:if>
                                </c:forEach>
                                    <!-- <li><a href="/san-pham-ao?tendm=Áo sơ mi">Áo Sơ mi</a></li>
                                    <li><a href="/san-pham-ao?tendm=Áo Polo">Áo Polo</a></li>
                                    <li><a href="/san-pham-ao?tendm=Áo T-Shirt">Áo T-Shirt</a></li>
                                    <li><a href="">Áo Tank-top</a></li>
                                    <li><a href="">Áo Blazer</a></li>
                                    <li><a href="">Áo Khoác</a></li>
                                    <li><a href="">Áo Nỉ nam</a></li>
                                    <li><a href="">Áo Len</a></li>
                                    <li><a href="">Áo Thun dài tay</a></li> -->
                                </ul>
                            </li>
                            <li class="menuquan"><a href="">Quần</a>
                                <ul class="menuquan2 menucap2">
                                <c:forEach items="${danhMucSanPhamBac2 }" var="b3">
                                	<c:if test="${b3.danhMucSanPhamBac1.id == 11 and b3.status == 1}">
                                		<li><a href="${base }/san-pham-ao?tendm=${b3.tenDanhMuc }">${b3.tenDanhMuc }</a></li>
                                	</c:if>
                                </c:forEach>
                                    
                                </ul>
                            </li>
                            <li class="menudobo"><a href="">Đồ bộ</a>
                                <ul class="menudobo2 menucap2">
                                    <c:forEach items="${danhMucSanPhamBac2 }" var="b4">
                                	<c:if test="${b4.danhMucSanPhamBac1.id == 12 and b4.status == 1 }">
                                		<li><a href="${base }/san-pham-ao?tendm=${b4.tenDanhMuc }">${b4.tenDanhMuc }</a></li>
                                	</c:if>
                                </c:forEach>
                                    
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="menuphukien"><a href="">PHỤ KIỆN</a>
                        <ul class="menuconphukien">
                        	<c:forEach items="${danhMucPhuKien }" var="pk">
                        		<c:if test="${pk.status == 1 }">
                        			<li><a href="/danh-sach-phu-kien?tendmpk=${pk.tenDanhMuc }">${pk.tenDanhMuc }</a></li>
                        		</c:if>
                        	</c:forEach>
                            <!-- <li><a href="/danh-sach-phu-kien?tendmpk=Giày">Giày</a></li>
                            <li><a href="">Cặp da</a></li>
                            <li><a href="">Ví nam</a></li>
                            <li><a href="">Thắt lưng</a></li>
                            <li><a href="">Cà vạt</a></li>
                            <li><a href="">Vali</a></li> -->
                        </ul>
                    </li>
                    <li class="menubosuutap"><a href="">BỘ SƯU TẬP</a>
                        <ul class="menuconbosuutap">
                            <li><a href="/bo-suu-tap-xuan-he-2022?tenbst=MAN IN OFFICITY">Xuân Hè 2022</a></li>
                            <li><a href="">Thu Đông 2022</a></li>
                            <li><a href="">Xuân Hè 2023</a></li>
                        </ul>
                    </li>
                    <li><a href="/cua-hang">CỬA HÀNG</a></li>
                    <li><a href="">3D SHOPPING</a></li>
                </ul>
            </div>
            <div id="timkiem">
                <form action="${base }/tim-kiem-san-pham" method="get" id="form-tim-kiem"><p><input type="search" placeholder="Tìm kiếm..." name="tensanpham" class="ten-san-pham"> <i class="ti-search" onclick="timKiemMenu()"></i></p></form>
            </div>
            <div id="yeuthich">
                <i class="ti-heart"></i>
                <i class="ti-shopping-cart" onclick="GioHang()">
                	<div id="soluongsanphamtronggiohang" class="so-luong-san-pham">${tongsosanphamgiohang }</div>
                </i>
                <i class="ti-user">
                	<c:choose>
                		<c:when test="${isLogined }">
                			<div class="dang-nhap">
                				<ul>
                					<li><a href="${base }/thong-tin-khach-hang">Tài khoản</a></li>
                					<li><a href="${base }/lich-su-mua-hang">Đơn hàng</a></li>
                					<li><a>Đơn xuất</a></li>
                				</ul>
                			</div>
                		</c:when>
                		<c:otherwise>
                			<div class="dang-nhap">
                				<ul>
                					<li><a href="${base }/dang-ky">Đăng ký</a></li>
                					<li><a href="${base }/login">Đăng nhập</a></li>
                				</ul>
                			</div>
                		</c:otherwise>
                	</c:choose>
                	
                </i>
            </div>
    </div>
    </div>
    
<script type="text/javascript">

	function GioHang() {
	    window.location = "/gio-hang";
	}
	function ChuyenTrang(){
	    window.location = "/trang-chu";
	}
	
	
	
	function timKiemMenu() {
		var tensp = document.querySelector('.ten-san-pham').value;
		
		if(tensp != ""){
			
			document.getElementById('form-tim-kiem').submit();
		}
		
	}
</script>
    
    
    