package com.example.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.config.DaoSingleton;
import com.example.entity.User;

@WebServlet("/login")
public class LoginUser extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		User user = DaoSingleton.getUserDaoInstace().getUserByEmailAndPwd(email,password);
		
		
		if(user != null) {
			HttpSession session = req.getSession(true);
			session.setAttribute("user", user);
			
			req.getRequestDispatcher("Home.jsp").forward(req, resp);
			//resp.sendRedirect("Home.jsp");
		}
		else {
			req.setAttribute("error", "email or password is incorrect!!");
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}
	}
}
