package org.health.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.health.domain.Input_valueDTO;
import org.health.persistence.PersonalMapper;
import org.health.persistence.PersonalServiceJoinMapper;
import org.health.persistence.UserExerCMapper;
import org.health.persistence.UserExerWMapper;
import org.health.persistence.UserFoodMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/Personal/*")
@AllArgsConstructor
public class PersonalController {
	private PersonalServiceJoinMapper mapper;
	private PersonalMapper mapper2;
	private UserFoodMapper mapper3;
	private UserExerWMapper mapperW;
	private UserExerCMapper mapperC;

	@GetMapping("/personal")
	public void personalWeight(Model model , @RequestParam("userId")String userId ) throws ParseException {
		
		log.info("123123123"+userId);
		log.info("======================몸무게 조회=====================");
		log.info(mapper.getInfo(userId));
		
		model.addAttribute("user_info",mapper.getInfo(userId));
		log.info("======================최근 조회=====================");
		log.info(mapper.getRadar(userId));
		model.addAttribute("user_radar",mapper.getRadar(userId));
		
		log.info("======================평균 조회=====================");
		log.info(mapper2.getAverage());
		model.addAttribute("users_avg",mapper2.getAverage());

		log.info("======================사용자 음식 조회=====================");
		log.info(mapper3.EatWhat(userId));
		model.addAttribute("user_food",mapper3.EatWhat(userId));
		
		
		log.info("======================사용자 유산소 조회=====================");
		log.info(mapperC.ExerCWhat(userId));
		model.addAttribute("user_exerc",mapperC.ExerCWhat(userId));
		log.info("======================사용자 음식 조회=====================");
		log.info(mapperW.ExerWWhat(userId));
		model.addAttribute("user_exerw",mapperW.ExerWWhat(userId));
		
		log.info("2222222222222222222222222222222222222222222222222222"+userId);
	}
	
	@RequestMapping(value = "/personal_w" , method = {RequestMethod.POST, RequestMethod.GET})
    public String getINFO_W(Model model, @ModelAttribute(value="Input_valueDTO") Input_valueDTO list ,RedirectAttributes rttr,HttpServletRequest req) throws ParseException {
		Date d = list.getCal_W_in();
		Date D = null;
		String day = (1900+d.getYear())+"-"+(1+d.getMonth())+"-"+d.getDate();
		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-mm-dd");
		
		D = dateformat.parse(day);
		if(mapper2.check_date(day) ==1) {
			//이미 조회되는 경우 업데이트
			log.info(list.getUserId()+" : "+list.getWeight_input()+" : "+ list.getCal_W_in());
			mapper2.update_w(list.getUserId(), list.getWeight_input(), D);
		}else {
			//날이 조회 되지 않음 삽입
			mapper2.insert_w(list.getUserId(),list.getUser_hei() ,list.getWeight_input(), D);
		}
		
		//String userId=(String) req.getAttribute("userId");
		//log.info("1111111111111111111111111111111111111111111111"+userId);
		return "redirect:/Personal/personal?userId="+list.getUserId();
    }
	
	@RequestMapping(value = "/personal_f" , method = {RequestMethod.POST, RequestMethod.GET})
    public String getINFO_F(Model model, @ModelAttribute(value="Input_valueDTO") Input_valueDTO list2 ,RedirectAttributes rttr,HttpServletRequest req) throws ParseException {
		Date d1 = list2.getCal_F_in();
		Date D1 = null;
		String day1 = (1900+d1.getYear())+"-"+(1+d1.getMonth())+"-"+d1.getDate();
		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-mm-dd");
		D1 = dateformat.parse(day1);
		if(mapper2.check_date(day1) ==1) {
			//이미 조회되는 경우 업데이트
			log.info(list2.getUserId()+" : "+list2.getFat_input()+" : "+ list2.getCal_F_in());
			mapper2.update_f(list2.getUserId(), list2.getFat_input(), D1);
			
		}else {
			//날이 조회 되지 않음 삽입
			mapper2.insert_f(list2.getUserId(),list2.getUser_hei() ,list2.getFat_input(), D1);
		}
		//String userId=(String) req.getAttribute("userId");
		return "redirect:/Personal/personal?userId="+list2.getUserId();
    }
	
	@RequestMapping(value = "/personal_m" , method = {RequestMethod.POST, RequestMethod.GET})
    public String getINFO_M(Model model, @ModelAttribute(value="Input_valueDTO") Input_valueDTO list2 ,RedirectAttributes rttr,HttpServletRequest req) throws ParseException {
		Date d1 = list2.getCal_M_in();
		Date D1 = null;
		String day1 = (1900+d1.getYear())+"-"+(1+d1.getMonth())+"-"+d1.getDate();
		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-mm-dd");
		D1 = dateformat.parse(day1);
		if(mapper2.check_date(day1) ==1) {
			//이미 조회되는 경우 업데이트
			log.info(list2.getUserId()+" : "+list2.getMuscle_input()+" : "+ list2.getCal_M_in());
			mapper2.update_m(list2.getUserId(), list2.getMuscle_input(), D1);
			
		}else {
			//날이 조회 되지 않음 삽입
			mapper2.insert_m(list2.getUserId(),list2.getUser_hei() ,list2.getMuscle_input(), D1);
		}
		//String userId=(String) req.getAttribute("userId");
		return "redirect:/Personal/personal?userId="+list2.getUserId();
    }
	
	
}
