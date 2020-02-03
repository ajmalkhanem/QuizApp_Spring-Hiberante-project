package com.quizApp.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.quizApp.model.Addquestion;
import com.quizApp.model.Final;
import com.quizApp.model.Firstlogin;
import com.quizApp.model.Login;
import com.quizApp.model.Register;
import com.quizApp.model.Reset;
import com.quizApp.model.ValidateAnswer;

public class UserDaoImpl implements UserDao {

	
	List<Register> user;
	List<Addquestion> qus;
	List<ValidateAnswer> ans;
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session session = sf.openSession();
	Transaction tx = session.beginTransaction();
	
	 public void register(Register user) {
		  session.beginTransaction();
		  session.save(user);
		  tx.commit();
	   
	  }
	 
	 public void addMark(ValidateAnswer ans) {
		tx=  session.beginTransaction();
		  int m=1;
		  ans.setMark(m);
		  ans.setQcode(ans.getQcode());
		  ans.setUid(user.get(0).getFirstname());
		  session.save(ans);
		  session.flush();
		  session.clear();
		  tx.commit();
	   
	  }
	 
	 

	 public void addquiz(Addquestion ques) {
		  session.beginTransaction();
		  session.save(ques);
		  tx.commit();
	   
	  }
	 
	 public Addquestion checking(ValidateAnswer answer) {
		    Query query=session.createQuery("from Addquestion where correctanswer='"+answer.getCanswer()+"'");
			qus=query.list();
			return qus.size()>0?qus.get(0):null;
	   
	  }
	 
	 public Query total(Final mark) {
		    Query query=session.createQuery("from ValidateAnswer where uid='"+mark.getName()+"'");
			
			return query;
	   
	  }
	 
	 public  void reseting(Reset reset) {
		 
		 String query = "update Register SET password = '"+reset.getConfirmpassword() +"' WHERE email = '"+  reset.getActualuser() + "'";
		 try {
		     session.getTransaction().begin();
		     session.createSQLQuery(query).executeUpdate();
		     session.getTransaction().commit();
		     //session.close();
		 }
		 catch (HibernateException erro){
		     session.getTransaction().rollback();
		     //session.close();
		 } 
			
			
	   
	  }
	 
	 
	 public Query GetRegister()
	 {
		 Query query=session.createQuery("from Register");
		 return query;
	 }
	 
	 public Query Getval()
	 {
		 Query query=session.createQuery("from ValidateAnswer");
		 return query;
	 }
	 
	 public Query GetQuestion()
	 {
		 Query query=session.createQuery("from Addquestion");
		 return query;
	 }

	public Register validate(Firstlogin login1) {
		// TODO Auto-generated method stub
		Query query=session.createQuery("from Register where email='"+login1.getUsername1()+"'");
		user=query.list();
		return user.size()>0?user.get(0):null;
		
	}
	
	
	public Register validate2(Login login2) {
		// TODO Auto-generated method stub
		Query query=session.createQuery("from Register where email='"+login2.getUsername()+"'");
		user=query.list();
		return user.size()>0?user.get(0):null;
		
	}

	
	
	
	
	
	
	
	
	
	
	

	

	
}
