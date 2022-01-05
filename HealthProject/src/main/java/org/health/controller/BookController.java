package org.health.controller;

import org.health.service.BookService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/book/*")
@AllArgsConstructor
public class BookController {
	private BookService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		log.info("======================listÃâ·Â=====================");
		model.addAttribute("list",service.getList());
	}
	
	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("bookId") Integer bookId, Model model) {
		log.info("/get or modify");
		model.addAttribute("book",service.get(bookId));
	}
}
