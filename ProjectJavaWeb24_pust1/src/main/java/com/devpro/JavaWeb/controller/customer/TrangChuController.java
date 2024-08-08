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
public class TrangChuController extends BaseController {

	@Autowired
	SanPhamService sanPhamService;
	
	@RequestMapping(value = {"/trang-chu"}, method = RequestMethod.GET)
	public String trangchu(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
	throws IOException {
		
		List<SanPham> sanPhams = new ArrayList<SanPham>();
		sanPhams = sanPhamService.getEntitiesByNativeSQL("select * from san_pham where id_dm_pk is null order by id desc limit 16");
		
		model.addAttribute("sanPhams", sanPhams);
		
		return "customer/trangchu";
	}
}
