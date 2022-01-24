package org.health.domain;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;

@Data
public class Input_valueDTO  implements Serializable{
	private String  userId;
	private double user_hei;
	private double weight_input;
	private double muscle_input;
	private double fat_input;
	private Date cal_W_in;
	private Date cal_F_in;
	private Date cal_M_in;
	
	private Date food_in;
}
