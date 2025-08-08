package com.groupd.booking.controller.admin.booking;

import com.groupd.booking.dao.BookingDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/admin/booking/complete")
public class AdminBookingCompleteController extends HttpServlet {
    private final BookingDao bookingDao = new BookingDao();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idParam = req.getParameter("id");

        if (idParam != null && idParam.matches("\\d+")) {
            int id = Integer.parseInt(idParam);
            boolean success = bookingDao.completeBooking(id);

            if (success) {
                req.getSession().setAttribute("completeSuccess", "Booking marked as completed.");
            } else {
                req.getSession().setAttribute("completeError", "Failed to mark booking as completed.");
            }
        } else {
            req.getSession().setAttribute("completeError", "Invalid booking ID.");
        }

        resp.sendRedirect(req.getContextPath() + "/admin");
    }
}
