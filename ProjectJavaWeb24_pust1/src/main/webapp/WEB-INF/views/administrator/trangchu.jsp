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
    <link rel="stylesheet" href="${base}/css/trangchuadmin1.css">
    <link rel="stylesheet" href="${base }/css/menu.css">
    <link rel="stylesheet" href="${base }/icon/themify-icons/themify-icons.css">
    <link type="text/css" rel="stylesheet" href="${base}/css/simplePagination.css"/>
    
    <title>Admin</title>
</head>
<body>
            <jsp:include page="/WEB-INF/views/administrator/layout/menu.jsp"></jsp:include>
            
            <form action="${base }/admin/trang-chu" method="get">
            	<div id="content-right">
                <div class="content-right-top">
                    <div class="right-top-left">
                    	
                        <input type="text" placeholder="Tìm kiếm tên...." name="timkiemten" class="timkiemten" value="${sanPhamSearch.keyword }">
                        
                        <select name="timkiemloaisp" id="searchiiddanhmuc">
                            <option value="0" selected>All</option>
                            <c:forEach items="${danhMucSanPhamBac2 }" var="b2">
                            
                            <c:if test="${b2.id == sanPhamSearch.danhMucId }">
                            	<option value="${b2.id }" selected>${b2.tenDanhMuc }</option>
                            </c:if>
                            <c:if test="${b2.id != sanPhamSearch.danhMucId }">
                            	<option value="${b2.id }">${b2.tenDanhMuc }</option>
                            </c:if>
                            	
                            </c:forEach>
                            
                        </select>
                        <input type="submit" value="Tìm kiếm" class="timkiem" id="timkiem"/>
                    </div>
                    <div class="right-top-right">
                        <input type="button" value="Thêm sản phẩm" onclick="ThemSanPham()">
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
                <div class="content-right-bottom">
                    <div class="dongsanpham">
                        <table class="bangsanpham">
                            <tr class="dontieude">
                                <th>STT</th>
                                <th>Ảnh</th>
                                <th>Tên sản phẩm</th>
                                <th>Loại sản phẩm</th>
                                <th>Số lượng</th>
                                <th>Đơn giá</th>
                                <th>Trạng thái</th>
                                <th></th>
                            </tr>
                            
                            <c:forEach items="${sanPhams.data }" var="sp">
                            	<tr>
                                <td>${index = index + 1}</td>
                                <td><img src="${base }/image/${sp.hinhAnh}" alt="áo polo"></td>
                                <td>${sp.tenSanPham }</td>
                                <td>${sp.danhMucSanPhamBac2.tenDanhMuc }</td>
                                <td>${sp.soLuong }</td>
                                <td>${sp.getEpGia() }</td>
                                <td>
                                	<c:if test="${sp.status == 1 }">
                                		<i class="ti-check"></i>
                                	</c:if>
                                	<c:if test="${sp.status == 0 }">
                                		<i class="ti-close"></i>
                                	</c:if>
                                </td>
                                <td>
                                    <input type="button" name="" id="" value="Sửa" onclick="SuaSanPham('${sp.id}')">
                                    <input type="button" name="" id="" value="Xóa" onclick="XacNhanXoa(${sp.id})">
                                    <input type="button" name="" id="" value="Chi tiết">
                                </td>
                            </tr>
                            </c:forEach>
                            
                            
                            <%-- <tr>
                                <td>2</td>
                                <td><img src="${base }/image/ao1.png" alt="áo polo"></td>
                                <td>Áo Polo</td>
                                <td>Áo</td>
                                <td>2000</td>
                                <td>200.000đ</td>
                                <td>
                                    <input type="button" name="" id="" value="Sửa">
                                    <input type="button" name="" id="" value="Xóa">
                                    <input type="button" name="" id="" value="Chi tiết">
                                </td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td><img src="${base }/image/ao1.png" alt="áo polo"></td>
                                <td>Áo Polo</td>
                                <td>Áo</td>
                                <td>2000</td>
                                <td>200.000đ</td>
                                <td>
                                    <input type="button" name="" id="" value="Sửa">
                                    <input type="button" name="" id="" value="Xóa">
                                    <input type="button" name="" id="" value="Chi tiết">
                                </td>
                            </tr> --%>
                        </table>
                    </div>
                </div>
            
            <div class="cuasoxacnhan">
                    <div class="tieude-xacnhan">
                        <p>Xác nhận</p>
                    </div>
                    <div class="noidung-xacnhan">
                        <p>Bạn có chắc muốn xóa không?</p>
                    </div>
                    <div class="nut-xacnhan">
                        <input type="button" value="Có" onclick="DongY()">
                        <input type="button" value="Không" onclick="TuChoi()">
                    </div>
                </div>
            </div>
            <div class="clear"></div>
            </form>
         
         <div class="clear"></div>
         
         <div class="chuyetrang">
            <form action="${base }/admin/trang-chu" method="post">
            	<%-- <c:forEach begin="1" end="${sotrang }" var="st">
            		<input type="submit" name="chuyen" value="${st }">
            	</c:forEach> --%>
            	<input type="submit" id="sotrang" name="sotrang" value="" style="display: none">
        
            </form>
            
            <div id="paging"></div>
         </div>
         
        
   
</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="${base}/js/jquery.simplePagination.js"></script>
<script type="text/javascript">
	
	function  ThemSanPham() {
		window.location = "/admin/them-san-pham";
		
	}
	
	function SuaSanPham(id) {
	window.location = "/admin/sua-san-pham?id=" + id;
	}
	
	var idXoa = 0;

	function XacNhanXoa(i){
	    document.querySelector('.cuasoxacnhan').style.display = "block";
	    idXoa = i;
	}

	function TuChoi(){
	    document.querySelector('.cuasoxacnhan').style.display = "none";
	}
	
	function DongY() {
		TuChoi();
		XoaSanPham(idXoa);
	}
	
	function  XoaSanPham(idXoa) {
		var data = {
				id: idXoa,
				tenSanPham: "",
				soLuong: "",
				size: "",
				gia: "",
				formDang: "",
				thietKe: "",
				
		};
		jQuery.ajax({
			url: "/admin/xoa-san-pham",
			type: "post",
			contentType: "application/json",
			data: JSON.stringify(data),
			dataType: "json",
			success: function(jsonResult) {
				alert(jsonResult.message);
				window.location = "/admin/trang-chu";
			},
			error: function(jqXhr, textStatus, errorMessage) {
				alert("error");
			}
		});
	}
	
	$(document).ready(function() {
		$("#searchiiddanhmuc").val(${sanPhamSearch.danhMucId});
		
		$("#paging").pagination({
			currentPage: ${sanPhams.currentPage},
	        items: ${sanPhams.totalItems},
	        itemsOnPage: ${sanPhams.sizeOfPage},
	        cssStyle: 'light-theme',
	        onPageClick: function(pageNumber, event){
	        	$('#sotrang').val(pageNumber);
	        	$('#sotrang').trigger('click');
	        },
	        
	    });
	});
	
	
</script>

</html>

