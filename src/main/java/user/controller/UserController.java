package user.controller;

import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import mail.service.MailService;
import user.bean.UserDTO;
import user.dao.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Autowired
	UserService userService = null;
	@Autowired
	MailService mailService = null;
	
	@GetMapping("joinForm")
	public String joinForm() {
		
		return "user/joinForm";
	}

	@PostMapping("join")
	@ResponseBody
	public void join(@ModelAttribute UserDTO userDTO) {
		System.out.println(userDTO.getUseremail());
		
		userService.join(userDTO);
		
	}
	
	@PostMapping(value="isExistId")
	@ResponseBody
	public String isExistId(@RequestParam String id) {
		
		return userService.isExistId(id);  
	}
	
	@GetMapping(value="loginForm")
	public String loginForm() {
		
		return "user/loginForm";
	}
	
	
	@PostMapping(value="login")
	@ResponseBody
	public String login(@RequestParam Map<String,String> map, HttpServletRequest request) {
		String id = userService.login(map);
		
		if(id!=null) {		
			HttpSession session  = request.getSession();
			session.setMaxInactiveInterval(1800);
			session.setAttribute("userid", id);
			
			return "success";
		}
		else{
			return "fail";
		}
		
	}
	
	@GetMapping(value="logOut")
	public String logOut(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		System.out.println("로그아웃성공!!");
		return "user/mainIndex";
	}
	
	
	@PostMapping(value="kakaologin")
	@ResponseBody
	public String kakaologin(@RequestParam String kakao_email,@RequestParam String kakao_profile, HttpServletRequest request,Model model) {
		System.out.println(kakao_email);
		System.out.println(kakao_profile);
		String userid=userService.kakaologin(kakao_email);
		
		if(userid!=null) {
			HttpSession session  = request.getSession();
			session.setMaxInactiveInterval(1800);
			session.setAttribute("userid",userid);
			session.setAttribute("kakao_profile", kakao_profile);
			
			return "success";
		}
		else {
			return "fail";
		}

	}
	
	
	@GetMapping(value="findIdForm")
	public String findIdForm() {
		return "user/findIdForm2";
	}
	
	@GetMapping(value="mailCheck")
	@ResponseBody
	public String mailCheck(String email){
		System.out.println("이메일 : "+email);
		return mailService.mailCheck(email);
	}
	
	
	@PostMapping(value="findIdComplete")
	@ResponseBody
	public String findIdComplete(@RequestParam Map<String,String> map,Model model) {
		
		String userid=userService.findIdComplete(map);
		
		model.addAttribute("userid",userid);
		System.out.println(map.get("useremail"));
		System.out.println(map.get("username"));
		
		return userService.findIdComplete(map);

		
	}
	
	
	
	@PostMapping(value="findIdCompleteForm")
	public String findIdCompleteForm() {
		return "user/findIdComplete";
	}


	@GetMapping(value="mypageIndex")
	public String mypageIndex() {
		return "user/mypageIndex";
	}

	
}
