package org.health.service;

import java.util.Date;
import java.util.List;

import org.health.domain.PersonalVO;
import org.health.persistence.PersonalMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class PersonalServiceImpl implements PersonalService{
	@Setter(onMethod_ = @Autowired)
	private PersonalMapper mapper;

	@Override
	public List<PersonalVO> getAverage() {
		return mapper.getAverage();
	}

	@Override
	public int check_date(String date) {
		return mapper.check_date(date);
	}

	@Override
	public void insert_w(String userId ,double height ,double weight ,Date regDate) {
		mapper.insert_w(userId,height,weight ,regDate);
	}
	@Override
	public boolean update_w(String userId, double weight, Date regDate) {
		boolean result = mapper.update_w(userId, weight, regDate) == true;
		return result;
	}

	@Override
	public void insert_m(String userId ,double height ,double muscle ,Date regDate) {
		mapper.insert_m(userId,height,muscle ,regDate);
	}
	@Override
	public boolean update_m(String userId, double muscle, Date regDate) {
		boolean result = mapper.update_m(userId, muscle, regDate) == true;
		return result;
	}
	
	@Override
	public void insert_f(String userId ,double height ,double fat ,Date regDate) {
		mapper.insert_f(userId,height,fat ,regDate);
	}
	@Override
	public boolean update_f(String userId, double fat, Date regDate) {
		boolean result = mapper.update_f(userId, fat, regDate) == true;
		return result;
	}
	


}
