package org.health.domain;

import java.io.Serializable;

import lombok.Data;


@Data
public class UserDietVO implements Serializable{
	private String userId;
	private String foodName;
	private double personer_dos;
	private String regDate;
	private int foodNo;
	
	
}
