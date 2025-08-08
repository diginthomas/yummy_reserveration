package com.groupd.booking.controller.admin.user;

import com.groupd.booking.dao.UserDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/admin/user/delete")
public class AdminDeleteUserController extends HttpServlet {

    private UserDao userDao;

    @Override
    public void init() throws ServletException {
        userDao = new UserDao();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idParam = req.getParameter("id");

        if (idParam != null && idParam.matches("\\d+")) {
            int id = Integer.parseInt(idParam);

            boolean success = userDao.deleteUserById(id);
            if (success) {
                req.getSession().setAttribute("deleteSuccess", "User deleted successfully.");
            } else {
                req.getSession().setAttribute("deleteError", "Cannot delete user. The user may have existing bookings.");
            }

            resp.sendRedirect(req.getContextPath() + "/admin/users");

        } else {
            req.getSession().setAttribute("deleteError", "Invalid user ID.");
            resp.sendRedirect(req.getContextPath() + "/admin/users");
        }
    }
}