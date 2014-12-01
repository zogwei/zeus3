package com.taobao.zeus.store.mysql.persistence;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import com.taobao.zeus.log.Global;

/**
 * 用户信息
 * @author zhoufang
 *
 */
@Entity(name="zeus_user")
public class ZeusUser{
	
	public static final ZeusUser ADMIN=new ZeusUser(){
		public String getEmail() {return Global.getConfig("email");};
		public String getName() {return Global.getConfig("name");};
		public String getPhone() {return Global.getConfig("phone");};
		public String getUid() {return Global.getConfig("uid");};
	};
	@Id
	@GeneratedValue
	private Long id;
	@Column
	private String name;
	@Column
	private String uid;
	@Column
	private String email;
	@Column
	private String wangwang;
	@Column
	private String phone;
	@Column(name="gmt_create")
	private Date gmtCreate;
	@Column(name="gmt_modified")
	private Date gmtModified;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getWangwang() {
		return wangwang;
	}
	public void setWangwang(String wangwang) {
		this.wangwang = wangwang;
	}
	public Date getGmtCreate() {
		return gmtCreate;
	}
	public void setGmtCreate(Date gmtCreate) {
		this.gmtCreate = gmtCreate;
	}
	public Date getGmtModified() {
		return gmtModified;
	}
	public void setGmtModified(Date gmtModified) {
		this.gmtModified = gmtModified;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "ZeusUser [uid=" + uid + ", wangwang=" + wangwang + "]";
	}
}
