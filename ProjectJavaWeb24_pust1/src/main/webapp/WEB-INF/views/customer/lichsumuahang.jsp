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
    <link rel="stylesheet" href="${base }/css/lichsumuahang.css">
    <link rel="stylesheet" href="${base }/css/header1.css">
    <link rel="stylesheet" href="${base }/css/footer1.css">
    <link rel="stylesheet" href="${base }/icon/themify-icons/themify-icons.css">
    <link type="text/css" rel="stylesheet" href="${base }/css/simplePagination.css"/>
    <title>Document</title>
</head>
<body>
    <div id="body-content">
        <h2>LỊCH SỬ MUA HÀNG</h2>
        <!-- <div class="tim-kien-hoa-don">
            <form action="" method="get">
                <input type="text" placeholder="Nhập tên khách hàng" name="tenkhachhang" id="" class="tim-kiem-ten">
                <input type="submit" name="" id="" value="Tìm kiếm">
            </form>
        </div> -->
        <table>
            <tr>
                <th>Mã HĐ</th>
                <th>Tên khách hàng</th>
                <th>Ngày mua</th>
                <th>Số lượng</th>
                <th>Thành tiền</th>
                <th>Trạng thái</th>
                <th></th>
            </tr>
            
            <c:if test="${hoaDons.data != null }">
            <p>Hello</p>
            	<c:forEach items="${hoaDons.data }" var="hd">
            		<tr>
	                <td>HĐ${hd.id }</td>
	                <td>${hd.khachHang.hoTen }</td>
	                <td>${hd.createdDate }</td>
	                <td>${hd.tongSoLuong }</td>
	                <td>${hd.getThanhTienFM() }đ</td>
	                <td>Đang xử lý</td>
	                <td>
	                    <input type="button" value="Chi tiết" onclick="ChiTietHoaDon(${hd.id})">
	                </td>
           		 </tr>
            	</c:forEach>
            </c:if>
            <%-- <c:forEach items="${khachHangs }" var="kh">
            	<c:if test="${kh.hoaDons != null }">
            	<c:forEach items="${kh.hoaDons }" var="hd">
            	<tr>
	                <td>HĐ${hd.id }</td>
	                <td>${hd.khachHang.hoTen }</td>
	                <td>${hd.createdDate }</td>
	                <td>${hd.tongSoLuong }</td>
	                <td>${hd.getThanhTienFM() }đ</td>
	                <td>Đang xử lý</td>
	                <td>
	                    <input type="submit" value="Chi tiết">
	                </td>
           		 </tr>
            </c:forEach>
            </c:if>
            </c:forEach> --%>
            
            
        </table>
    </div>
    
    <div id="phan-trang">
    	<form action="${base }/lich-su-mua-hang" method="post">
    		<input type="submit" id="so-trang" name="sotrang" style="display: none;">
    	</form>
    	<div id="paging"></div>
    </div>
    
    <jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
    
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript" src="${base }/js/jquery.simplePagination.js"></script>
<script type="text/javascript">
	
	$(document).ready(function() {
		$("#paging").pagination({
	    	currentPage: ${hoaDons.currentPage},
	        items: ${hoaDons.totalItems},
	        itemsOnPage: ${hoaDons.sizeOfPage},
	        cssStyle: 'light-theme',
	        onPageClick: function(pageNumber, event) {
				$('#so-trang').val(pageNumber),
				$('#so-trang').trigger('click');
			}
	    });
	})
	
	function ChiTietHoaDon(idhd) {
		window.location = "/chi-tiet-hoa-don?idhd=" + idhd;	
	}
	
</script>
</html>