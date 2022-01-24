package org.health.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UserExerWVO {
	private String userId ;
	private String exercise_kinds;
	private int weight_set;
	private String date;
}
