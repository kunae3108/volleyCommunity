package com.volley.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "VB_POSITION")
@Table(name = "VB_POSITION")
public class VbPosition extends BaseModel {

	@Id
	@GeneratedValue
	@Column(name = "POSITION_ID")
	private Integer positionId;

	@Column(name = "POSITION_ACRONYM")
	private String positionAcronym;

	@Column(name = "POSITION_NAME_TH")
	private String positionNameTh;

	@Column(name = "POSITION_NAME_EN")
	private String positionNameEn;

	@Column(name = "POSITION_DESC")
	private String positionDesc;

	public Integer getPositionId() {
		return positionId;
	}

	public void setPositionId(Integer positionId) {
		this.positionId = positionId;
	}

	public String getPositionAcronym() {
		return positionAcronym;
	}

	public void setPositionAcronym(String positionAcronym) {
		this.positionAcronym = positionAcronym;
	}

	public String getPositionNameTh() {
		return positionNameTh;
	}

	public void setPositionNameTh(String positionNameTh) {
		this.positionNameTh = positionNameTh;
	}

	public String getPositionNameEn() {
		return positionNameEn;
	}

	public void setPositionNameEn(String positionNameEn) {
		this.positionNameEn = positionNameEn;
	}

	public String getPositionDesc() {
		return positionDesc;
	}

	public void setPositionDesc(String positionDesc) {
		this.positionDesc = positionDesc;
	}

	@Override
	public String toString() {
		return "VbPosition [positionId=" + positionId + ", positionAcronym=" + positionAcronym + ", positionNameTh="
				+ positionNameTh + ", positionNameEn=" + positionNameEn + ", positionDesc=" + positionDesc + "]";
	}

}
