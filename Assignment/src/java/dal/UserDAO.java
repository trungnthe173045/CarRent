/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.*;
import java.lang.*;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import model.User;

public class UserDAO extends DBContext {

    public List<User> getAllUser() {

        List<User> list = new ArrayList<>();

        String sql = "select *\n"
                + "from [User]";

        try {

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                User user = new User(rs.getInt("id"), rs.getString("name"), rs.getInt("phone"),
                        rs.getString("address"), rs.getString("email"), rs.getString("username"),
                        rs.getString("password"), rs.getString("role"), rs.getString("image"));

                list.add(user);
            }

        } catch (Exception e) {
            System.out.println(e);
        }

        return list;
    }

    public List<String> getDistinctRole() {

        List<String> list = new ArrayList<>();

        String sql = "select distinct [role]\n"
                + "from [User]";

        try {

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {

                String role = rs.getString("role");

                list.add(role);

            }

        } catch (Exception e) {

        }

        return list;
    }

    public User getUserById(int id) {

        String sql = "select * from [User] where id = ?";

        try {

            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);

            ResultSet rs = st.executeQuery();
            if (rs.next()) {

                User user = new User(rs.getInt("id"), rs.getString("name"), rs.getInt("phone"),
                        rs.getString("address"), rs.getString("email"), rs.getString("username"),
                        rs.getString("password"), rs.getString("role"), rs.getString("image"));

                return user;
            }

        } catch (Exception e) {

        }

        return null;
    }

    public void editPassById(int id, String pass) {

        String sql = "UPDATE [dbo].[User]\n"
                + "   SET \n"
                + "      [password] = ?\n"
                + " WHERE id = ?";

        try {

            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, pass);
            st.setInt(2, id);
            st.executeUpdate();

        } catch (Exception e) {

        }

    }

    public void editRoleById(int id, String role) {

        String sql = "UPDATE [dbo].[User]\n"
                + "   SET \n"
                + "      [role] = ?\n"
                + " WHERE id = ?";

        try {

            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, role);
            st.setInt(2, id);
            st.executeUpdate();

        } catch (Exception e) {

        }

    }
    public User getUserByUsername(String username) {
        User u = null;
        try {
            String sql = "SELECT * FROM [User] WHERE username = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            ResultSet rs = statement.executeQuery();

            if (rs.next()) {
                u = new User();
                u.setId(rs.getInt("id"));
                u.setName(rs.getString("name"));
                u.setPhone(rs.getInt("phone"));
                u.setAddress(rs.getString("address"));
                u.setEmail(rs.getString("email"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setRole(rs.getString("role"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return u;
    }
public User createUser(String name, String phone, String address, String email, String username, String password, String role) {
        try {
            String defaultUserImage = "userimg/default.jpg"; //defaultUserImage when create new user
            // Insert new user into the database
            String insertSql = "INSERT INTO [User] ([name], phone, [address], email, username, [password], [role],[image]) VALUES (?, ?, ?, ?, ?, ?, ?,?)";
            PreparedStatement insertSt = connection.prepareStatement(insertSql);
            insertSt.setString(1, name);
            insertSt.setString(2, phone);
            insertSt.setString(3, address);
            insertSt.setString(4, email);
            insertSt.setString(5, username);
            insertSt.setString(6, password);
            insertSt.setString(7, role);
            insertSt.setString(8, defaultUserImage);
            int affectedRows = insertSt.executeUpdate();
            if (affectedRows == 0) {
                // Insertion failed
                return null;
            }
            // Retrieve the newly inserted user
            String selectSql = "SELECT * FROM [User] WHERE username = ?";
            PreparedStatement selectSt = connection.prepareStatement(selectSql);
            selectSt.setString(1, username);
            ResultSet rs = selectSt.executeQuery();
            if (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("id"));
                u.setName(rs.getString("name"));
                u.setPhone(rs.getInt("phone"));
                u.setAddress(rs.getString("address"));
                u.setEmail(rs.getString("email"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setRole(rs.getString("role"));
                u.setImage(rs.getString("image"));
                return u;
}
     } catch (Exception e) {
            e.printStackTrace();
    }
        return null; }

    public static void main(String[] args) {

        String u = "1234";
        
        System.out.println(u.substring(u.length()-2,u.length()));
        
        

    }



}
