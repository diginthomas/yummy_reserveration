// MenuDao.java - DAO
package com.groupd.booking.dao;

import com.groupd.booking.model.Menu;
import com.groupd.booking.util.DBUtil;
import java.sql.*;
import java.util.*;

public class MenuDao {
    public List<Menu> getAllMenus() {
        List<Menu> menus = new ArrayList<>();
        String sql = "SELECT * FROM menu ORDER BY id DESC";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Menu menu = new Menu();
                menu.setId(rs.getInt("id"));
                menu.setName(rs.getString("name"));
                menu.setDescription(rs.getString("description"));
                menu.setPrice(rs.getDouble("price"));
                menu.setImage(rs.getString("image"));
                menus.add(menu);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return menus;
    }

    public boolean addMenu(Menu menu) {
        String sql = "INSERT INTO menu (name, description, price, image) VALUES (?, ?, ?, ?)";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, menu.getName());
            stmt.setString(2, menu.getDescription());
            stmt.setDouble(3, menu.getPrice());
            stmt.setString(4, menu.getImage());

            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateMenu(Menu menu) {
        String sql = "UPDATE menu SET name = ?, description = ?, price = ?, image = ? WHERE id = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, menu.getName());
            stmt.setString(2, menu.getDescription());
            stmt.setDouble(3, menu.getPrice());
            stmt.setString(4, menu.getImage());
            stmt.setInt(5, menu.getId());

            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }


    public boolean deleteMenu(int id) {
        String sql = "DELETE FROM menu WHERE id = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }


    public Menu getMenuById(int id) {
        String sql = "SELECT * FROM menu WHERE id = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                Menu menu = new Menu();
                menu.setId(rs.getInt("id"));
                menu.setName(rs.getString("name"));
                menu.setDescription(rs.getString("description"));
                menu.setPrice(rs.getDouble("price"));
                menu.setImage(rs.getString("image"));
                return menu;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}