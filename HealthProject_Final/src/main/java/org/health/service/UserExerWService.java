package org.health.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.health.domain.UserExerWVO;

public interface UserExerWService {

	public List<UserExerWVO> ExerWWhat(String userId);
}
