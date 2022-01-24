package org.health.service;

import java.util.List;

import org.health.domain.UserExerCVO;
import org.health.persistence.UserExerCMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class UserExerCServiceImpl implements UserExerCService{
	@Setter(onMethod_ = @Autowired)
	private UserExerCMapper mapper;

	@Override	
	public List<UserExerCVO> ExerCWhat(String userId) {
		return mapper.ExerCWhat(userId);
	}

}
