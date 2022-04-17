package com.example.forKJY.Controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MainController {

	@RequestMapping("main")
	public String main() {
		System.out.println("test");
		return "/main";
	}

	@RequestMapping("/")
	public String redirectMainPage() {
		System.out.println("redirect test");
		return "redirect:/main";
	}

	@RequestMapping("/test")
	@ResponseBody
	public Map<String, Object> test(String inputId, String inputPw) {
		System.out.println("inputId : " + inputId);
		System.out.println("inputPw : " + inputPw);
		Map<String, Object> map = new HashMap<String, Object>();
		if(inputId.equals("test") && inputPw.equals("test")) {
			System.out.println("로그인 성공");
			map.put("result", true);
		}
		else {
			map.put("result", false);
		}
		return map;
	}

	@RequestMapping("/reactTest1")
	@ResponseBody
	public Map<String, Object> reactTest1() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("result", "성공");
		return map;
	}
}
