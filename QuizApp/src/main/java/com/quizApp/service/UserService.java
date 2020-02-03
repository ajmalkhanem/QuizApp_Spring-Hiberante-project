package com.quizApp.service;

import org.hibernate.Query;

import com.quizApp.model.Addquestion;
import com.quizApp.model.Final;
import com.quizApp.model.Firstlogin;
import com.quizApp.model.Login;
import com.quizApp.model.Register;
import com.quizApp.model.Reset;
import com.quizApp.model.ValidateAnswer;

public interface UserService{
	
	void register(Register user);

	Query GetRegister();
	public Register validate(Firstlogin login1);
	public Register validate2(Login login2);

	public void reseting(Reset reset);

	void addquiz(Addquestion ques);

	Query GetQuestions();

	public Addquestion checking(ValidateAnswer answer);

	void addMark(ValidateAnswer ans);

	Query total(Final mark);

	Query Getval();
	
	
	
	
	 

}
