/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.*;
import java.lang.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import model.Order;
import model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class OrderDAO extends DBContext {

    public List<Order> getAllOrder() {

        List<Order> list = new ArrayList<>();
        UserDAO ud = new UserDAO();

        String sql = "SELECT o.id, o.user_id, \n"
                + "		(DATEDIFF(hour, o.pick_up_date, o.drop_off_date)*(c.price)) AS total_price, o.order_status,\n"
                + "		 FORMAT(o.date_order, 'dd-MM-yy') AS date_order,o.pick_up_location,o.drop_off_location,FORMAT(pick_up_date, 'dd-MM-yy') AS pick_up_date,\n"
                + "		 FORMAT(drop_off_date, 'dd-MM-yy') AS drop_off_date,\n"
                + "		FORMAT(pick_up_date, 'hh:mm') AS pick_up_time,FORMAT(drop_off_date, 'hh:mm') AS drop_off_time,\n"
                + "		DATEDIFF(hour, o.pick_up_date, o.drop_off_date) AS rental_hours\n"
                + "\n"
                + "FROM [Order] o\n"
                + "JOIN Order_Detail od ON o.id = od.order_id\n"
                + "JOIN Car c ON od.car_id = c.id;";
        try {

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {

                User uo = ud.getUserById(rs.getInt("user_id"));

                Order o = new Order(rs.getInt("id"), uo, rs.getDouble("total_price"), rs.getString("order_status"),
                        rs.getString("date_order"), rs.getString("pick_up_location"),
                        rs.getString("drop_off_location"), rs.getString("pick_up_date"), rs.getString("drop_off_date"), rs.getString("pick_up_time"),
                        rs.getString("drop_off_time"), rs.getInt("rental_hours"));

                list.add(o);
            }

        } catch (Exception e) {

        }

        return list;
    }

    public Order getOrderById(int id) {

        UserDAO ud = new UserDAO();

        String sql = "SELECT o.id, o.user_id, \n"
                + "		(DATEDIFF(hour, o.pick_up_date, o.drop_off_date)*(c.price)) AS total_price, o.order_status,\n"
                + "		 FORMAT(o.date_order, 'dd-MM-yy') AS date_order,o.pick_up_location,o.drop_off_location,FORMAT(pick_up_date, 'dd-MM-yy') AS pick_up_date,FORMAT(drop_off_date, 'dd-MM-yy') AS drop_off_date,\n"
                + "		FORMAT(pick_up_date, 'hh:mm') AS pick_up_time,FORMAT(drop_off_date, 'hh:mm') AS drop_off_time,\n"
                + "		DATEDIFF(hour, o.pick_up_date, o.drop_off_date) AS rental_hours\n"
                + "\n"
                + "FROM [Order] o\n"
                + "JOIN Order_Detail od ON o.id = od.order_id\n"
                + "JOIN Car c ON od.car_id = c.id\n"
                + "Where o.id = ?";
        try {

            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {

                User uo = ud.getUserById(rs.getInt("user_id"));

                Order o = new Order(rs.getInt("id"), uo, rs.getDouble("total_price"), rs.getString("order_status"),
                        rs.getString("date_order"), rs.getString("pick_up_location"),
                        rs.getString("drop_off_location"), rs.getString("pick_up_date"), rs.getString("drop_off_date"), rs.getString("pick_up_time"),
                        rs.getString("drop_off_time"), rs.getInt("rental_hours"));

                return o;
            }

        } catch (Exception e) {

        }

        return null;
    }

    public void updateStatusOrderById(int id, String status) {

        String sql = "UPDATE [dbo].[Order]\n"
                + "   SET \n"
                + "      [order_status] = ?\n"
                + " WHERE id = ?";

        try {

            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, status);
            st.setInt(2, id);
            st.executeUpdate();

        } catch (Exception e) {

        }

    }

    public List<Order> getListOrderByUserId(int id) {

        List<Order> list = new ArrayList<>();
        UserDAO ud = new UserDAO();

        String sql = "SELECT o.id, o.user_id, \n"
                + "		(DATEDIFF(hour, o.pick_up_date, o.drop_off_date)*(c.price)) AS total_price, o.order_status,\n"
                + "		 FORMAT(o.date_order, 'dd-MM-yy') AS date_order,o.pick_up_location,o.drop_off_location,FORMAT(pick_up_date, 'dd-MM-yy') AS pick_up_date,FORMAT(drop_off_date, 'dd-MM-yy') AS drop_off_date,\n"
                + "		FORMAT(pick_up_date, 'hh:mm') AS pick_up_time,FORMAT(drop_off_date, 'hh:mm') AS drop_off_time,\n"
                + "		DATEDIFF(hour, o.pick_up_date, o.drop_off_date) AS rentalh\n"
                + "\n"
                + "FROM [Order] o\n"
                + "JOIN Order_Detail od ON o.id = od.order_id\n"
                + "JOIN Car c ON od.car_id = c.id\n"
                + "Where o.user_id = ?";
        try {

            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {

                User uo = ud.getUserById(rs.getInt("user_id"));
                Order o = new Order(rs.getInt("id"), uo, rs.getDouble("total_price"), rs.getString("order_status"),
                        rs.getString("date_order"), rs.getString("pick_up_location"),
                        rs.getString("drop_off_location"), rs.getString("pick_up_date"), rs.getString("drop_off_date"), rs.getString("pick_up_time"),
                        rs.getString("drop_off_time"), rs.getInt("rental_hours"));
                list.add(o);
            }

        } catch (Exception e) {

        }

        return list;

    }

    public String getTest() {

        List<Order> list = new ArrayList<>();
        UserDAO ud = new UserDAO();
        String t = "";
        String sql = "SELECT o.id, o.user_id, \n"
                + "		(DATEDIFF(hour, o.pick_up_date, o.drop_off_date)*(c.price)) AS total_price, o.order_status,\n"
                + "		 FORMAT(o.date_order, 'dd-MM-yy') AS date_order,o.pick_up_location,o.drop_off_location,FORMAT(pick_up_date, 'dd-MM-yy') AS pick_up_date,\n"
                + "		 FORMAT(drop_off_date, 'dd-MM-yy') AS drop_off_date,\n"
                + "		FORMAT(pick_up_date, 'hh:mm') AS pick_up_time,FORMAT(drop_off_date, 'hh:mm') AS drop_off_time,\n"
                + "		DATEDIFF(hour, o.pick_up_date, o.drop_off_date) AS rental_hours\n"
                + "\n"
                + "FROM [Order] o\n"
                + "JOIN Order_Detail od ON o.id = od.order_id\n"
                + "JOIN Car c ON od.car_id = c.id;";
        try {

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {

                User uo = ud.getUserById(rs.getInt("user_id"));

                t += rs.getString("pick_up_date");
//             
            }

        } catch (Exception e) {

        }

        return t;

    }

   public void insertOrder(Order o) {
        String sql = "INSERT INTO [dbo].[Order] " +
                     "(user_id, order_status, date_order, pick_up_location, drop_off_location, pick_up_date, drop_off_date) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?)";
        
        
        
        LocalDate currentDate = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String formattedDate = currentDate.format(formatter);

        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setInt(1, o.getUser().getId());
            st.setString(2, o.getOrder_status());
            st.setString(3, formattedDate); // Assuming date_order is already in "yyyy-MM-dd" format
            st.setString(4, o.getPick_up_location());
            st.setString(5, o.getDrop_off_location());

            // Combine pick_up_date and pick_up_time into pick_up_datetime
            String pickUpDatetime = o.getPick_up_date() + " " + o.getPick_up_time() + ":00";
            st.setString(6, pickUpDatetime);

            // Combine drop_off_date and drop_off_time into drop_off_datetime
            String dropOffDatetime = o.getDrop_off_date() + " " + o.getDrop_off_time() + ":00";
            st.setString(7, dropOffDatetime);

            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {

        OrderDAO od = new OrderDAO();
User us = new User();
        //   od.updateStatusOrderById(1, "Pending");
        List<Order> list = od.getAllOrder();


    }

}
