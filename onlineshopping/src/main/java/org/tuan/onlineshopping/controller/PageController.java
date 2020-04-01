package org.tuan.onlineshopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	@RequestMapping(value = { "/", "/home", "/index" }) // .../onlineshopping/index or /home or /
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		mv.addObject("userClickHome", true);
		
		return mv;
	}
	
	@RequestMapping(value = "/about") // .../onlineshopping/about
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "About US");
		mv.addObject("userClickAbout", true);
		return mv;
	}
	
	@RequestMapping(value = "/contact") // .../onlineshopping/contact
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Contact US");
		mv.addObject("userClickContact", true);
		return mv;
	}

//	@RequestMapping(value = "/test")
//	public ModelAndView test(@RequestParam(value = "greeting", required = false) String greeting) {
//		if(greeting == null) {
//			greeting = "Hello there";
//		}
//		ModelAndView mv = new ModelAndView("page");
//		mv.addObject("greeting", greeting);
//		return mv;
//
//	}

//	@RequestMapping(value = "/test/{greeting}") // /test/hello - > /onlineshopping says - hello
//	public ModelAndView test(@PathVariable(value = "greeting") String greeting) {
//		if (greeting == null) {
//			greeting = "Hello there";
//		}
//		ModelAndView mv = new ModelAndView("page");
//		mv.addObject("greeting", greeting);
//		return mv;
//
//	}

//	@GetMapping(value = "/test/{greeting}") // /test/hello - > /onlineshopping says - hello
//	public ModelAndView test(@PathVariable String greeting) {
//		if (greeting == null) {
//			greeting = "Hello there";
//		}
//		ModelAndView mv = new ModelAndView("page");
//		mv.addObject("greeting", greeting);
//		return mv;
//
//	}
}
