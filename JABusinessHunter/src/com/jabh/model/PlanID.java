package com.jabh.model;

import java.io.Serializable;

public class PlanID implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8786455074034439180L;
	private int planID;
	private int description;
	public int getPlanID() {
		return planID;
	}
	public void setPlanID(int planID) {
		this.planID = planID;
	}
	public int getDescription() {
		return description;
	}
	public void setDescription(int description) {
		this.description = description;
	}
	
}
