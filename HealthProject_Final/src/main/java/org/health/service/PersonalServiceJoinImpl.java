package org.health.service;

import java.util.List;

import org.health.domain.PersonalJoinVO;
import org.health.persistence.PersonalServiceJoinMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class PersonalServiceJoinImpl implements PersonalServiceJoin{
	@Setter(onMethod_ = @Autowired)
	private PersonalServiceJoinMapper mapper;

	@Override
	public List<PersonalJoinVO> getInfo(String userId) {
		log.info("조회하려는 사용자 아이디 : "+userId);
		return mapper.getInfo(userId);
	}

	@Override
	public List<PersonalJoinVO> getRadar(String userId) {
		// TODO Auto-generated method stub
		return mapper.getRadar(userId);
	}
}
