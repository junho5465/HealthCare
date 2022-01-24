package org.health.domain;

import java.io.Serializable;

import lombok.Data;

@Data
public class UserWeight implements Serializable{
	private String userId;
	private String exercise_kinds;
	private int weight_set;
	private String date;
}
