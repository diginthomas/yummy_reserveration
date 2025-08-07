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

@WebServlet("/book")
public class BookingController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        User user = (User) session.getAttribute("user");

        if (user == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        req.getRequestDispatcher("/jsp/book.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        User user = (User) session.getAttribute("user");

        if (user == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        Booking booking = new Booking();
        booking.setUser_id(user.getId());
        booking.setName(req.getParameter("name"));
        booking.setEmail(req.getParameter("email"));
        booking.setPhone(req.getParameter("phone"));
        booking.setDate(req.getParameter("date"));
        booking.setTime(req.getParameter("time"));
        booking.setNo_people(Integer.parseInt(req.getParameter("numPeople")));
        booking.setMessage(req.getParameter("message"));

        BookingDao bookingDao = new BookingDao();
        boolean success = bookingDao.saveBooking(booking);

        if (success) {
            session.setAttribute("reservationSuccess", "Your booking has been received!");
        } else {
            session.setAttribute("reservationError", "Something went wrong. Please try again.");
        }

        resp.sendRedirect(req.getContextPath() + "/booking");
    }

}
