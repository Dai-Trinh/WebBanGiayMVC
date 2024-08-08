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
    <link rel="stylesheet" href="${base }/css/timkiemsanpham.css">
    <link rel="stylesheet" href="${base }/css/header1.css">
    <link rel="stylesheet" href="${base }/css/footer1.css">
    <link rel="stylesheet" href="${base }/icon/themify-icons/themify-icons.css">
    <link type="text/css" rel="stylesheet" href="${base}/css/simplePagination.css"/>
    <title>Document</title>
</head>
<body>
    <div id="body-search">
        <div class="tim-kiem">
            <form action="${base }/tim-kiem-san-pham" method="get" id="form-tim-kiem-1">
                <input type="search" placeholder="Nhập tên sản phẩm" value="${tenSp }" name="tensanpham" class="ten-san-pham" >
                
                <i class="ti-search" onclick="timKiem()"></i>
            </form>
        </div>

        <div class="san-pham-tim-kiem">
            <p class="so-san-pham">Có ${soSP } sản phẩm tìm thấy</p>
            <c:forEach items="${sanPhams.data }" var="sp">
            	<div class="dong-san-pham" onclick="ChiTietSanPham('${sp.id}')">
                <img src="${base }/image/${sp.hinhAnh }" alt="">
                <div class="thong-tin-san-pham">
                    <h2 class="ten-san-pham">${sp.tenSanPham }</h2>
                    <p class="mau-sac">${sp.mauSac }</p>
                    <p class="giá">${sp.getEpGia() }đ</p>
                     </div>
                </div>
            </c:forEach>
            
                
           
            <!-- <div class="dong-san-pham">
                <img src="./image/ALS06302.png" alt="">
                <div class="thong-tin-san-pham">
                    <h2 class="ten-san-pham">Áo sơ mi dài tay Aristino ALS22502</h2>
                    <p class="mau-sac">Màu: đen</p>
                    <p class="giá">700000</p>
                </div>
                
            </div> -->
        </div>

        <div class="phan-trang">
        	<form action="${base }/tim-kiem-san-pham" method="post">
        		<input type="submit" id="sotrang" name="sotrang" style="display: none;">
        	</form>
            <div id="paging"></div>
            
        </div>
    </div>
    <jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
</body>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="${base}/js/jquery.simplePagination.js"></script>
<script>
function ChiTietSanPham(id) {
	window.location = "/chi-tiet-san-pham?id=" + id;
}

function timKiem() {
	var tensp = document.querySelector('.ten-san-pham').value;
	if(tensp != ""){
		document.getElementById('form-tim-kiem-1').submit();
	}
	
}

$(document).ready(function() {
	$('#paging').pagination({
		currentPage: ${sanPhams.currentPage},
        items: ${sanPhams.totalItems},
        itemsOnPage: ${sanPhams.sizeOfPage},
        cssStyle: 'light-theme',
        onPageClick: function(pageNumber, event) {
			$("#sotrang").val(pageNumber);
			$("#sotrang").trigger('click');
		}
    });
});
</script>
</html>