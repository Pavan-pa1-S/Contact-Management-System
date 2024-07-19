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

@WebServlet("/updateprofile")
public class UpdateProfile extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userid = req.getParameter("userid");
		int userId = Integer.parseInt(userid);
		String username = req.getParameter("username");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		HttpSession session = req.getSession(true);
		User user = (User) session.getAttribute("user");
		
		user.setUserName(username);
		user.setEmail(email);
		user.setPassword(password);
		
		boolean updateUser = DaoSingleton.getUserDaoInstace().updateUser(user);
		
		
		if(updateUser) {
			resp.sendRedirect("manageprofile.jsp");
		}
		else {
			req.setAttribute("error", "Failed to Update!!");
			req.getRequestDispatcher("errormsg.jsp").forward(req, resp);
		}
		
		
	}
}
