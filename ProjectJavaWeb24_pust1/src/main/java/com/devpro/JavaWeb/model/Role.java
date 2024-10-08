package com.devpro.JavaWeb.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;



@Entity
@Table(name = "role")
//implements GrantedAuthority
public class Role extends BaseEntity implements GrantedAuthority{

	@Column(name = "name", length = 45, nullable = false)
	private String name;

	@Column(name = "mota", length = 45, nullable = false)
	private String description;

	@ManyToMany(cascade = CascadeType.ALL, 
				fetch = FetchType.EAGER, 
				mappedBy = "roles")
	private Set<TaiKhoan> users = new HashSet<TaiKhoan>();

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set<TaiKhoan> getUsers() {
		return users;
	}

	public void setUsers(Set<TaiKhoan> users) {
		this.users = users;
	}

	@Override
	public String getAuthority() {
		// TODO Auto-generated method stub
		return this.name;
	}


}
