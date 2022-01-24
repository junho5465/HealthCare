package org.health.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.health.domain.UserExerCVO;

public interface UserExerCMapper {

	public List<UserExerCVO> ExerCWhat( String userId);

}
