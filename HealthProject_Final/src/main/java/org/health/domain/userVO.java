package org.health.domain;

import java.util.Date;

import lombok.Data;

@Data
public class userVO {
	private String userId;
	private double height;
	private double weight;
	private double muscle;
	private double fat;
	private Date regDate;
}
