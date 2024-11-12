/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.*;
import java.lang.*;
import java.sql.*;
import model.Car;
import model.Order;
import model.OrderDetail;

public class OrderDetailDAO extends DBContext {

    public List<OrderDetail> getOrderDetail() {

        List<OrderDetail> list = new ArrayList<>();

        String sql = "select * from [Order_Detail]";

        try {
            CarDAO cd = new CarDAO();
            OrderDAO odao = new OrderDAO();
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                Order o = odao.getOrderById(rs.getInt("order_id"));
                Car c = cd.getCarById(rs.getInt("car_id"));

                OrderDetail od = new OrderDetail(rs.getInt("order_detail_id"), o, c);

                list.add(od);
            }

        } catch (Exception e) {

        }

        return list;
    }

    public List<OrderDetail> getOrderDetailByUserID(int id) {

        List<OrderDetail> list = new ArrayList<>();

        String sql = "SELECT od.order_detail_id , od.order_id,od.car_id\n"
                + "  FROM [dbo].[Order] o , [Order_Detail] od\n"
                + "  where o.user_id = ? and o.id = od.order_id";

        try {
            CarDAO cd = new CarDAO();
            OrderDAO odao = new OrderDAO();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                Order o = odao.getOrderById(rs.getInt("order_id"));
                Car c = cd.getCarById(rs.getInt("car_id"));
                OrderDetail od = new OrderDetail(rs.getInt("order_detail_id"), o, c);
                list.add(od);
            }

        } catch (Exception e) {

        }

        return list;
    }

    public void insertOrderDetail(Order o, Car c) {

        String sql = "INSERT INTO [dbo].[Order_Detail]\n"
                + "           ([order_id]\n"
                + "           ,[car_id])\n"
                + "     VALUES (?,?) ";

        try {

            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, o.getId());
            st.setInt(2, c.getId());
            st.executeUpdate();

        } catch (Exception e) {
        }

    }
    public OrderDetail getLastOrderDetail() {

        String sql = "SELECT TOP 1 * \n"
                + "FROM Order_Detail \n"
                + "ORDER BY order_detail_id\n"
                + "DESC";
        CarDAO cd = new CarDAO();
        OrderDAO odao = new OrderDAO();
        try {

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {

                Order o = odao.getOrderById(rs.getInt("order_id"));
                Car c = cd.getCarById(rs.getInt("car_id"));

                OrderDetail od = new OrderDetail(rs.getInt("order_detail_id"), o, c);
                
                return od;
            }

        } catch (Exception e) {
        }

        return null;

    }

}
