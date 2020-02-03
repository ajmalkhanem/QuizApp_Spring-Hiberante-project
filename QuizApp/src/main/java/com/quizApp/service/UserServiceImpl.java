package com.quizApp.service;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;

import com.quizApp.model.Addquestion;
import com.quizApp.model.Final;
import com.quizApp.model.Firstlogin;
import com.quizApp.model.Login;
import com.quizApp.model.Register;
import com.quizApp.model.Reset;
import com.quizApp.model.ValidateAnswer;
import com.quizApp.dao.UserDao;

public class UserServiceImpl implements UserService{
	
	@Autowired
	public UserDao userDao;
	
	public void register(Register user) {
	    userDao.register(user);
	  }
	
	public void addMark(ValidateAnswer ans)
	{
		userDao.addMark(ans);
	}

	public Query GetRegister() {
		
		Query query=userDao.GetRegister();
		return query;
		 
		
	}
	
	public Register validate(Firstlogin login1)
	{
		Register reg=userDao.validate(login1);
		return reg;
	}
	
	public Query total(Final mark)
	{
		Query query=userDao.total(mark);
		return query;
	}
	
	public Register validate2(Login login2)
	{
		Register reg=userDao.validate2(login2);
		return reg;
	}
	
	public void reseting(Reset reset)
	{
		userDao.reseting(reset);
		
		
	}
	public void addquiz(Addquestion ques) {
	    userDao.addquiz(ques);
	  }
	
	public Addquestion checking(ValidateAnswer answer) {
		Addquestion qus= userDao.checking(answer);
		return qus;
	  }
	
	public Query GetQuestions() {
	    Query query=userDao.GetQuestion();
		return query;
	  }

	public Query Getval() {
		Query query=userDao.Getval();
		return query;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
