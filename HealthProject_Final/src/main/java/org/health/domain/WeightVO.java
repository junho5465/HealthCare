package org.health.domain;

import lombok.Data;

@Data
public class WeightVO {
	private String exercise_part;
	private String exercise_kinds;
	private double point;
	private String ex_explain;
	private String ex_video_link;
}
