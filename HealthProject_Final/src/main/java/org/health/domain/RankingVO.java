package org.health.domain;

import lombok.Data;

@Data
public class RankingVO {
	private String userId;
	private double point;
	private String grade;
}
