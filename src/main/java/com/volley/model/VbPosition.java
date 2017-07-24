package com.volley.model;

public class VbPosition extends BaseModel {

	private String positionId;
	private String positionAcronym;
	private String positionName;
	private String positionDesc;

	public String getPositionId() {
		return positionId;
	}

	public void setPositionId(String positionId) {
		this.positionId = positionId;
	}

	public String getPositionAcronym() {
		return positionAcronym;
	}

	public void setPositionAcronym(String positionAcronym) {
		this.positionAcronym = positionAcronym;
	}

	public String getPositionName() {
		return positionName;
	}

	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}

	public String getPositionDesc() {
		return positionDesc;
	}

	public void setPositionDesc(String positionDesc) {
		this.positionDesc = positionDesc;
	}
}
