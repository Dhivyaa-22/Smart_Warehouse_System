package com.example.demo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Component {
	@Id
	@GeneratedValue
	private int id;
	private String cmname;
	private String cmdid;
	private String dept;
	private String lab;
	private String Supplier;
	private String date_purchase;
	private int quatity;
	
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getLab() {
		return lab;
	}
	public void setLab(String lab) {
		this.lab = lab;
	}
	public String getSupplier() {
		return Supplier;
	}
	public void setSupplier(String supplier) {
		Supplier = supplier;
	}
	public String getDate_purchase() {
		return date_purchase;
	}
	public void setDate_purchase(String date_purchase) {
		this.date_purchase = date_purchase;
	}
	public int getQuatity() {
		return quatity;
	}
	public void setQuatity(int quatity) {
		this.quatity = quatity;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCmname() {
		return cmname;
	}
	public void setCmname(String cmname) {
		this.cmname = cmname;
	}
	public String getCmdid() {
		return cmdid;
	}
	public void setCmdid(String cmdid) {
		this.cmdid = cmdid;
	}
}
