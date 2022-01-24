package org.health.service;

import java.util.List;

import org.health.domain.Criteria;
import org.health.domain.FoodVO;
import org.health.domain.UserDietListVO;
//import org.health.domain.UserFoodVO;
import org.health.persistence.FoodMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class FoodServiceImpl implements FoodService{
	@Setter(onMethod_=@Autowired)
	private FoodMapper mapper;
	
	@Override
	public List<FoodVO> getCategoryList(){
		log.info("=============getCategoryList.....!!!!==============");
		 return mapper.getCategoryList();
	}
	
	@Override
	public List<FoodVO> getList(Criteria cri){
		log.info("=============getList.....!!!!==============");
		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public int getTotalCount(Criteria cri) {
		log.info("get total count............");
		return mapper.getTotalCount(cri);
	}
	
	@Override
	public FoodVO get(int foodNo) {
		log.info("get food detail...................");
		return mapper.get(foodNo);
	}
	
	@Override
	public void insert(UserDietListVO udList) {
		log.info("insert========================");
		if(udList.getUdList() == null) {
			log.info("udList가 null이랍니다.");
			return;
		}
		
		for(int i=0; i<udList.getUdList().size();i++) {
			mapper.insert(udList.getUdList().get(i));
		}
		
		
	}
	
	/*
	 * @Override public List<UserDietVO> addDiet(FoodVO foodvo){
	 * 
	 * return null; };
	 */
}
