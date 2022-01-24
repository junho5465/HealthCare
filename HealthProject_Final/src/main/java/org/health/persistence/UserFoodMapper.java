package org.health.persistence;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.health.domain.UserFoodVO;



public interface UserFoodMapper {
	

	public List<UserFoodVO> EatWhat(
			@Param("userId") String userId);
}
