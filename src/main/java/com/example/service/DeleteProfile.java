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

@WebServlet("/deleteprofile")
public class DeleteProfile extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(true);
		User user = (User) session.getAttribute("user");
		
		int id = user.getUserId();
		
		boolean deleteUser = DaoSingleton.getUserDaoInstace().deleteUser(id);
		
		if(deleteUser) {
			session.removeAttribute("user");
			resp.sendRedirect("Home.jsp");
		}
		else {
			req.setAttribute("error", "not deleted");
			req.getRequestDispatcher("manageprofile.jsp").forward(req, resp);
		}
	}
}