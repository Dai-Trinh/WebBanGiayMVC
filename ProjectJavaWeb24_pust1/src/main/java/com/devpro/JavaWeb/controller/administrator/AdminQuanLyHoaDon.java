package com.devpro.JavaWeb.controller.administrator;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.dto.HoaDonSearch;
import com.devpro.JavaWeb.services.impl.HoaDonService;

@Controller
public class AdminQuanLyHoaDon extends BaseController{

	@Autowired
	HoaDonService hoaDonService;
	
	HoaDonSearch hoaDonSearch = new HoaDonSearch();
	
	@RequestMapping(value = {"/admin/quan-ly-hoa-don"}, method = RequestMethod.GET)
	public String quanLyHoaDon(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
	throws IOException {
		
		hoaDonSearch.setTenKhachHang(request.getParameter("tenkhachhang"));
		hoaDonSearch.setSizeOfPage(6);
		hoaDonSearch.setPage(1);
		
		model.addAttribute("hoaDons", hoaDonService.searchHoaDon(hoaDonSearch));
		return "administrator/quanlyhoadon";
	}
	
	@RequestMapping(value = {"/admin/quan-ly-hoa-don"}, method = RequestMethod.POST)
	public String quanLyHoaDonPOST(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
	throws IOException {
		
		hoaDonSearch.setPage(Integer.parseInt(request.getParameter("sotrang")));
		
		model.addAttribute("hoaDons", hoaDonService.searchHoaDon(hoaDonSearch));
		return "administrator/quanlyhoadon";
	}
}
