package com.MJ.as.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.MJ.as.member.Member;

@Controller
public class BoardController {

	@RequestMapping(value="board", method=RequestMethod.GET)
	public String board(Member member) {
		return "bbs";
	}
	
		
}
