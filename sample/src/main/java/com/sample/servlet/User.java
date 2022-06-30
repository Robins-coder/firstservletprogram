package com.sample.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.json.JSONArray;
import org.json.JSONObject;

public class User extends HttpServlet {
	
	private static final long serialVersionUID = -8856596604861351608L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter writer=resp.getWriter();
	    
		JSONArray user=new JSONArray();
		  		
		for(int i=1;i<=10;i++)
		{
 			 JSONObject jsonObject=new JSONObject();
 		     jsonObject.put("name", "user"+i);
             user.put(jsonObject);
		}
	   
		writer.println(user.toString());
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String name=req.getParameter("name");
		
		JSONObject jsonObject=new JSONObject();
		jsonObject.put("name", name);
		
		PrintWriter writer=resp.getWriter();
		
		writer.println(jsonObject.toString());
		
//		super.doPost(req, resp);
	}
	
	

}
