package com.jabh.model;

import java.io.Serializable;

public class Buyer implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6619502181560906201L;
	private String areaofinterest;
	private String businesstype;
	private String businesscategory;
	private String businesssubcategory;
	private String Country;
	private String State;
	private String City;
	private String cityText;
	private Double askingpricetxt;
	private Double annual_revenue;
	private Double annualprofit_loss;
	private Double annualcashinflow_outflow;
	private Integer employeesno;
	public String getAreaofinterest() {
		return areaofinterest;
	}
	public void setAreaofinterest(String areaofinterest) {
		this.areaofinterest = areaofinterest;
	}
	public String getBusinesstype() {
		return businesstype;
	}
	public void setBusinesstype(String businesstype) {
		this.businesstype = businesstype;
	}
	public String getBusinesscategory() {
		return businesscategory;
	}
	public void setBusinesscategory(String businesscategory) {
		this.businesscategory = businesscategory;
	}
	public String getBusinesssubcategory() {
		return businesssubcategory;
	}
	public void setBusinesssubcategory(String businesssubcategory) {
		this.businesssubcategory = businesssubcategory;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public Double getAskingpricetxt() {
		return askingpricetxt;
	}
	public void setAskingpricetxt(Double askingpricetxt) {
		this.askingpricetxt = askingpricetxt;
	}
	public Double getAnnual_revenue() {
		return annual_revenue;
	}
	public void setAnnual_revenue(Double annual_revenue) {
		this.annual_revenue = annual_revenue;
	}
	public Double getAnnualprofit_loss() {
		return annualprofit_loss;
	}
	public void setAnnualprofit_loss(Double annualprofit_loss) {
		this.annualprofit_loss = annualprofit_loss;
	}
	public Double getAnnualcashinflow_outflow() {
		return annualcashinflow_outflow;
	}
	public void setAnnualcashinflow_outflow(Double annualcashinflow_outflow) {
		this.annualcashinflow_outflow = annualcashinflow_outflow;
	}
	public Integer getEmployeesno() {
		return employeesno;
	}
	public void setEmployeesno(Integer employeesno) {
		this.employeesno = employeesno;
	}
	public String getCityText() {
		return cityText;
	}
	public void setCityText(String cityText) {
		this.cityText = cityText;
	}
	
}
