package org.health.service;

import java.util.List;

import org.health.domain.CardioVO;
import org.health.domain.UserCardioListVO;
import org.health.domain.UserWeightListVO;
import org.health.domain.WeightVO;
import org.health.persistence.ExerciseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Service
@Log4j
public class ExerciseServiceImpl implements ExerciseService {
	@Setter(onMethod_=@Autowired)
	private ExerciseMapper mapper;
	
	@Override
	public List<CardioVO> getCardioList(){
		log.info("--------------CardioList------------------");
		return mapper.getCardioList();
	}
	
	@Override
	public List<WeightVO> getWeightList(){
		log.info("--------------WeightList------------------");
		return mapper.getWeightList();
	}

	@Override
	public void insertCardio(UserCardioListVO cList) {
		log.info("-----------------유산소 추가----------------");
		
		if(cList.getCardioList() == null) {
			log.info("cList가 null이랍니다.");
			return;
		}
		
		for(int i=0; i<cList.getCardioList().size();i++) {
			mapper.insertCardio(cList.getCardioList().get(i));
		}

	}

	@Override
	public void insertWeight(UserWeightListVO wList) {
log.info("-----------------무산소 추가----------------");
		
		if(wList.getWeightList() == null) {
			log.info("wList가 null이랍니다.");
			return;
		}
		
		for(int i=0; i<wList.getWeightList().size();i++) {
			mapper.insertWeight(wList.getWeightList().get(i));
		}
	}
	
	
	@Override
	   public void updatePointCardio(String userId, double cpoint){
		log.info("포인트 업데이트 하러왓씁닌다.");
	      mapper.updatePointCardio(userId, cpoint);
	   }
	
	@Override
	   public void updatePointWeight(String userId, double wpoint){
		log.info("포인트 업데이트 하러왓씁닌다.");
	      mapper.updatePointWeight(userId, wpoint);
	   }
	
}
