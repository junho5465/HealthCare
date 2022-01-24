package org.health.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UserFoodVO {
	private String userId;
	private String foodName;
	private int personer_dos ;
	private int foodNo;
	private String regDate;
}
