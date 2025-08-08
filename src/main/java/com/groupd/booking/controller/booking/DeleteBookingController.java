package com.groupd.booking.controller.booking;

import com.groupd.booking.dao.BookingDao;
import com.groupd.booking.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/delete/booking")
public class DeleteBookingController extends HttpServlet {
    private final BookingDao bookingDao = new BookingDao();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String bookingIdParam = req.getParameter("id");
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");

        if (bookingIdParam != null && bookingIdParam.matches("\\d+")) {
            int bookingId = Integer.parseInt(bookingIdParam);
            boolean success = bookingDao.deleteBooking(bookingId);

            if (success) {
                session.setAttribute("deleteSuccess", "Booking deleted successfully.");
            } else {
                session.setAttribute("deleteError", "Failed to delete booking.");
            }
        } else {
            session.setAttribute("deleteError", "Invalid booking ID.");
        }

        // Redirect based on user role
        if (user != null && user.getId() == 1) {
            resp.sendRedirect(req.getContextPath() + "/admin");
        } else {
            resp.sendRedirect(req.getContextPath() + "/booking");
        }
    }
}
