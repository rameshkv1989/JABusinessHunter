package com.jabh.model;

import java.io.Serializable;
import java.util.Map;

public class Franchise implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 7985495920385742366L;
	private Integer packages;
	private String heading;
	private String businesstype;
	private String businesscategory;
	private String businesssubcategory;
	private String Country;
	private String State;
	private String City;
	private String companyfullname;
	private String companyregdno;
	private Integer Year_Established;
	private String Contact_Title;
	private String contactname;
	private Double contactno;
	private String contactwebsite;
	private String email;
	private String companyprofile;
	private String whythisbusiness;
	private Map<Integer,String> packageIdList;
	public Integer getPackages() {
		return packages;
	}
	public void setPackages(Integer packages) {
		this.packages = packages;
	}
	public String getHeading() {
		return heading;
	}
	public void setHeading(String heading) {
		this.heading = heading;
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
	public String getCompanyfullname() {
		return companyfullname;
	}
	public void setCompanyfullname(String companyfullname) {
		this.companyfullname = companyfullname;
	}
	public String getCompanyregdno() {
		return companyregdno;
	}
	public void setCompanyregdno(String companyregdno) {
		this.companyregdno = companyregdno;
	}
	public Integer getYear_Established() {
		return Year_Established;
	}
	public void setYear_Established(Integer year_Established) {
		Year_Established = year_Established;
	}
	public String getContact_Title() {
		return Contact_Title;
	}
	public void setContact_Title(String contact_Title) {
		Contact_Title = contact_Title;
	}
	public String getContactname() {
		return contactname;
	}
	public void setContactname(String contactname) {
		this.contactname = contactname;
	}
	public Double getContactno() {
		return contactno;
	}
	public void setContactno(Double contactno) {
		this.contactno = contactno;
	}
	public String getContactwebsite() {
		return contactwebsite;
	}
	public void setContactwebsite(String contactwebsite) {
		this.contactwebsite = contactwebsite;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCompanyprofile() {
		return companyprofile;
	}
	public void setCompanyprofile(String companyprofile) {
		this.companyprofile = companyprofile;
	}
	public String getWhythisbusiness() {
		return whythisbusiness;
	}
	public void setWhythisbusiness(String whythisbusiness) {
		this.whythisbusiness = whythisbusiness;
	}
	public Map<Integer, String> getPackageIdList() {
		return packageIdList;
	}
	public void setPackageIdList(Map<Integer, String> packageIdList) {
		this.packageIdList = packageIdList;
	}
}