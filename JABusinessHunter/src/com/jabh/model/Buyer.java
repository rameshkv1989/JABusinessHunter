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
	private double askingpricetxt;
	private double annual_revenue;
	private double annualprofit_loss;
	private double annualcashinflow_outflow;
	private int employeesno;
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
	
	public double getAskingpricetxt() {
		return askingpricetxt;
	}
	public void setAskingpricetxt(double askingpricetxt) {
		this.askingpricetxt = askingpricetxt;
	}
	public double getAnnual_revenue() {
		return annual_revenue;
	}
	public void setAnnual_revenue(double annual_revenue) {
		this.annual_revenue = annual_revenue;
	}
	public double getAnnualprofit_loss() {
		return annualprofit_loss;
	}
	public void setAnnualprofit_loss(double annualprofit_loss) {
		this.annualprofit_loss = annualprofit_loss;
	}
	public double getAnnualcashinflow_outflow() {
		return annualcashinflow_outflow;
	}
	public void setAnnualcashinflow_outflow(double annualcashinflow_outflow) {
		this.annualcashinflow_outflow = annualcashinflow_outflow;
	}
	public int getEmployeesno() {
		return employeesno;
	}
	public void setEmployeesno(int employeesno) {
		this.employeesno = employeesno;
	}
	
	

}
