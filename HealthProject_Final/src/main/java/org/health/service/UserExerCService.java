package org.health.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.health.domain.UserExerCVO;

public interface UserExerCService {

	public List<UserExerCVO> ExerCWhat( String userId);

}
