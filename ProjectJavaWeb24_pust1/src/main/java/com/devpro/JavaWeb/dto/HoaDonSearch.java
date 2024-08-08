package com.devpro.JavaWeb.dto;

public class HoaDonSearch extends BaseSearchModel{

	private String tenKhachHang;
	
	private Integer idTaiKhoan;
	

	public Integer getIdTaiKhoan() {
		return idTaiKhoan;
	}

	public void setIdTaiKhoan(Integer idTaiKhoan) {
		this.idTaiKhoan = idTaiKhoan;
	}

	public String getTenKhachHang() {
		return tenKhachHang;
	}

	public void setTenKhachHang(String tenKhachHang) {
		this.tenKhachHang = tenKhachHang;
	}
	
	
	
	
}
