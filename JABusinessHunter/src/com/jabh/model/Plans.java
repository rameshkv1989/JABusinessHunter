package com.jabh.model;

import java.io.Serializable;

public class Plans implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6175856557733397961L;
	private String duration;
	private float standardTotalCost;
	private float standardCostofDay;
	private float featuredTotalCost;
	private float featuredCostofDay;
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public float getStandardTotalCost() {
		return standardTotalCost;
	}
	public void setStandardTotalCost(float standardTotalCost) {
		this.standardTotalCost = standardTotalCost;
	}
	public float getStandardCostofDay() {
		return standardCostofDay;
	}
	public void setStandardCostofDay(float standardCostofDay) {
		this.standardCostofDay = standardCostofDay;
	}
	public float getFeaturedTotalCost() {
		return featuredTotalCost;
	}
	public void setFeaturedTotalCost(float featuredTotalCost) {
		this.featuredTotalCost = featuredTotalCost;
	}
	public float getFeaturedCostofDay() {
		return featuredCostofDay;
	}
	public void setFeaturedCostofDay(float featuredCostofDay) {
		this.featuredCostofDay = featuredCostofDay;
	}
	
	
	
}
