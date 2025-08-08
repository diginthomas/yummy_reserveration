package com.groupd.booking.controller.admin.contact;

import com.groupd.booking.dao.ContactDao;
import com.groupd.booking.model.Contact;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/admin/contact")
public class AdminContactController extends HttpServlet {
    private ContactDao contactDao;

    @Override
    public void init() throws ServletException {
        super.init();
        contactDao = new ContactDao();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Contact> contactMessages = contactDao.getAllContacts();
        req.setAttribute("contactMessages", contactMessages);
        req.getRequestDispatcher("/jsp/admin/contact.jsp").forward(req, resp);
    }
}
