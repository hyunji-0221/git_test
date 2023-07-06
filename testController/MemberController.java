package org.ezen.testController;

import org.ezen.testDomain.MemberVO;
import org.ezen.testService.MemberServiceImpl;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")
@AllArgsConstructor

public class MemberController {
	
	private MemberServiceImpl service;
	
	@GetMapping("/list")
	public void list(MemberVO vo, Model model) {
		log.info("/member/list");
		model.addAttribute("mList", service.getList());
	}
	
	@GetMapping({"/read","/modify"})
	public void get(@RequestParam("empno")int empno, Model model) {
		log.info("/member/read");
		model.addAttribute("member", service.getListByEmpno(empno));
	}
	
	@PostMapping("/modify")
	public String get(MemberVO member, RedirectAttributes rttr) {
		log.info("/member/modify : "+member);
		return "redirect:/member/list";
	}
	
	@GetMapping("/write")
	public void write() {
		log.info("Get /member/write");
	}
	
	@PostMapping("/write")
	public String write(MemberVO member, RedirectAttributes rttr) {
		log.info("POST /member/write");
		service.insert(member);
		rttr.addFlashAttribute("result", member.getEmpno());
		return "redirect:/member/list";
	}
	
	@GetMapping(value="/remove")
	@ResponseBody
	public RedirectView remove(@RequestParam("empno")int empno){
		log.info("remove : "+empno);
		int result = service.delete(empno);
		if(result == 1) {
			log.info("success");
		}else {
			log.info("fail");
		}
		return new RedirectView("/member/list");
	}
}
