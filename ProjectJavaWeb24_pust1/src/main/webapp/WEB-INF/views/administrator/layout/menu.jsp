<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="tieude">
        <div></div>
    </div>
    <div>
        <div id="content">
            <div id="content-left">
                <div class="avatar">
                    <img src="${base }/image/avatar_admin.png" alt="">
                    <p class="admin">ADMIN</p>
                </div>
                <hr class="nganavt">
                <div id="menu">
                    <ul>
                        <li><a href="${base }/admin/trang-chu">Bảo trì sản phẩm</a></li>
                        <li><a href="${base }/admin/quan-ly-danh-muc-san-pham">Bảo trì danh mục sản phẩm</a></li>
                        <li><a href="${base }/admin/quan-ly-phu-kien">Bảo trì phụ kiện</a></li>
                        <li><a>Bảo trì thương hiệu</a></li>
                        <li><a>Bảo trì cửa hàng</a></li>
                        <li><a href="/admin/quan-ly-hoa-don">Quản lý hóa đơn</a></li>
                        <li><a href="/admin/quan-ly-tai-khoan">Quản lý tài khoản</a></li>
                        
                    </ul>
                </div>
                
                <div id="other">
                    <p>Thông tin</p>
                    <p><a href="${base }/logout">Đăng xuất (${userLogined.email })</a></p>
                </div>
            </div>
            </div>
            </div>