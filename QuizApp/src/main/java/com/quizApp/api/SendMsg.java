package com.quizApp.api;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.beans.factory.annotation.Autowired;

import com.quizApp.model.Register;
import com.quizApp.service.UserService;

public class SendMsg {

	
	
	

		@Autowired
		public UserService userService;

		public void sendmessage(Register user ) {


		try {
		// Construct data
		String apiKey = "apikey=" + "XcI3dmeSj6w-hINrqEHgS7PAhIS5uksZnmlrPIjEfa";
		String message = "&message=" + "Hi "+ user.getFirstname() + " you have registered successfully. Use Username as"+user.getEmail()+" and Password as "+user.getPassword()+". We will send updates continiously. Thanks for register." ;
		String sender = "&sender=" + "TXTLCL";
		System.out.println(user.getPhone());
		String numbers = "&numbers=" + user.getPhone();
		// Send data
		HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
		String data = apiKey + numbers + message + sender;
		conn.setDoOutput(true);
		conn.setRequestMethod("POST");
		conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
		conn.getOutputStream().write(data.getBytes("UTF-8"));
		final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		final StringBuffer stringBuffer = new StringBuffer();
		String line;
		while ((line = rd.readLine()) != null) {
		stringBuffer.append(line);
		}
		rd.close();
		System.out.println("Success SMS "+ line + stringBuffer);
		//return stringBuffer.toString();
		} catch (Exception e) {
		System.out.println("Error SMS "+e);
		//return "Error "+e;
		}

		}


		

}
