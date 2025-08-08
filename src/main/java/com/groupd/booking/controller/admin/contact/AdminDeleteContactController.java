package com.groupd.booking.controller.admin.contact;

import com.groupd.booking.dao.ContactDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/admin/contact/delete")
public class AdminDeleteContactController extends HttpServlet {

    private ContactDao contactDao;

    @Override
    public void init() throws ServletException {
        contactDao = new ContactDao();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idParam = req.getParameter("id");

        if (idParam != null && idParam.matches("\\d+")) {
            int id = Integer.parseInt(idParam);
            boolean deleted = contactDao.deleteContactById(id);

            if (deleted) {
                resp.sendRedirect(req.getContextPath() + "/admin/contacts");
            } else {
                resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to delete message.");
            }
        } else {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid contact ID.");
        }
    }
}
