package com.devpro.JavaWeb.controller.customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.model.HoaDon;
import com.devpro.JavaWeb.services.impl.HoaDonService;
import com.devpro.JavaWeb.services.utils.Utils;

@Controller
public class ChiTietHoaDon {

	@Autowired
	HoaDonService hoaDonService;
	
	@RequestMapping(value = {"/chi-tiet-hoa-don"}, method = RequestMethod.GET)
	public String chiTietHoaDon(final Model model,
			HttpServletRequest request,
			HttpServletResponse response) {
		Integer idhd = Integer.parseInt(request.getParameter("idhd"));
		HoaDon hoaDon = hoaDonService.getById(idhd);
		model.addAttribute("isUser", false);
		model.addAttribute("hoaDon", hoaDon);
		model.addAttribute("status", Utils.convertStatus(hoaDon.getStatus()));
		return "chitiethoadon";
	}
}
