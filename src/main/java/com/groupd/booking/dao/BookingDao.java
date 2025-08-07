package com.groupd.booking.dao;

import com.groupd.booking.model.Booking;
import com.groupd.booking.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookingDao {

    public boolean saveBooking(Booking booking) {
        String sql = "INSERT INTO booking (user_id, name, email, phone, no_people, message, time, date) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, booking.getUser_id());
            stmt.setString(2, booking.getName());
            stmt.setString(3, booking.getEmail());
            stmt.setString(4, booking.getPhone());
            stmt.setInt(5, booking.getNo_people());
            stmt.setString(6, booking.getMessage());
            stmt.setString(7, booking.getTime());
            stmt.setString(8, booking.getDate());

            return stmt.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Booking> getBookingsByUserId(int userId) {
        List<Booking> bookings = new ArrayList<>();
        String sql = "SELECT * FROM booking WHERE user_id = ? ORDER BY date DESC, time DESC";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Booking booking = new Booking();
                booking.setId(rs.getInt("id"));
                booking.setUser_id(rs.getInt("user_id"));
                booking.setName(rs.getString("name"));
                booking.setEmail(rs.getString("email"));
                booking.setPhone(rs.getString("phone"));
                booking.setDate(rs.getDate("date").toString());
                booking.setTime(rs.getString("time"));
                booking.setNo_people(rs.getInt("no_people"));
                booking.setMessage(rs.getString("message"));
                bookings.add(booking);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return bookings;

    }


    public List<Booking> getAllBookings() {
        List<Booking> bookings = new ArrayList<>();
        String sql = "SELECT * FROM booking ORDER BY date, time";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Booking booking = new Booking();
                booking.setId(rs.getInt("id"));
                booking.setUser_id(rs.getInt("user_id"));
                booking.setName(rs.getString("name"));
                booking.setEmail(rs.getString("email"));
                booking.setPhone(rs.getString("phone"));
                booking.setNo_people(rs.getInt("no_people"));
                booking.setDate(rs.getString("date"));
                booking.setTime(rs.getString("time"));
                booking.setMessage(rs.getString("message"));

                bookings.add(booking);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return bookings;
    }

}



