package com.quizApp.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.quizApp.api.SendMsg;
import com.quizApp.dao.GenerateRandom;
import com.quizApp.model.Addquestion;
import com.quizApp.model.Final;
import com.quizApp.model.Firstlogin;
import com.quizApp.model.Login;
import com.quizApp.model.Register;
import com.quizApp.model.Reset;
import com.quizApp.model.ValidateAnswer;
import com.quizApp.service.UserService;
import com.quizApp.model.Register;


@Controller
public class Controllers {

	@Autowired
	  public UserService userService;

	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	  public ModelAndView showReg() {
	    ModelAndView rg = new ModelAndView("home");
	    return rg;
	  }
	
	@RequestMapping(value = "/random", method = RequestMethod.GET)
	  public ModelAndView showRandom() {
	    ModelAndView rg = new ModelAndView("randomlogin");
	    return rg;
	  }
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	  public ModelAndView showlogin() {
	    ModelAndView rg = new ModelAndView("login");
	    return rg;
	  }
	
	
	@RequestMapping(value = "/reset", method = RequestMethod.GET)
	  public ModelAndView showReset() {
	    ModelAndView rg = new ModelAndView("reset");
	    return rg;
	  }
	
	@RequestMapping(value = "/ques", method = RequestMethod.GET)
	  public ModelAndView showQuest() {
	    ModelAndView rg = new ModelAndView("questions");
	    return rg;
	  }
	
	
	@RequestMapping(value = "/addnew", method = RequestMethod.GET)
	  public ModelAndView AddQuest() {
	    ModelAndView rg = new ModelAndView("addquestions");
	    return rg;
	  }
	
	@RequestMapping(value = "/sample", method = RequestMethod.GET)
	  public ModelAndView AddQuest1() {
	    ModelAndView rg = new ModelAndView("sample");
	    return rg;
	  }
	
	
	
	@RequestMapping(value = "/registerprocess", method = RequestMethod.POST)
	  public ModelAndView addUser(HttpServletRequest request, HttpServletResponse respons,Register user) {
	   
		
		Query query=userService.GetRegister();
		List<Register> regi=query.list();
		GenerateRandom ra=new GenerateRandom();
		String randomnumber= ra.Generate(regi);
		user.setPassword(randomnumber);
	    userService.register(user);
	    
       SendMsg send =new SendMsg();
       send.sendmessage(user);
        
	    return new ModelAndView("home");
	  }
	
	@RequestMapping(value = "/firstlogin", method = RequestMethod.POST)
	  public ModelAndView checkUser(HttpServletRequest request, HttpServletResponse respons,Firstlogin login1) {
		
		ModelAndView mv;
		Register user=userService.validate(login1);
		if(user==null)
		{
			mv=new ModelAndView("randomlogin");
			//mv=showReg();
			mv.addObject("error","invalid user");
			
			return mv;
		}
		else
		{
			if(user.getPassword().equals(login1.getPassword1()))
			{
				
				mv=new ModelAndView("reset");
				mv.addObject("reg",user);
				return mv;
			}
			else
			{
				mv=new ModelAndView("randomlogin");
				//mv=showReg();
				mv.addObject("error","invalid password");
				
				return mv;
			}
	}
		
	
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	  public ModelAndView checkUsers(HttpServletRequest request, HttpServletResponse respons,Login login2) {
		
		ModelAndView mv;
		Register user=userService.validate2(login2);
		if(user==null)
		{
			mv=new ModelAndView("login");
			//mv=showReg();
			mv.addObject("error","invalid user");
			
			return mv;
		}
		else
		{
			if(user.getPassword().equals(login2.getPassword()))
			{
				Query query=userService.GetQuestions();
				List<Addquestion> qu=query.list();
				mv=new ModelAndView("questions");
				mv.addObject("reg",user);
				mv.addObject("qs",qu);
				return mv;
			}
			else
			{
				mv=new ModelAndView("login");
				//mv=showReg();
				mv.addObject("error","invalid password");
				
				return mv;
			}
	}
		
	
	}
	
	
	
	
	
	
	
	@RequestMapping(value = "/resetprocess", method = RequestMethod.POST)
	  public ModelAndView resetP(HttpServletRequest request, HttpServletResponse respons,Reset reset) {
	   
		ModelAndView mv;
		if(reset.getActualuser().equals(reset.getNewpassword()))
		{
			userService.reseting(reset);
			mv=new ModelAndView("login");
			
			return mv;
		}
		else
		{
			mv=new ModelAndView("reset");
		    return mv;
		
	}
	}
	
	
	@RequestMapping(value = "/addquestionprocess", method = RequestMethod.POST)
	  public ModelAndView questP(HttpServletRequest request, HttpServletResponse respons,Addquestion ques) {
		userService.addquiz(ques);
		Query query=userService.GetQuestions();
		List<Addquestion> qu=query.list();
		
		ModelAndView mv=new ModelAndView("addquestions");
		mv.addObject("qs",qu);
		return mv;
	   
		
}
	@RequestMapping(value = "/answercheckprocess", method = RequestMethod.POST)
	  public ModelAndView answerP(HttpServletRequest request, HttpServletResponse respons,ValidateAnswer answer) {
		ModelAndView mv;
		
		Addquestion qus=userService.checking(answer);
		if(qus==null)
		{
			Query query=userService.GetQuestions();
			List<Addquestion> qu=query.list();
			mv=new ModelAndView("questions");
			mv.addObject("qs",qu);
			mv.addObject("error","please Choose Any one");
			return mv;
		}
		else
		{
			if(qus.getCorrectanswer().equals(answer.getCanswer()))
			{
				userService.addMark(answer);
                Query query=userService.GetQuestions();
                
				List<Addquestion> qu=query.list();
				mv=new ModelAndView("questions");
				mv.addObject("qs",qu);
				
				mv.addObject("error","Answer Saved");
				return mv;
			}
			else
			{
				Query query=userService.GetQuestions();
				
				List<Addquestion> qu=query.list();
				mv=new ModelAndView("questions");
				mv.addObject("qs",qu);
				
				mv.addObject("error","Answer Saved");
				return mv;
			}
		
		

	}}
	
	
	
	@RequestMapping(value = "/finalsubmit", method = RequestMethod.POST)
	  public ModelAndView finalP(HttpServletRequest request, HttpServletResponse respons,Final mark) {
		
		ModelAndView mv;
		Query query=userService.GetRegister();
		List<Register> regi=query.list();
		
		Query query1=userService.Getval();
		List<ValidateAnswer> val=query1.list();
		
		if(val.get(0).getUid().equals(mark.getName()))
		{
		
		Query query2=userService.total(mark);
		List<ValidateAnswer> vl=query2.list();
		mv=new ModelAndView("finalMark");
		System.out.println(vl);
		mv.addObject("qs",vl);
		return mv;
		}
		else
		{
			Query query2=userService.total(mark);
			List<ValidateAnswer> vl=query2.list();
			mv=new ModelAndView("finalMark");
			System.out.println(vl);
			mv.addObject("qs",vl);
			return mv;
		}
}

	
	
	
	
	
	
	
	

	
	
}