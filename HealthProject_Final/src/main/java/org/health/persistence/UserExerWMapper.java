package org.health.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.health.domain.UserExerWVO;

public interface UserExerWMapper {

	public List<UserExerWVO> ExerWWhat(String userId);
}
