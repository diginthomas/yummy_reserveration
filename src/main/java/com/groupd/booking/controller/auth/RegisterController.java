package com.groupd.booking.controller.auth;


import com.groupd.booking.dao.UserDao;
import com.groupd.booking.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
   private UserDao userDao;
    @Override
    public void init() throws ServletException {
        super.init();
        userDao = new UserDao();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        User user = (User) session.getAttribute("user");

        if (user != null) {
            resp.sendRedirect(req.getContextPath() + "/");
            return;
        }
        req.getRequestDispatcher("/jsp/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");
        String name = req.getParameter("name");
        if(userDao.isUserExist(email)){
            req.getSession().setAttribute("registerError", "User already exists. Please log in.");
            resp.sendRedirect(req.getContextPath() + "/register");
            return;
        }
        User user = new User();
        user.setEmail(email);
        user.setPassword(password);
        user.setName(name);
        if (userDao.register(user)) {
            resp.sendRedirect(req.getContextPath() + "/login"); // safer redirect

        } else {
            resp.sendRedirect(req.getContextPath() + "/jsp/register.jsp?error=1");
        }
    }


}
