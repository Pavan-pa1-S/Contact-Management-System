package com.example.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.config.DaoSingleton;
import com.example.dao.ContactDao;
import com.example.dao.UserDao;
import com.example.entity.Contact;
import com.example.entity.User;

@WebServlet("/registercontact")
public class RegisterContact extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession(true);
		User user = (User) session.getAttribute("user");
		
		int userId = user.getUserId();
		
		String contactname = req.getParameter("contactname");
		String contactnumber = req.getParameter("contactnumber");
		long contactNumber = Long.parseLong(contactnumber);
		
		Contact contact = new Contact();
		ContactDao contactdao = DaoSingleton.getContactDaoInstace();
		
		if(user != null) {
			contact.setContactName(contactname);
			contact.setContactNumber(contactNumber);
			contact.setUserId(user);
			contactdao.saveContact(contact);
			
			resp.sendRedirect("Home.jsp");
		}
		else {
			
		}
		
	}
}
