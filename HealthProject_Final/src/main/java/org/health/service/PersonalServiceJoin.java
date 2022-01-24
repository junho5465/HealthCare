package org.health.service;

import java.util.List;

import org.health.domain.PersonalJoinVO;

public interface PersonalServiceJoin {
	public List<PersonalJoinVO> getInfo(String userId);
	public List<PersonalJoinVO> getRadar(String userId);
}
