<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
    <link rel="stylesheet" href="${base }/css/themsanpham_admin.css">
    <link rel="stylesheet" href="${base }/css/menu.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
  
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
 
    <title>Document</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/administrator/layout/menu.jsp"></jsp:include>

   
   <sf:form modelAttribute="sanPham" action="${base }/admin/them-san-pham-spring" method="post" enctype="multipart/form-data">
   	<div class="content-them">
   <h1>${title }</h1>
   <div id="upanh">
    <p><img src="${base }/image/${sanPham.hinhAnh}" alt="" class="hienthianh"></p>
    <c:if test="${isRead }">
    	<p><input type="file" name="anhSanPham" id="" class="chonanh"></p>
    </c:if>
   </div>

   <div class="content-body">
   		<c:if test="${sanPham.id != null }">
   			<p>Mã sản phẩm <br>
        	<sf:input path="id" type="text" name="idsp" id="" readonly="true"></sf:input>
        </p>
   		</c:if>
        <p>Tên sản phẩm <br>
        <sf:input path="tenSanPham" type="text" name="tensp" id="" readonly="${isRead }"></sf:input>
        </p>
        <p>Màu sắc <br>
        <sf:input path="mauSac" type="text" name="mausac" id="" readonly="${isRead }"></sf:input>
        </p>
        
        <p>Size <br>
            <sf:input path="size" type="text" name="size" id="" readonly="${isRead }"></sf:input>
        </p>
        <p>Số lượng <br>
            <sf:input path="soLuong" type="text" name="soluong" id="" readonly="${isRead }"></sf:input>
        </p>
        <p>Đơn giá <br>
            <sf:input path="gia" type="text" name="dongia" id="" readonly="${isRead }"></sf:input>
        </p>
        
        <%-- <p> Danh mục sản phẩm <br>
            <select class="chonloaisp" id="chon" onchange="ThayDoi()">
            	<option>-------</option>
            	<c:forEach items="${danhBac1s}" var="b1">
            		<option value="${b1 }">${b1.tenDanhMuc }</option>
            	</c:forEach>
                
                
            </select>
        </p> --%>
		
		
        <%-- <p> Loại sản phẩm <br>
            <select class="chonsp" id="chonloai">
                <c:forEach items="${danhBac1s}" var="b1">
            		<c:forEach items="${b1.listDanhMucSanPhamBac2}" var="b2">
            			<option value="${b2.id }">${b2.tenDanhMuc }</option>
            		</c:forEach>
            	</c:forEach>
            </select>
        </p>
         --%>
         <p>Hãng sản phẩm</p>
         <sf:select path="danhMucSanPhamBac2.id">
         	<sf:options items="${danhMucSanPhamBac2 }" itemValue="id" itemLabel="tenDanhMuc" readonly="${isRead }"/>
         </sf:select>
         
<%--         <p>Form dáng <br>
            <sf:input path="formDang" type="text" name="" id="" readonly="true"></sf:input>
        </p> --%>
        <p>Phiên bản <br>
            <sf:textarea path="thietKe" name="" id="summernoteThietKe" cols="30" rows="10" readonly="${isRead }"></sf:textarea>
        </p>
        <p>Mô tả <br>
            <sf:textarea path="chatLieu" name="" id="summernoteChatLieu" cols="30" rows="10" readonly="${isRead }"></sf:textarea>
        </p>
        
        <p>
            <c:if test="${sanPham.id != null && !isRead}">
            	<input type="submit" name="nutchon" class="nut" value="Cập nhật">
            </c:if>
            <c:if test="${sanPham.id == null }">
            	<input type="submit" name="nutchon" class="nut" value="Thêm">
            </c:if>
            <input type="submit" name="nutchon" class="nut" value="Hủy">
        </p>
        </div>
        </div>
   </sf:form>
        
    
</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script>
	
	$(document).ready(function() {
	    $('#summernoteThietKe').summernote({
	    	height: 200,
	    	width: 800
	    });
	    
	    $('#summernoteChatLieu').summernote({
	    	height: 200,
	    	width: 800
	    })
	});

    var c = document.querySelector(".chonanh");
    var ht = document.querySelector(".hienthianh");
    c.addEventListener("change", () => {
        ht.src = URL.createObjectURL(c.files[0]);
    })
    
    function LoaiSP() {
		
	}
    
    
    
    function ThayDoi(){
		
		
	}
    
    function HienThi(arr) {
		for(let i = 0; i < arr.length; i++){
			alert(i);
		}
		
	}
    
</script>
</html>