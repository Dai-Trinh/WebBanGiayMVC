<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${base }/css/dangnhap.css">
    <title>Document</title>
</head>
<body>
    
    <div id="dangnhap">
        <p>ĐĂNG NHẬP</p>
        <form action="${base }/login_processing_url" method="post">
        	<div class="tendangnhap">
            <input type="text" name="username" placeholder="Tên đăng nhập">
	        </div>
	
	        <div class="matkhau">
	            <input type="password" name="password" placeholder="Mật khẩu">
	        </div>
	
	        <div class="luumatkhau">
	            <p><input type="checkbox" name="remember-me"> Lưu đăng nhập</p>
	        </div>
	
	        <div class="dangnhap"> 
	        	<input type="submit" value="ĐĂNG NHẬP">
	        </div>
        </form>
        <c:if test="${not empty param.login_error}">
						<div class="alert alert-danger" role="alert">
							Tên đăng nhập hoặc mật khẩu không chính xác!
						</div>
					</c:if>

        <div class="dangky">
            <a href="${base }/dang-ky">ĐĂNG KÝ</a>
        </div>

        <div class="icon">
            <img src="./image/iconfb.png" alt="" class="fb">
            <img src="./image/icongg.png" alt="" class="gg">
            <img src="./image/icontt.png" alt="" class="tt">
        </div>




    </div>

</body>
</html>