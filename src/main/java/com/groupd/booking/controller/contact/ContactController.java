package com.groupd.booking.controller.contact;

import com.groupd.booking.dao.ContactDao;
import com.groupd.booking.model.Contact;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.Timestamp;

@WebServlet("/contact")
public class ContactController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/jsp/contact.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Contact contact = new Contact();
        contact.setName(req.getParameter("name"));
        contact.setEmail(req.getParameter("email"));
        contact.setSubject(req.getParameter("subject"));
        contact.setMessage(req.getParameter("message"));
        contact.setDate(new Timestamp(System.currentTimeMillis()));

        ContactDao dao = new ContactDao();
        boolean success = dao.saveContact(contact);

        if (success) {
            req.setAttribute("msg", "Thank you! Your message has been sent.");
        } else {
            req.setAttribute("error", "Error sending message. Please try again.");
        }

        req.getRequestDispatcher("/jsp/contact.jsp").forward(req, resp);
    }
}
