package org.health.service;

import java.util.List;

import org.health.domain.Criteria;
import org.health.domain.FoodVO;
import org.health.domain.UserDietListVO;
import org.health.domain.UserDietVO;

public interface FoodService {
	public List<FoodVO> getCategoryList();
	
	public List<FoodVO> getList(Criteria cri);
	public int getTotalCount(Criteria cri);
	public FoodVO get(int foodNo);
	public void insert(UserDietListVO udList);
//	public List<UserDietVO> addDiet(FoodVO foodvo);
}
