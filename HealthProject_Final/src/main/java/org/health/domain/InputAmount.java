package org.health.domain;

import lombok.Data;
import lombok.ToString;

@ToString
@Data
public class InputAmount {
	private double input_amount;

	public InputAmount(double input_amount) {
		super();
		this.input_amount = input_amount;
	}
	
	
}
