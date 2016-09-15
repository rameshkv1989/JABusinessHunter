package com.jabh.model;

import java.io.Serializable;
import java.util.Map;

public class ServiceProvider implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3797334830756973069L;
	private String packages;
	private String heading;
	private String servicetype;
	private String companyfullname;
	private String companyregdno;
	private String companywebsite;
	private String companyaddress;
	private String Country;
	private String State;
	private String City;
	private Integer Year_Established;
	private String Contact_Title;
	private String contactname;
	private Double contactno;
	private String email;
	private String companyprofile;
	private String howarewedifferent;
	private Map<Integer,String> packageIdList;
	public String getPackages() {
		return packages;
	}
	public void setPackages(String packages) {
		this.packages = packages;
	}
	public String getHeading() {
		return heading;
	}
	public void setHeading(String heading) {
		this.heading = heading;
	}
	public String getServicetype() {
		return servicetype;
	}
	public void setServicetype(String servicetype) {
		this.servicetype = servicetype;
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
	public String getCompanywebsite() {
		return companywebsite;
	}
	public void setCompanywebsite(String companywebsite) {
		this.companywebsite = companywebsite;
	}
	public String getCompanyaddress() {
		return companyaddress;
	}
	public void setCompanyaddress(String companyaddress) {
		this.companyaddress = companyaddress;
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
	public String getHowarewedifferent() {
		return howarewedifferent;
	}
	public void setHowarewedifferent(String howarewedifferent) {
		this.howarewedifferent = howarewedifferent;
	}
	public Map<Integer, String> getPackageIdList() {
		return packageIdList;
	}
	public void setPackageIdList(Map<Integer, String> packageIdList) {
		this.packageIdList = packageIdList;
	}
}
