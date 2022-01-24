package org.health.service;

import java.util.List;

import org.health.domain.CardioVO;
import org.health.domain.UserCardioListVO;
import org.health.domain.UserWeightListVO;
import org.health.domain.WeightVO;

public interface ExerciseService {
	public List<CardioVO> getCardioList();
	public List<WeightVO> getWeightList();
	
	public void insertCardio(UserCardioListVO cList);
	public void insertWeight(UserWeightListVO wList);
	
	public void updatePointCardio(String userId, double cpoint);
	public void updatePointWeight(String userId, double wpoint);
}
