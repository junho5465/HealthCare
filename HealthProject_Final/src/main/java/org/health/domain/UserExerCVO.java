package org.health.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UserExerCVO {
	private String userId ;
	private String exercise_cardio;
	private int cardio_time;
	private String exer_date;
}
