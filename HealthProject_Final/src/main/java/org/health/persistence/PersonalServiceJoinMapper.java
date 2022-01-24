package org.health.persistence;

import java.util.List;

import org.health.domain.PersonalJoinVO;

public interface PersonalServiceJoinMapper {
	public List<PersonalJoinVO> getInfo(String userId);
	public List<PersonalJoinVO> getRadar(String userId);
}
