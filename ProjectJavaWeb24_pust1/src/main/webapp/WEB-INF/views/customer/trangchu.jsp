<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${base }/css/trangchu.css">
    <link rel="stylesheet" href="${base }/css/footer1.css">
    <link rel="stylesheet" href="${base }/css/header1.css">
    <link rel="stylesheet" href="${base }/icon/themify-icons/themify-icons.css">
    <title>Document</title>
</head>
<body>
    
    
    <div class="clear"></div>

    <div id="body">
        <div class="slide-show">
            <div class="anhthuonghieu">
                <div class="slide"><img src="./image/bo_suu_tap_ao_dai.png" alt=""></div>
                <div class="slide"><img src="./image/arisitino_online.png" alt=""></div>
                <div class="slide"><img src="./image/lavish.png" alt=""></div>
            </div>
        </div>


        <div class="danhmucnoibat">
            <p class="ten">DANH MỤC NỔI BẬT</p>
                <div class="danhsachsanphamnoibat fade">
                    <div class="noibat fade">
                        <div class="chuasanphamnoibat">
                            <div class="sanphamnoibat">
                                <img src="./image/spnoibat1.png" alt="">
                                <p>Quần Âu</p>
                            </div>
                            <div class="sanphamnoibat">
                                <img src="./image/spnoibat2.png" alt="">
                                <p>Áo Len</p>
                            </div>
                            <div class="sanphamnoibat">
                                <img src="./image/spnoibat3.png" alt="">
                                <p>Áo Sơ Mi</p>
                            </div>
                            <div class="sanphamnoibat">
                                <img src="./image/spnoibat4.png" alt="">
                                <p>Arsitino Boss</p>
                            </div>
                            
                        </div>
                        <div class="chuasanphamnoibat fade">
                            <div class="sanphamnoibat fade">
                                <img src="./image/spnoibat5.png" alt="">
                                <p>Phụ Kiện</p>
                            </div>
                            <div class="sanphamnoibat">
                                <img src="./image/spnoibat6.png" alt="">
                                <p>Áo Khoác</p>
                            </div>
                            <div class="sanphamnoibat">
                                <img src="./image/spnoibat7.png" alt="">
                                <p>Bộ Suit</p>
                            </div>
                            <div class="sanphamnoibat">
                                <img src="./image/spnoibat8.png" alt="">
                                <p>Áo dài cách tân</p>
                            </div>
                        </div>
                        <div class="chuasanphamnoibat fade">
                            <div class="sanphamnoibat fade">
                                <img src="./image/spnoibat5.png" alt="">
                                <p>Phụ Kiện</p>
                            </div>
                            <div class="sanphamnoibat">
                                <img src="./image/spnoibat6.png" alt="">
                                <p>Áo Khoác</p>
                            </div>
                            <div class="sanphamnoibat">
                                <img src="./image/spnoibat3.png" alt="">
                                <p>Áo Sơ Mi</p>
                            </div>
                            <div class="sanphamnoibat">
                                <img src="./image/spnoibat4.png" alt="">
                                <p>Arsitino Boss</p>
                            </div>
                        </div>  
                        
                    </div>
                
                
                    <div class="button_chuyen_noibat">
                        <i class="ti-arrow-circle-left btn_noi_bat_trai"></i>
                        <i class="ti-arrow-circle-right btn_noi_bat_phai"></i>
                    </div>

            </div>
            
            
        </div>
    </div>
    <div class="clear"></div>

    <div id="danhsachsanpham">
        <p class="tendm">SẢN PHẨM NỔI BẬT</p>
        <div class="chuabonsanphamnoibat">
        	<c:forEach begin="1" end="4" var="i">
        		<div class="dongsp">
        			<c:forEach items="${sanPhams}" begin="${4*i-3-1}" end="${4*i-1}" var="sp">
        				<div class="sanpham" onclick="ChiTietSanPham('${sp.id}')">
	                    <img src="./image/${sp.hinhAnh }" alt="">
	                    <p>${sp.tenSanPham }</p>
	                    <p class="gia">${sp.getEpGia() }đ</p>
	                </div>
        			</c:forEach>
	                
                <!-- <div class="sanpham">
                    <img src="./image/ao2.png" alt="">
                    <p>Áo khoác 2 lớp AristinoBoss 1JK006W2</p>
                    <p class="gia">3.500.000đ</p>
                </div>
                <div class="sanpham">
                    <img src="./image/ao3.png" alt="">
                    <p>Áo khoác 2 lớp AristinoBoss 1JK006W2</p>
                    <p class="gia">3.500.000đ</p>
                </div>
                <div class="sanpham">
                    <img src="./image/ao4.png" alt="">
                    <p>Áo khoác 2 lớp AristinoBoss 1JK006W2</p>
                    <p class="gia">3.500.000đ</p>
                </div> -->
            </div>
        	</c:forEach>
            
<!--             <div class="dongsp">
                <div class="sanpham">
                    <img src="./image/ao1.png" alt="">
                    <p>Áo khoác 2 lớp AristinoBoss 1JK006W2</p>
                    <p class="gia">3.500.000đ</p>
                </div>
                <div class="sanpham">
                    <img src="./image/ao2.png" alt="">
                    <p>Áo khoác 2 lớp AristinoBoss 1JK006W2</p>
                    <p class="gia">3.500.000đ</p>
                </div>
                <div class="sanpham">
                    <img src="./image/ao3.png" alt="">
                    <p>Áo khoác 2 lớp AristinoBoss 1JK006W2</p>
                    <p class="gia">3.500.000đ</p>
                </div>
                <div class="sanpham">
                    <img src="./image/ao4.png" alt="">
                    <p>Áo khoác 2 lớp AristinoBoss 1JK006W2</p>
                    <p class="gia">3.500.000đ</p>
                </div>
            </div>
            <div class="dongsp">
                <div class="sanpham">
                    <img src="./image/ao1.png" alt="">
                    <p>Áo khoác 2 lớp AristinoBoss 1JK006W2</p>
                    <p class="gia">3.500.000đ</p>
                </div>
                <div class="sanpham">
                    <img src="./image/ao2.png" alt="">
                    <p>Áo khoác 2 lớp AristinoBoss 1JK006W2</p>
                    <p class="gia">3.500.000đ</p>
                </div>
                <div class="sanpham">
                    <img src="./image/ao3.png" alt="">
                    <p>Áo khoác 2 lớp AristinoBoss 1JK006W2</p>
                    <p class="gia">3.500.000đ</p>
                </div>
                <div class="sanpham">
                    <img src="./image/ao4.png" alt="">
                    <p>Áo khoác 2 lớp AristinoBoss 1JK006W2</p>
                    <p class="gia">3.500.000đ</p>
                </div>
            </div>
            <div class="dongsp">
                <div class="sanpham">
                    <img src="./image/ao1.png" alt="">
                    <p>Áo khoác 2 lớp AristinoBoss 1JK006W2</p>
                    <p class="gia">3.500.000đ</p>
                </div>
                <div class="sanpham">
                    <img src="./image/ao2.png" alt="">
                    <p>Áo khoác 2 lớp AristinoBoss 1JK006W2</p>
                    <p class="gia">3.500.000đ</p>
                </div>
                <div class="sanpham">
                    <img src="./image/ao3.png" alt="">
                    <p>Áo khoác 2 lớp AristinoBoss 1JK006W2</p>
                    <p class="gia">3.500.000đ</p>
                </div>
                <div class="sanpham">
                    <img src="./image/ao4.png" alt="">
                    <p>Áo khoác 2 lớp AristinoBoss 1JK006W2</p>
                    <p class="gia">3.500.000đ</p>
                </div>
            </div>
 -->            
        </div>
        <div class="button_chuyen_noibat_san_pham">
            <i class="ti-arrow-circle-left btn_noi_bat_trai_san_pham"></i>
            <i class="ti-arrow-circle-right btn_noi_bat_phai_san_pham"></i>
        </div>
    </div>

    <div id="cuahang">
        <div class="nen">
            
            <p class="ht">HỆ THỐNG CỬA HÀNG</p>
            <P class="tim" onclick="CuaHang()">TÌM NGAY</P>
            
        </div>
    </div>
   
    <jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
</body>

<script>

	function GioHang() {
	    window.location = "/gio-hang";
	}
	
	function ChuyenTrang (){
	    window.location = "/trang-chu";
	}
	
	const btnnoibattrai = document.querySelector('.btn_noi_bat_trai');
	const btnnoibatphai = document.querySelector('.btn_noi_bat_phai');
	const sonoibat = document.querySelectorAll('.chuasanphamnoibat').length;
	var index1 = 0;
	
	
	btnnoibatphai.addEventListener("click", function(){
	    
	    index1 = index1 + 1;
	    if(index1 > sonoibat-1){
	        index1 = 0;
	    }
	    
	    document.querySelector('.noibat').style.right = index1 * 100 + "%";
	    
	    
	});
	
	btnnoibattrai.addEventListener("click", function(){
	    
	    
	    index1 = index1 - 1;
	    
	    if(index1 < 0){
	        index1 = sonoibat - 1;
	    }
	    
	    document.querySelector('.noibat').style.right = index1 *  100 + "%";
	});

	const btnsanphamtrai = document.querySelector('.btn_noi_bat_trai_san_pham');
	const btnsanphamphai = document.querySelector('.btn_noi_bat_phai_san_pham');
	const sospnoibat = document.querySelectorAll('.dongsp').length;
	var index2 = 0;
	
	btnsanphamphai.addEventListener("click", function(){
	    index2 = index2 + 1;
	    if(index2 > sospnoibat - 1){
	        index2 = 0;
	    }
	    document.querySelector('.chuabonsanphamnoibat').style.right = index2 * 100 + "%";
	});
	
	
	btnsanphamtrai.addEventListener("click", function(){
	    index2 = index2 - 1;
	    if(index2 < 0){
	        index2 = sospnoibat - 1;
	    }
	    
	    document.querySelector(".chuabonsanphamnoibat").style.right = index2 * 100 + "%";
	});
	
	function CuaHang() {
		window.location = "/cua-hang";
	}
	
	function ChiTietSanPham(id) {
		window.location = "/chi-tiet-san-pham?id=" + id;
	}

</script>
</html>