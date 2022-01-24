package org.health.domain;

import java.io.Serializable;

import lombok.Data;

@Data
public class UserCardio implements Serializable{
	private String userId;
	private String exercise_cardio;
	private String cardio_time;
	private String exer_date;
}
