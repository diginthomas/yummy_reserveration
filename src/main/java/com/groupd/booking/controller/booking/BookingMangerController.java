package com.groupd.booking.controller.booking;

import com.groupd.booking.dao.BookingDao;
import com.groupd.booking.model.Booking;
import com.groupd.booking.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/booking")
public class BookingMangerController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        User user = (session != null) ? (User) session.getAttribute("user") : null;

        if (user == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        BookingDao bookingDao = new BookingDao();
        List<Booking> bookings = bookingDao.getBookingsByUserId(user.getId());

        req.setAttribute("bookings", bookings);
        req.getRequestDispatcher("/jsp/booking_list.jsp").forward(req, resp);
    }
}
