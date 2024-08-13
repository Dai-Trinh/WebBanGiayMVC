<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="tieude">
        <div></div>
    </div>
    <div>
        <div id="content">
            <div id="content-left">
                <div class="avatar">
                    <img src="${base }/image/logoOff.png" alt="">
                    <p class="admin">ADMIN</p>
                </div>
                <hr class="nganavt">
                <div id="menu">
                    <ul>
                        <li><a href="${base }/admin/trang-chu">Quản lý sản phẩm</a></li>
                        <li><a href="${base }/admin/quan-ly-danh-muc-san-pham">Quản lý hãng sản phẩm</a></li>
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