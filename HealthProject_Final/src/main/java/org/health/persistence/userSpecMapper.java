package org.health.persistence;

import org.apache.ibatis.annotations.Param;
import org.health.domain.userVO;

public interface userSpecMapper {
	public userVO getSpec(String userId);
	public String getImg(String userId);
	public double getAvgHeight();
	public double getAvgWeight();
	public double getAvgMuscle();
	public double getAvgFat();
	public String getGrade(String userId);
	public int getNullCheck(String userId);
	public void insertID(@Param("userId")String userId, @Param("height")double height,
			@Param("weight")double weight);
}
