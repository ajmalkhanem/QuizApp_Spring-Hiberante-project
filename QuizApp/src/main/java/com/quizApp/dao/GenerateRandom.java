package com.quizApp.dao;

import java.util.List;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;

import com.quizApp.model.Register;

public class GenerateRandom {

	
	public String Generate(List<Register> regi2)
	{
		int si=regi2.size();
		
		String finalreg=String.format("%07d",si+1);
		return finalreg;
		
		
		
		
		
	}
}
