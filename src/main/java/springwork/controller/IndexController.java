package springwork.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import springwork.model.User;

@Controller
@SessionAttributes("userkey")
public class IndexController
{
	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}
	@RequestMapping(value="/userInfo",method= RequestMethod.POST)
	public ModelAndView userInfo(@ModelAttribute("userkey") @Valid User u,BindingResult errors) {
		if(errors.hasErrors()) {
			ModelAndView mav = new ModelAndView("index");
			return mav;
		}
		ModelAndView mav = new ModelAndView("UserPage");
		return mav;
	}
	
	
	
	//ALl @MA will be invoked before any other handler methods
	//need this method when using @SessionAttributes
	@ModelAttribute("userkey")
	public User setUpSessionUser() {
		return new User();
	}
	
	//to use the sessionAttribute, make sure the name is the same, otherwise this @MA will create its own
	@RequestMapping(value="/userInfo_confirm",method= RequestMethod.POST)
	public ModelAndView userInfoConfirm(@ModelAttribute("userkey") User u) {
		ModelAndView mav = new ModelAndView("UserAccountPage");
		return mav;
	}
	
	@GetMapping("/modify")
	public ModelAndView userInfoModify() {
		ModelAndView mav = new ModelAndView("UserAccountModify");
		return mav;
	}
	
	@PostMapping("/submit_changes")
	public String userInfoChanges(@ModelAttribute User u,
								@SessionAttribute ("userkey") User ukey)
	{
		if(u.getPassword().equals(ukey.getPassword())) {
			return "redirect:modify";
		}
		ukey.setPassword(u.getPassword());
		ukey.setUsername(u.getUsername());
		ukey.setEmail(u.getEmail());
		return "UserAccountPage";
	}
	
//	@InitBinder("userkey")
//	public void initBinder(WebDataBinder binder) {
//		binder.setDisallowedFields(new String[] {"username"});
//		System.out.println("initBinder method");	
//	}
	
	
	
	
	


}
