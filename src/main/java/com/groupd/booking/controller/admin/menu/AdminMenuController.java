package com.groupd.booking.controller.admin.menu;

import com.groupd.booking.dao.MenuDao;
import com.groupd.booking.model.Menu;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/admin/view/menu")
public class AdminMenuController extends HttpServlet {

    private final MenuDao menuDao = new MenuDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Menu> menus = menuDao.getAllMenus();  // Fetch menu items
        req.setAttribute("menus", menus);          // Set attribute for JSP
        req.getRequestDispatcher("/jsp/admin/list_menu.jsp").forward(req, resp);  // Forward to JSP
    }
}
