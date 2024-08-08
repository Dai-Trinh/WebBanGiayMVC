package com.devpro.JavaWeb.dto;

public class SanPhamSearch extends BaseSearchModel{

	private String keyword;
	
	private String danhMucId;
	
	private String status;
	

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getDanhMucId() {
		return danhMucId;
	}

	public void setDanhMucId(String danhMucId) {
		this.danhMucId = danhMucId;
	}
	
	
	
}
