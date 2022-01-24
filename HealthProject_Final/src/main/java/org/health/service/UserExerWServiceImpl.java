package org.health.service;

import java.util.List;

import org.health.domain.UserExerWVO;
import org.health.persistence.UserExerWMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
public class UserExerWServiceImpl implements UserExerWService{
	@Setter(onMethod_ = @Autowired)
	private UserExerWMapper mapper;
	@Override
	public List<UserExerWVO> ExerWWhat(String userId) {
		return mapper.ExerWWhat(userId);
	}

}
