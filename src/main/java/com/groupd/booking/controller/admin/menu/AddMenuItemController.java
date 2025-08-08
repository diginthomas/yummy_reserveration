package com.groupd.booking.controller.admin.menu;

import com.groupd.booking.dao.MenuDao;
import com.groupd.booking.model.Menu;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.File;
import java.io.IOException;

@WebServlet("/admin/add/menu")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
        maxFileSize = 1024 * 1024 * 10,               // 10MB
        maxRequestSize = 1024 * 1024 * 50)            // 50MB
public class AddMenuItemController extends HttpServlet {

    private final MenuDao menuDao = new MenuDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/jsp/admin/add_menu.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Read form data
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String priceStr = request.getParameter("price");
        String imageUrl = request.getParameter("image"); // Get image URL from form

        double price;
        try {
            price = Double.parseDouble(priceStr);
        } catch (NumberFormatException e) {
            response.sendRedirect(request.getContextPath() + "/admin/add/menu?error=invalid_price");
            return;
        }

        // 2. Create Menu object
        Menu menu = new Menu();
        menu.setName(name);
        menu.setDescription(description);
        menu.setPrice(price);
        menu.setImage(imageUrl); // Directly save image URL

        // 3. Save to DB
        boolean success = menuDao.addMenu(menu);

        // 4. Redirect with result
        if (success) {
            response.sendRedirect(request.getContextPath() + "/admin/add/menu?success=true");
        } else {
            response.sendRedirect(request.getContextPath() + "/admin/add/menu?error=true");
        }
    }

}
