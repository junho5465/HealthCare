package org.health.service;

import java.util.List;

import org.health.domain.UserFoodVO;
import org.health.persistence.UserFoodMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
public class UserFoodServiceImpl implements UserFoodService{
	@Setter(onMethod_ = @Autowired)
	private UserFoodMapper mapper;

	@Override
	public List<UserFoodVO> EatWhat(String userId) {
		return mapper.EatWhat(userId);
	}
}
