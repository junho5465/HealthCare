package org.health.service;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.health.domain.UserFoodVO;



public interface UserFoodService {
	

	public List<UserFoodVO> EatWhat(
			@Param("userId") String userId);
}
