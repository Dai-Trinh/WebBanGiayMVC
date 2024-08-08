<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
    <link rel="stylesheet" href="${base }/css/chitietsanpham.css">
    <link rel="stylesheet" href="${base }/css/header1.css">
    <link rel="stylesheet" href="${base }/css/footer1.css">
    <link rel="stylesheet" href="./icon/themify-icons/themify-icons.css">
    <title>Document</title>
</head>
<body>

    <div id="chitetsanpham">
        <div class="tren">
            <div class="right">
                <img src="${base }/image/${sanPham.hinhAnh}" alt="">
            </div>
            <div class="left">
                <p class="ten">${sanPham.tenSanPham }</p>
                <i class="ti-heart" class="yeuthich"></i>
                <div class="clear"></div>
                <p class="gia">${sanPham.getEpGia()}đ</p>
                <p class="mau">Màu: ${sanPham.mauSac }</p>
                <p class="size">Chọn size
                    <ul class="si">
                    	<c:forEach items="${size }" var="s">
                    		<li class="loaisize" id="${s }" onclick="gachChan('${s }')"><c:out value="${s }"></c:out></li>
                    	</c:forEach>
                        
                    </ul>
              
                <div class="soluong">Số lượng
                    <div>
                        <ul class="sl">
                            <li class="tang" id="giam" onclick="Giam()">-</li>
                            <li id="soluong">1</li>
                            <li class="tang" id="giam" onclick="Tang()">+</li>
                        </ul>
                    </div>
                </div>
                <div class="clear"></div>
                <p class="themgh" onclick="ThemSanPhamGH('${base}',${sanPham.id })"><i class="ti-shopping-cart" ></i>Thêm vào giỏ hàng</p>
                <p class="mua">Mua ngay</p>
            </div>
            <div class="clear"></div>
        </div>
        <div class="duoi">
            <p class="thongtin">Thông tin sản phẩm</p>
            <hr>
            <p class="nd"><strong>Kiểu dáng: </strong>${sanPham.formDang }</p>
            <p class="nd"><strong>Thiết kế:</strong></p>
            <p>${sanPham.thietKe }</p>
            <%-- <c:forEach begin="1" items="${thietKe }" var="t">
            	<p>- ${t}</p>
            </c:forEach> --%>
            <!-- <p>- Áo polo dài tay phom dáng Tech Golf được tinh chỉnh các thông số đem lại sự thoải mái tối đa theo từng cử động của golfer. Áo được nâng cấp tính năng Anti UV, giúp bảo vệ làn da với chỉ số kháng tia UV lên tới 98% và bền bỉ trong suốt thời gian sử dụng. Công nghệ sợi vải Moisture Wicking giúp áo thấm hút tốt, đồng thời khô nhanh hơn.</p>
            <p>- Thiết kế khỏe khoắn, màu sắc nam tính, cùng họa tiết đại bàng độc đáo, sáng tạo trên ngực trái áo đem đến diện mạo trẻ trung và lịch lãm cho người mặc.</p> -->
            <p class="nd"><strong>Chất liệu:</strong></p>
            <p>${sanPham.chatLieu }</p>
            <%-- <c:forEach begin="1" items="${chatLieu }" var="c">
            	<p>-${c }</p>
            </c:forEach> --%>
            <!-- <p>- 77% Nylon cho bề mặt vải độ mịn mượt, mỏng nhẹ</p>
            <p>- 23% Spandex tạo độ co giãn tốt, thoải mái tối đa khi mặc.</p> -->
            <p class="nd"><strong>Màu sắc: </strong>${sanPham.mauSac }</p>
            <p class="nd"><strong>Size: </strong>${sanPham.size }</p>
        </div>
    </div>

    <div id="sanphamlienquan">
        <p>SẢN PHẨM LIÊN QUAN</p>
        <div class="danhsachsanphamlienquan">
        
        	<c:forEach begin="1" end="3" var="i">
        		<div id="loaisanpham">
        			<c:forEach items="${sanPhamLienQuan }" begin="${(4*i - 3) - 1 }" end="${4*i - 1}" var="splq">
	        			<div class="sanpham">
	                    <img src="${base }/image/${splq.hinhAnh}" alt="">
	                    <p class="tensp">${splq.tenSanPham }</p>
	                    <p class="gia">${splq.getEpGia() }</p>
	                	</div>
        			</c:forEach>
        		</div>
        	</c:forEach>
        
            <!-- <div id="loaisanpham">
                <div class="sanpham">
                    <img src="./image/aosomi1.png" alt="">
                    <p class="tensp">Áo sơ mi nam Aristino 1SSR14</p>
                    <p class="gia">1.470.000đ</p>
                </div>
                <div class="sanpham">
                    <img src="./image/aosomi2.png" alt="">
                    <p class="tensp">ÁO SƠ MI NAM ARISTINO 1SS101S2</p>
                    <p class="gia">1.600.000đ</p>
                </div>
                <div class="sanpham">
                    <img src="./image/aosomi3.png" alt="">
                    <p class="tensp">Áo sơ mi ngắn tay Aristino Boss 1SS125S2</p>
                    <p class="gia">1.250.000đ</p>
                </div>
                <div class="sanpham">
                    <img src="./image/aosomi4.png" alt="">
                    <p class="tensp">Áo sơ mi ngắn tay Aristino Boss 1SS118S2</p>
                    <p class="gia">1.200.000đ</p>
                </div>
                
            </div>
            <div id="loaisanpham">
                <div class="sanpham">
                    <img src="./image/aosomi1.png" alt="">
                    <p class="tensp">Áo sơ mi nam Aristino 1SSR14</p>
                    <p class="gia">1.470.000đ</p>
                </div>
                <div class="sanpham">
                    <img src="./image/aosomi2.png" alt="">
                    <p class="tensp">ÁO SƠ MI NAM ARISTINO 1SS101S2</p>
                    <p class="gia">1.600.000đ</p>
                </div>
                <div class="sanpham">
                    <img src="./image/aosomi3.png" alt="">
                    <p class="tensp">Áo sơ mi ngắn tay Aristino Boss 1SS125S2</p>
                    <p class="gia">1.250.000đ</p>
                </div>
                <div class="sanpham">
                    <img src="./image/aosomi4.png" alt="">
                    <p class="tensp">Áo sơ mi ngắn tay Aristino Boss 1SS118S2</p>
                    <p class="gia">1.200.000đ</p>
                </div>
                
            </div>
            <div id="loaisanpham">
                <div class="sanpham">
                    <img src="./image/aosomi1.png" alt="">
                    <p class="tensp">Áo sơ mi nam Aristino 1SSR14</p>
                    <p class="gia">1.470.000đ</p>
                </div>
                <div class="sanpham">
                    <img src="./image/aosomi2.png" alt="">
                    <p class="tensp">ÁO SƠ MI NAM ARISTINO 1SS101S2</p>
                    <p class="gia">1.600.000đ</p>
                </div>
                <div class="sanpham">
                    <img src="./image/aosomi3.png" alt="">
                    <p class="tensp">Áo sơ mi ngắn tay Aristino Boss 1SS125S2</p>
                    <p class="gia">1.850.000đ</p>
                </div>
                <div class="sanpham">
                    <img src="./image/aosomi4.png" alt="">
                    <p class="tensp">Áo sơ mi ngắn tay Aristino Boss 1SS118S2</p>
                    <p class="gia">1.900.000đ</p>
                </div>
                
            </div> -->
            
        </div>

        <div class="button_chuyen_sanphamlienquan">
            <i class="ti-arrow-circle-left btn_san_pham_lien_quan_trai"></i>
            <i class="ti-arrow-circle-right btn_san_pham_lien_quan_phai"></i>
        </div>
        

    </div>


    <jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>

    <jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
    
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript" src="${base }/js/cart.js"></script>

<script>
	var soloai = document.querySelectorAll('#loaisanpham').length;
	window.onload = function() {
		
		if(soloai > 1){
			document.querySelector('.button_chuyen_sanphamlienquan').style.display = 'flex';
		}
	};
	
	var size = "";
    function gachChan(id){
        var s = document.querySelectorAll(".loaisize");
        for(i = 0; i < s.length; i++){
            s[i].style.border = "none";
        }
        document.getElementById(id).style.borderBottom = "1px solid black";
        size = document.getElementById(id).innerHTML;
    }
    
    
    const btnlienquantrai = document.querySelector('.btn_san_pham_lien_quan_trai');
    const btnlienquanphai = document.querySelector('.btn_san_pham_lien_quan_phai');
    
    var indexLienQuan = 0;
    btnlienquanphai.addEventListener('click', function() {
        indexLienQuan = indexLienQuan + 1;
        if(indexLienQuan > soloai - 1){
            indexLienQuan = 0;
        }
        document.querySelector('.danhsachsanphamlienquan').style.right = indexLienQuan * 100 + '%';
    });

    btnlienquantrai.addEventListener('click', function(){
        indexLienQuan = indexLienQuan - 1;
        if(indexLienQuan < 0){
            indexLienQuan = soloai - 1;
        }
        document.querySelector('.danhsachsanphamlienquan').style.right = indexLienQuan * 100 + '%';
    })
    
    function Tang() {
    	soLuong = parseInt(document.getElementById('soluong').innerHTML);
    	soLuong = parseInt(soLuong + 1);
    	document.getElementById('soluong').innerHTML = soLuong;
	}
    
    function Giam() {
    	soLuong = parseInt(document.getElementById('soluong').innerHTML);
    	soLuong = parseInt(soLuong - 1);
    	document.getElementById('soluong').innerHTML = soLuong;
	}
    
    function ThemSanPhamGH(_baseUrl, _productId) {
		if(size == ""){
			alert("Bạn phải chọn size");
			return;
		}
		soLuong = parseInt(document.getElementById('soluong').innerHTML);
		AddToCart(_baseUrl, _productId ,soLuong, size);
	}
    
    
</script>

</html>