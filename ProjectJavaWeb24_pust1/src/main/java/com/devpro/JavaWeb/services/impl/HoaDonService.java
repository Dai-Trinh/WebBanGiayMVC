package com.devpro.JavaWeb.services.impl;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.devpro.JavaWeb.dto.HoaDonSearch;
import com.devpro.JavaWeb.model.HoaDon;
import com.devpro.JavaWeb.services.BaseService;
import com.devpro.JavaWeb.services.PagerData;

@Service
public class HoaDonService extends BaseService<HoaDon> {

	@Override
	protected Class<HoaDon> clazz() {
		// TODO Auto-generated method stub
		return HoaDon.class;
	}
	
	public PagerData<HoaDon> searchHoaDon(HoaDonSearch hoaDonSearch){
		String dieuKien = "";
		if(!StringUtils.isEmpty(hoaDonSearch.getTenKhachHang())) {
			dieuKien = " and ho_ten like '%" + hoaDonSearch.getTenKhachHang() + "%'";
		}
		
		if(!StringUtils.isEmpty(hoaDonSearch.getIdTaiKhoan())) {
			dieuKien += " and id_tai_khoan = " + hoaDonSearch.getIdTaiKhoan();
		}
		
		String sql = "SELECT * FROM hoa_don inner join khach_hang on hoa_don.id_kh = khach_hang.id where 1=1 " + dieuKien + " order by hoa_don.id desc";
		
		super.setSizeOfPage(hoaDonSearch.getSizeOfPage());
		return this.getEntitiesByNativeSQL(sql, hoaDonSearch.getPage());
	}
	


}
