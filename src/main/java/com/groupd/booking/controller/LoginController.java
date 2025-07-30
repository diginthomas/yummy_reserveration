package com.groupd.booking.controller;

import com.groupd.booking.dao.UserDao;
import com.groupd.booking.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class LoginController extends HttpServlet {
    private UserDao userDao;

    @Override
    public void init() throws ServletException {
        super.init();
        userDao = new UserDao();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/jsp/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        User user = userDao.validateUser(email, password);  // You need to implement this in UserDao
        if (user != null) {
            // Save user info in session
            HttpSession session = req.getSession();
//            session.setAttribute("loggedInUser", user);

            // Redirect to home page or dashboard
            resp.sendRedirect(req.getContextPath() + "/");
        } else {
            // Invalid login, set error and redirect back to login page
            req.getSession().setAttribute("loginError", "Invalid email or password");
            resp.sendRedirect(req.getContextPath() + "/login");
        }
    }
}
