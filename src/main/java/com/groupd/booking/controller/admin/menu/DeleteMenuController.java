package com.groupd.booking.controller.admin.menu;

import com.groupd.booking.dao.MenuDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/admin/delete/menu")
public class DeleteMenuController extends HttpServlet {
    private final MenuDao menuDao = new MenuDao();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        boolean success = menuDao.deleteMenu(id);

        if (success) {
            resp.sendRedirect(req.getContextPath() + "/admin/view/menu?deleted=true");
        } else {
            resp.sendRedirect(req.getContextPath() + "/admin/view/menu?error=true");
        }
    }
}
