package com.groupd.booking.dao;

import com.groupd.booking.model.Contact;
import com.groupd.booking.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ContactDao {

    public boolean saveContact(Contact contact) {
        String sql = "INSERT INTO contact (name, email, subject, message) VALUES (?, ?, ?, ?)";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, contact.getName());
            stmt.setString(2, contact.getEmail());
            stmt.setString(3, contact.getSubject());
            stmt.setString(4, contact.getMessage());

            return stmt.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
