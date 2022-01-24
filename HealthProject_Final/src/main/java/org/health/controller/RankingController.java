package org.health.controller;

import org.health.persistence.RankMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/Ranking/*")
@AllArgsConstructor
public class RankingController {
	private RankMapper mapper;
	
	@GetMapping("/Rank")
	public void Ranking(Model model) {
		log.info("======================랭크 출력=====================");
		log.info(mapper.getfirst());
		 model.addAttribute("first",mapper.getfirst());
		model.addAttribute("second",mapper.getsecond());
		model.addAttribute("third",mapper.getthird());
		model.addAttribute("list",mapper.leftover());
	}
}
