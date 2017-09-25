package com.volley.utilities;

import java.sql.Timestamp;
import java.util.Date;

public interface ProjectConstant {

	public final String ADMIN = "Admin";
	public final String SYSTEM = "System";
	public final Timestamp currentTime = new Timestamp((new Date()).getTime());
	public final Date date = new Date();
}
