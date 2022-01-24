package org.health.domain;

import lombok.Data;

@Data
public class FoodVO {
	private int foodNo;
	private String foodName;
	private String loc;
	private String first_cls;
	private String detail_cls;
	private double amount;
	private double kcal;
	private double protein;
	private double fat;
	private double carbo;
	private double sugar;
}
