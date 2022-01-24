package org.health.persistence;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.health.domain.PersonalVO;

public interface PersonalMapper {
	public List<PersonalVO> getAverage();
	public int check_date(String date);

	public void insert_w(
			@Param("userId") String userId ,
			@Param("user_hei") double user_hei ,
			@Param("weight_input") double weight ,
			@Param("cal_W_in") Date regDate);
	public boolean update_w(
			@Param("userId") String userId , 
			@Param("weight_input") double weight ,
			@Param("cal_W_in") Date regDate);
	
	public void insert_m(
			@Param("userId") String userId ,
			@Param("user_hei") double user_hei ,
			@Param("muscle_input") double muscle ,
			@Param("cal_M_in") Date regDate);
	public boolean update_m(
			@Param("userId") String userId , 
			@Param("muscle_input") double muscle ,
			@Param("cal_M_in") Date regDate);
	
	
	public void insert_f(
			@Param("userId") String userId ,
			@Param("user_hei") double user_hei ,
			@Param("fat_input") double fat ,
			@Param("cal_F_in") Date regDate);
	public boolean update_f(
			@Param("userId") String userId , 
			@Param("fat_input") double fat ,
			@Param("cal_F_in") Date regDate);

	
}
