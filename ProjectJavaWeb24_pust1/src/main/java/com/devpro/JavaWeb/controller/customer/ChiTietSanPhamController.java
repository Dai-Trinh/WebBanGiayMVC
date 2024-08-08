package com.devpro.JavaWeb.controller.customer;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.model.SanPham;
import com.devpro.JavaWeb.services.impl.SanPhamService;

@Controller
public class ChiTietSanPhamController extends BaseController {
	@Autowired
	SanPhamService sanPhamService;

	@RequestMapping(value = {"/chi-tiet-san-pham"}, method = RequestMethod.GET)
	public String chiTietSP(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
	throws IOException {
		Integer idSanPham = Integer.parseInt(request.getParameter("id"));
		SanPham sanPham = sanPhamService.getById(idSanPham);
		model.addAttribute("sanPham",sanPham);
		String[] size = sanPham.getSize().split("/");
		
		model.addAttribute("size", size);
		
//		String[] thietKe = sanPham.getThietKe().split("-");
//		model.addAttribute("thietKe",thietKe);
//		
//		String[] chatLieu = sanPham.getChatLieu().trim().split("-");
//		model.addAttribute("chatLieu",chatLieu);
		
		Integer idDanhMuc = 0;
		if(sanPham.getDanhMucPhuKien() != null) {
			idDanhMuc = sanPham.getDanhMucPhuKien().getId();
		} else {
			idDanhMuc = sanPham.getDanhMucSanPhamBac2().getId();
		}
		
		List<SanPham> sanPhamLienQuan = new ArrayList<SanPham>();
		sanPhamLienQuan = sanPhamService.getEntitiesByNativeSQL("select * from (select *, row_number() over (order by id desc) as r from san_pham where id != "+ sanPham.getId() +" and (id_dm_sp = " + idDanhMuc + " or id_dm_pk = "+ idDanhMuc +")) as tam where r between 1 and 12");
		model.addAttribute("sanPhamLienQuan" ,sanPhamLienQuan);
		
		
		return "customer/chitietsanpham";
	}
}
