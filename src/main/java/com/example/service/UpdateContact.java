package com.example.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.config.DaoSingleton;
import com.example.entity.Contact;

@WebServlet("/update")
public class UpdateContact extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int contactid = Integer.parseInt(req.getParameter("contactid"));
		String contactname = req.getParameter("contactname");
		long contactnumber = Long.parseLong(req.getParameter("contactnumber"));
		Contact contact = DaoSingleton.getContactDaoInstace().findContactById(contactid);
		contact.setContactName(contactname);
		contact.setContactNumber(contactnumber);
		
		boolean updateContact = DaoSingleton.getContactDaoInstace().updateContact(contact);
		
		if(updateContact) {
			resp.sendRedirect("managecontact");
		}
		else {
			resp.sendRedirect("update-profile.jsp");
		}
	}
}
