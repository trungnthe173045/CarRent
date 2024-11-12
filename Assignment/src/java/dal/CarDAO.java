package dal;

import jakarta.servlet.jsp.jstl.sql.Result;
import java.util.*;
import java.lang.*;
import java.sql.*;
import model.Car;
import model.User;

public class CarDAO extends DBContext {

    public List<Car> getAllCar() {

        List<Car> listC = new ArrayList<>();

        String sql = "select *\n"
                + "from [Car]";

        try {

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {

                Car c = new Car(rs.getInt("id"), rs.getString("name"),
                        rs.getString("brand"), rs.getDouble("price"), rs.getString("model"),
                        rs.getInt("year"), rs.getInt("number_of_seat"), rs.getString("plate_number"),
                        rs.getInt("mileage"), rs.getString("status"), rs.getInt("rating"),
                        rs.getString("image"), rs.getString("description"));

                listC.add(c);
            }

        } catch (Exception e) {

        }

        return listC;
    }

    public List<Integer> getDistinctNOF() {

        List<Integer> list = new ArrayList<>();

        String sql = "select Distinct number_of_seat\n"
                + "from Car";

        try {

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {

                int nos = rs.getInt("number_of_seat");

                list.add(nos);
            }

        } catch (Exception e) {

        }

        return list;
    }

    public void deleteCarById(int id) {

        String sql = "DELETE FROM [dbo].[Car]\n"
                + "      WHERE id = ?";
        
        try {
            
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        
        } catch (Exception e) {
        
        
        }

    }

    public List<Integer> getDistinctRating() {

        List<Integer> list = new ArrayList<>();

        String sql = "select Distinct rating\n"
                + "from Car";

        try {

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {

                int rating = rs.getInt("rating");

                list.add(rating);
            }

        } catch (Exception e) {

        }

        return list;
    }

    public void addCar(Car c) {

        String sql = "INSERT INTO [dbo].[Car]\n"
                + "           ([name]\n"
                + "           ,[brand]\n"
                + "           ,[price]\n"
                + "           ,[model]\n"
                + "           ,[year]\n"
                + "           ,[number_of_seat]\n"
                + "           ,[plate_number]\n"
                + "           ,[mileage]\n"
                + "           ,[status]\n"
                + "           ,[rating]\n"
                + "           ,[image]\n"
                + "           ,[description])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?,?,?,?,?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getName());
            st.setString(2, c.getBrand());
            st.setDouble(3, c.getPrice());
            st.setString(4, c.getModel());
            st.setInt(5, c.getYear());
            st.setInt(6, c.getNumber_of_seat());
            st.setString(7, c.getPlate_number());
            st.setInt(8, c.getMileage());
            st.setString(9, c.getStatus());
            st.setInt(10, c.getRating());
            st.setString(11, c.getImage());
            st.setString(12, c.getDescription());
            st.executeUpdate();
        } catch (Exception e) {

            System.out.println(e);

        }

    }

    public Car getCarById(int id) {

        String sql = "select * from Car where id = ?";

        try {

            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);

            ResultSet rs = st.executeQuery();
            if (rs.next()) {

                Car c = new Car(rs.getInt("id"), rs.getString("name"),
                        rs.getString("brand"), rs.getDouble("price"), rs.getString("model"),
                        rs.getInt("year"), rs.getInt("number_of_seat"), rs.getString("plate_number"),
                        rs.getInt("mileage"), rs.getString("status"), rs.getInt("rating"),
                        rs.getString("image"), rs.getString("description"));

                return c;
            }

        } catch (Exception e) {

        }

        return null;
    }

    public List<Car> searchCar(int filter, int rating, String search, Double fromprice, Double toprice) {

        List<Car> list = new ArrayList<>();

        String sql = "select *\n"
                + "from [Car] where 1=1 ";

        if (filter != 0) {

            sql += " and number_of_seat = " + filter;

        }

        if (rating != 0) {

            sql += " and rating = " + rating;

        }

        if (search != null && !search.equals("")) {

            sql += " and (name like '%" + search + "%' or brand like '%" + search + "%' or model like '%" + search + "%') ";

        }

        if (fromprice != null) {

            sql += " and price >" + fromprice;
        }

        if (toprice != null) {

            sql += " and price <" + toprice;

        }

        try {

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {

                Car c = new Car(rs.getInt("id"), rs.getString("name"),
                        rs.getString("brand"), rs.getDouble("price"), rs.getString("model"),
                        rs.getInt("year"), rs.getInt("number_of_seat"), rs.getString("plate_number"),
                        rs.getInt("mileage"), rs.getString("status"), rs.getInt("rating"),
                        rs.getString("image"), rs.getString("description"));

                list.add(c);
            }

        } catch (Exception e) {

        }
        return list;

    }

    public static void main(String[] args) {
        CarDAO pDao = new CarDAO();

        Car cNew = new Car(231, "123", "123", 123, "123", 123, 123, "123", 123, "Available", 2, "123", "123");

        pDao.addCar(cNew);
    }

}
