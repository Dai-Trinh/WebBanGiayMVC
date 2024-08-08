package com.devpro.JavaWeb.model;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.ibm.icu.text.DecimalFormat;

@Entity
@Table(name = "hoa_don")
public class HoaDon extends BaseEntity{

	
	@Column(name = "tong_so_luong", nullable = true)
	private Integer tongSoLuong;
	
	@Column(name = "thanh_tien", precision = 13, scale = 0, nullable = true)
	private BigDecimal thanhTien;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_kh")
	private KhachHang khachHang;
	
	
	@OneToMany(fetch = FetchType.LAZY,
			cascade = CascadeType.ALL,
			mappedBy = "hoaDon")
	private Set<ChiTietHoaDon> chiTietHoaDons = new HashSet<ChiTietHoaDon>();
	
	
	
	
	public Set<ChiTietHoaDon> getChiTietHoaDons() {
		return chiTietHoaDons;
	}

	public void setChiTietHoaDons(Set<ChiTietHoaDon> chiTietHoaDons) {
		this.chiTietHoaDons = chiTietHoaDons;
	}



	public KhachHang getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}

	public Integer getTongSoLuong() {
		return tongSoLuong;
	}

	public void setTongSoLuong(Integer tongSoLuong) {
		this.tongSoLuong = tongSoLuong;
	}

	public BigDecimal getThanhTien() {
		return thanhTien;
	}

	public void setThanhTien(BigDecimal thanhTien) {
		this.thanhTien = thanhTien;
	}
	
	public String getThanhTienFM() {
		DecimalFormat df = new DecimalFormat("#,###");
		return df.format(this.thanhTien);
	}
	
	
	
	
}
