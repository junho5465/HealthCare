package org.health.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.health.domain.CardioVO;
import org.health.domain.UserCardio;
import org.health.domain.UserWeight;
import org.health.domain.WeightVO;

public interface ExerciseMapper {
	public List<CardioVO> getCardioList();
	public List<WeightVO> getWeightList();
	
	public void insertCardio(UserCardio cardio);
	public void insertWeight(UserWeight weight);
	
	public void updatePointCardio(@Param("userId")String userId, @Param("cardio_time")double cardio_time);
	public void updatePointWeight(@Param("userId")String userId, @Param("weight_set")double weight_set);
}
