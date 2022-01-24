package org.health.service;



import java.util.List;

import org.health.domain.RankingVO;
import org.health.persistence.RankMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
public class RankServiceImpl implements RankService{
	@Setter(onMethod_ = @Autowired)
	private RankMapper mapper;
	
	@Override
	public List<RankingVO> getfirst(){
		// TODO Auto-generated method stub
		log.info("=============1등을 가져온다==============");
		 return mapper.getfirst();
	}
	
	@Override
	public List<RankingVO> getsecond(){
		// TODO Auto-generated method stub
		log.info("=============2등을 가져온다==============");
		
		List<RankingVO> second=	mapper.getsecond();
		 log.info(second + "============================");
		 log.info("size :" + second.size() );
		 return second;
	}
	
	@Override
	public List<RankingVO> getthird(){
		// TODO Auto-generated method stub
		log.info("=============3등을 가져온다==============");
		
		List<RankingVO> third=	mapper.getthird();
		 log.info(third + "============================");
		 log.info("size :" + third.size() );
		 return third;
	}

	@Override
	public List<RankingVO> leftover(){
		// TODO Auto-generated method stub
		log.info("=============4등부터 가져온다.....!!!!==============");
		
		List<RankingVO> list=	mapper.leftover();
		 log.info(list + "============================");
		 log.info("size :" + list.size() );
		 return list;
	}
}
