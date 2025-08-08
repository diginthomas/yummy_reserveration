package com.groupd.booking.controller.menu;

import com.groupd.booking.dao.MenuDao;
import com.groupd.booking.model.Menu;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/menu")
public class MenuController  extends HttpServlet {
    private final MenuDao menuDao = new MenuDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Menu> menuList = menuDao.getAllMenus();

        // 2. Pass to JSP
        req.setAttribute("menuList", menuList);
        req.getRequestDispatcher("/jsp/menu.jsp").forward(req, resp);
    }
}
