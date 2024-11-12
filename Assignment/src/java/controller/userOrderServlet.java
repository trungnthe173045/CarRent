package controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import dal.CarDAO;
import dal.OrderDAO;
import dal.OrderDetailDAO;
import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.*;
import java.lang.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import model.Car;
import model.Order;
import model.OrderDetail;
import model.User;

@WebServlet(urlPatterns = {"/userOrder"})
public class userOrderServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet userOrderServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet userOrderServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String car_id_raw = request.getParameter("id");

        CarDAO cdao = new CarDAO();

        if (car_id_raw != null) {

            int car_id = Integer.parseInt(car_id_raw);
            Car c = cdao.getCarById(car_id);

            request.setAttribute("car", c);
            request.getRequestDispatcher("userOrder.jsp").forward(request, response);

        } else {

            request.getRequestDispatcher("userOrder.jsp").forward(request, response);

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String car_id_raw = request.getParameter("carid");
        String car_name = request.getParameter("name");
        String pick_up_location = request.getParameter("pick_up_location");
        String drop_off_location = request.getParameter("drop_off_location");
        String pick_up_date = request.getParameter("pick_up_date");
        String drop_off_date = request.getParameter("drop_off_date");
        String pick_up_time = request.getParameter("pick_up_time");
        String drop_off_time = request.getParameter("drop_off_time");

        HttpSession session = request.getSession();
        Integer user_id = (Integer) session.getAttribute("id");

        UserDAO udao = new UserDAO();
        OrderDAO odao = new OrderDAO();
        CarDAO cdao = new CarDAO();
        OrderDetailDAO odtdao = new OrderDetailDAO();

        int carid = Integer.parseInt(car_id_raw);
        Car c = cdao.getCarById(carid);
        String[] pick_up = pick_up_date.split("-");
        String[] drop_off = drop_off_date.split("-");
        int[] day1 = new int[10];
        int[] day2 = new int[10];

        LocalDate currentDate = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
        String formattedDate = currentDate.format(formatter);

        String hour1_raw = pick_up_time.substring(0, 2);
        int hour1 = Integer.parseInt(hour1_raw);
        String min1_raw = pick_up_time.substring(pick_up_time.length() - 2, pick_up_time.length());
        int min1 = Integer.parseInt(min1_raw);

        String hour2_raw = drop_off_time.substring(0, 2);
        int hour2 = Integer.parseInt(hour2_raw);
        String min2_raw = drop_off_time.substring(drop_off_time.length() - 2, drop_off_time.length());
        int min2 = Integer.parseInt(min2_raw);

        for (int i = 0; i < pick_up.length; i++) {

            day1[i] = Integer.parseInt(pick_up[i]);
            day2[i] = Integer.parseInt(drop_off[i]);

        }

        PrintWriter out = response.getWriter();
        LocalDateTime startDateTime = LocalDateTime.of(day1[0], day1[1], day1[2], hour1, min1);
        LocalDateTime endDateTime = LocalDateTime.of(day2[0], day2[1], day2[2], hour2, min2);

        long hoursBetween = ChronoUnit.HOURS.between(startDateTime, endDateTime);
        int hourbtw = (int) hoursBetween;

        if (car_id_raw != null && car_name != null && pick_up_location != null && drop_off_location != null
                && pick_up_date != null && drop_off_date != null && pick_up_time != null && drop_off_time != null) {
            User u = udao.getUserById(user_id);
            List<Order> listO = odao.getAllOrder();

            Order nOrder = new Order(listO.size() + 1, u, c.getPrice() * hourbtw,
                    "Pending", formattedDate, pick_up_location,
                    drop_off_location, pick_up_date, drop_off_date, pick_up_time, drop_off_time, (int) hoursBetween);

            odao.insertOrder(nOrder);
                        odtdao.insertOrderDetail(nOrder, c);

         response.sendRedirect("invoice");


        } else {

           response.sendRedirect("home");

        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
