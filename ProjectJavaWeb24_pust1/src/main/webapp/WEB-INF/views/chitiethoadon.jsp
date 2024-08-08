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
    <link rel="stylesheet" href="${base }/css/chitiethoadon.css">
    <link rel="stylesheet" href="${base }/css/menu.css">
    <title>Document</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/administrator/layout/menu.jsp"></jsp:include>
    <div id="chi-tiet-hoa-don">
        <h1>CHI TIẾT HÓA ĐƠN</h1>
        <div class="thongtinhoadon">
            <table>
                <tr>
                    <td>Mã HĐ: HĐ00${haoDon.id }</td>
                    <td>Ngày mua: ${haoDon.createdDate }</td>
                </tr>
                <tr>
                    <td>Họ tên khách hàng: ${haoDon.khachHang.hoTen }</td>
                    <td>Số điện thoại: ${haoDon.khachHang.soDienThoai }</td>
                </tr>
                <tr>
                    <td colspan="2">Địa chỉ nhận: ${haoDon.khachHang.diaChi }</td>
                </tr>
            </table>
        </div>
        <div class="thongtinsanpham">
            <table>
                <tr>
                    <th>Mã sản phẩm</th>
                    <th>Tên sản phẩm</th>
                    <th>Màu sắc</th>
                    <th>Size</th>
                    <th>Số lượng</th>
                    <th>Đơn giá</th>
                    <th>Thành tiền</th>
                </tr>
                <c:forEach items="${haoDon.chiTietHoaDons }" var="sp">
                	<tr>
                    <td>${sp.sanPham.id }</td>
                    <td>${sp.sanPham.tenSanPham }</td>
                    <td>${sp.sanPham.mauSac }</td>
                    <td>${sp.size }</td>
                    <td>${sp.soLuong }</td>
                    <td>${sp.sanPham.getEpGia() }</td>
                    <td>${sp.epThanhTien() }</td>
                	</tr>
                </c:forEach>
                
            </table>
        </div>
        <div class="tongtien">Tổng tiền: ${haoDon.getThanhTienFM() } VNĐ</div>
    </div>
</body>
</html>