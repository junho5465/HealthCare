package org.health.controller;

import org.apache.ibatis.annotations.Param;
import org.health.domain.Criteria;
import org.health.domain.FoodVO;
import org.health.domain.PageDTO;
import org.health.domain.UserCardioListVO;
import org.health.domain.UserDietListVO;
import org.health.domain.UserWeightListVO;
import org.health.service.ExerciseService;
import org.health.service.FoodService;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/health*")
@AllArgsConstructor
public class HealthController {
	private FoodService service;
	private ExerciseService exService;
	
	@GetMapping(value="/{foodNo}", produces= {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<FoodVO> get(@PathVariable("foodNo") int foodNo){
//		log.info("get--------------------" + foodNo);
		return new ResponseEntity<>(service.get(foodNo),HttpStatus.OK);
	}
	
	
	@GetMapping("/exercise")
	public void exerciseCardioList(Model model, Criteria cri) {
//		log.info("======================Cardio HealthController ====================" + cri);
		
//		log.info(cri.getCategory());

		model.addAttribute("cardioList",exService.getCardioList());
		model.addAttribute("weightList",exService.getWeightList());

		log.info(cri.getCategory());	
			
		
	}
	
	@GetMapping("/food")
	public void food(Criteria cri, Model model) {
//		log.info("list" + cri);
		int total = service.getTotalCount(cri);
//		log.info(total + "----------------------------------");
		model.addAttribute("pageMaker", new PageDTO(cri,total));
		model.addAttribute("list", service.getList(cri));
		model.addAttribute("first_cls", service.getCategoryList());
	}
	
	
	@GetMapping("/exercise_add")
	public void exerciseAdd(Model model) {
		log.info("======================exercise_ADD PAGE=====================");
		model.addAttribute("weightList", exService.getWeightList());
		model.addAttribute("cardioList",exService.getCardioList());
	}
	
	
	@RequestMapping(value = "/kcalCal" , method = {RequestMethod.POST, RequestMethod.GET})
	public String kcalCal(Model model, @ModelAttribute(value="UserDietListVO") UserDietListVO udList, RedirectAttributes rttr) {
		log.info("드루왓다잉");
		
		log.info(udList);
		if(udList != null) {
			udList.getUdList().forEach(list -> log.info(list));
		}
		for(int i =0; i<udList.getUdList().size();i++) {
			log.info(udList.getUdList().get(i) +"있냐 없냐");
			if(udList.getUdList().get(i).getUserId() == null) {
				udList.getUdList().remove(i);
			}
		}
		service.insert(udList);
		log.info("insert 성공");
		return "redirect:/health/food";
//udList.getUdList().get(0)
//		log.info(udList.getUdList().get(2).getFoodName());
//		log.info(udList.getUdList().get(0).getFoodNo());
//		log.info(udList.getUdList().get(0).getPersoner_dos());
//		log.info(udList.getUdList().get(0).getRegDate());
//		log.info(udList.getUdList().get(0).getUserId());
	}
	
//	@GetMapping("/kcalCal")
//	public void kcalCal(UserDietVO diet) { //, RedirectAttributes rttr
//		log.info("======================CALCULATE=====================");
//		
////		service.addDiet(foodvo);
//	}
	@RequestMapping(value = "/addExercise" , method = {RequestMethod.POST, RequestMethod.GET})
	   public String addExercise(Model model, @ModelAttribute(value="cardioList") UserCardioListVO cardioList, @ModelAttribute(value="weightList") UserWeightListVO weightList , RedirectAttributes rttr) {
	      log.info("운동등록하러 드러왔다잉");
	      if(cardioList.getCardioList() != null) {
	         cardioList.getCardioList().forEach(list -> log.info(list));
	         for(int i =0; i<cardioList.getCardioList().size();i++) {
	            log.info(cardioList.getCardioList().get(i) +"있냐 없냐");
	            if(cardioList.getCardioList().get(i).getUserId() == null) {
	               cardioList.getCardioList().remove(i);
	            }
	         }
	      if(cardioList.getCardioList() != null) {
	        	 for(int i =0; i<cardioList.getCardioList().size();i++) {
		         exService.updatePointCardio(cardioList.getCardioList().get(i).getUserId(), Double.parseDouble(cardioList.getCardioList().get(i).getCardio_time())*0.01);    
	        	 }
	         }
	         exService.insertCardio(cardioList);
	      }
	      
	      if(weightList.getWeightList() != null) {
	         weightList.getWeightList().forEach(list -> log.info(list));
	         for(int i =0; i<weightList.getWeightList().size();i++) {
	            log.info(weightList.getWeightList().get(i) +"있냐 없냐");
	            if(weightList.getWeightList().get(i).getUserId() == null) {
	               weightList.getWeightList().remove(i);
	            }
	         }
	      }
	         
	         if(weightList.getWeightList() != null) {
	        	 for(int i =0; i<cardioList.getCardioList().size();i++) {
		         exService.updatePointWeight(weightList.getWeightList().get(i).getUserId(), ((double)weightList.getWeightList().get(i).getWeight_set())*0.1);    
	        	 }
	        	 exService.insertWeight(weightList);
	         }

	      log.info("운동 추가 성공");
	      return "redirect:/health/exercise_add";
	   }
}
