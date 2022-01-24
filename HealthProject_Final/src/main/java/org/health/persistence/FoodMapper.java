package org.health.persistence;

import java.util.List;

import org.health.domain.Criteria;
import org.health.domain.FoodVO;
import org.health.domain.UserDietListVO;
import org.health.domain.UserDietVO;

public interface FoodMapper {
	public List<FoodVO> getCategoryList();
	public List<FoodVO> getList();
	public int getTotalCount(Criteria cri);
	public List<FoodVO> getListWithPaging(Criteria cri);
	public FoodVO get(int foodNo);
	public void insert(UserDietVO user);
}
