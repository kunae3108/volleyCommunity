package com.volley.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
public abstract class BaseModel {

	@Column(name = "CREATE_DATE")
	private Timestamp createDate;
	@Column(name = "CREATE_BY")
	private String createBy;
	@Column(name = "UPDATE_DTTM")
	private Timestamp updateDttm;
	@Column(name = "UPDATE_BY")
	private String updateBy;

	public Timestamp getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}

	public String getCreateBy() {
		return createBy;
	}

	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}

	public Timestamp getUpdateDttm() {
		return updateDttm;
	}

	public void setUpdateDttm(Timestamp updateDttm) {
		this.updateDttm = updateDttm;
	}

	public String getUpdateBy() {
		return updateBy;
	}

	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}

}
