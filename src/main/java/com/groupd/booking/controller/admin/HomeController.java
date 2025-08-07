package com.groupd.booking.controller.admin;

import com.groupd.booking.dao.BookingDao;
import com.groupd.booking.model.Booking;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/admin")
public class HomeController  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BookingDao bookingDao = new BookingDao();
        List<Booking> bookings = bookingDao.getAllBookings();
        System.out.println(bookings.size());
        req.setAttribute("bookings", bookings);
        req.getRequestDispatcher("/jsp/admin/index.jsp").forward(req, resp);
    }
}
