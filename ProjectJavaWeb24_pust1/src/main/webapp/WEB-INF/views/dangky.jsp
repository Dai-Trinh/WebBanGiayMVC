<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
    <link rel="stylesheet" href="${base }/css/dangky.css">
    <title>Document</title>
</head>
<body>

    <form action="${base }/dang-ky" method="post" id="form-dang-ky">
    	<div id="dangky">
        <p>ĐĂNG KÝ</p>
        <div class="tendangnhap">
            <input type="text" name="tendangnhap" placeholder="Tên đăng nhập" required="required">
        </div>

        <div class="matkhau">
            <input type="password" name="matkhau" placeholder="Mật khẩu" required="required">
        </div>

        <div class="hoten">
            <input type="text" name="hoten" placeholder="Họ tên" required="required">
        </div>

        <div class="email">
            <input type="text" name="email" placeholder="Email" required="required">
        </div>

        <div class="sodienthoai">
            <input type="text" name="sodienthoai" placeholder="Số điện thoại" required="required">
        </div>

        <div class="dangky" onclick="dangKy()">
            ĐĂNG KÝ
        </div>

        <div class="dangnhap">
            <a href="${base }/login">ĐĂNG NHẬP</a>
        </div>
    </div>
    </form>
    
</body>

<script type="text/javascript">
	function dangKy() {
		document.getElementById('form-dang-ky').submit();
	}
</script>

</html>