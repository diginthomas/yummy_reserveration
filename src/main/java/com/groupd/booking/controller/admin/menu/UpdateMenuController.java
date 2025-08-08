package com.groupd.booking.controller.admin.menu;

import com.groupd.booking.dao.MenuDao;
import com.groupd.booking.model.Menu;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/admin/update/menu")
public class UpdateMenuController extends HttpServlet {
    private final MenuDao menuDao = new MenuDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int menuId = Integer.parseInt(request.getParameter("id"));
        Menu menu = menuDao.getMenuById(menuId);
        request.setAttribute("menu", menu);
        request.getRequestDispatcher("/jsp/admin/edit_menu.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Menu menu = new Menu();
        menu.setId(Integer.parseInt(request.getParameter("id")));
        menu.setName(request.getParameter("name"));
        menu.setDescription(request.getParameter("description"));
        menu.setPrice(Double.parseDouble(request.getParameter("price")));
        menu.setImage(request.getParameter("image"));
        boolean success = menuDao.updateMenu(menu);

        if (success) {
            response.sendRedirect(request.getContextPath() + "/admin/view/menu?update=success");
        } else {
            response.sendRedirect(request.getContextPath() + "/admin/view/menu?update=fail");
        }
    }
}
