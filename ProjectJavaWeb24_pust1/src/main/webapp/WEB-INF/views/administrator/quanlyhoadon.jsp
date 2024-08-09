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
    <link rel="stylesheet" href="${base }/css/quanlyhoadon_admin1.css">
    <link rel="stylesheet" href="${base }/css/menu.css">
    <link type="text/css" rel="stylesheet" href="${base }/css/simplePagination.css"/>
    <title>Document</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/administrator/layout/menu.jsp"></jsp:include>
	<div id="menu1">
		
	</div>
    <div id="body-content">
    	<h1>QUẢN LÝ HÓA ĐƠN</h1>
    	<div class="tim-kien-hoa-don">
            <form action="" method="get">
                <input type="text" placeholder="Nhập tên khách hàng..." name="tenkhachhang" id="" class="tim-kiem-ten">
                <input type="submit" name="" id="" value="Tìm kiếm">
            </form>
        </div>
        <table>
            <tr>
                <th>Mã HĐ</th>
                <th>Tên khách hàng</th>
                <th>Số điện thoại</th>
                <th>Ngày mua</th>
                <th>Tổng số lượng</th>
                <th>Thành tiền</th>
                <th>Trạng thái</th>
                <th></th>
            </tr>
            <c:forEach items="${hoaDons.data }" var="hoaDon">
            	<tr>
                <td>HĐ0${hoaDon.id }</td>
                <td>${hoaDon.khachHang.hoTen }</td>
                <td>${hoaDon.khachHang.soDienThoai }</td>
                <td>${hoaDon.createdDate }</td>
                <td>${hoaDon.tongSoLuong }</td>
                <td>${hoaDon.getThanhTienFM()}đ</td>
                <td>${hoaDon.statusString }</td>
                <td>
                    <input type="button" onclick="ChiTietHoaDon('${hoaDon.id}')" value="Chi tiết">
                </td>
            </tr>
            </c:forEach>
            
            
        </table>
        <div class="phantrang">
		    <form action="${base }/admin/quan-ly-hoa-don" method="post">
		    	<input type="submit" value="" name="sotrang" id="sotrang" style="display: none;"/>
		    </form>
		    <div id="paging"></div>
    </div>
    </div>
    <div class="clear"></div>
    
    
</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript" src="${base }/js/jquery.simplePagination.js"></script>
<script type="text/javascript">
	function ChiTietHoaDon(idhd) {
		window.location = "/admin/chi-tiet-hoa-don?idhd=" + idhd;
	}
	
	$(document).ready(function() {
		$("#paging").pagination({
			currentPage: ${hoaDons.currentPage},
			items: ${hoaDons.totalItems},
			itemsOnPage: ${hoaDons.sizeOfPage},
			cssStyle: 'light-theme',
			onPageClick: function(pageNumber, event) {
				$("#sotrang").val(pageNumber);
				$("#sotrang").trigger('click');
			}
		});
	})
</script>

</html>