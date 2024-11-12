/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CarDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.util.*;
import java.lang.*;
import java.nio.file.Files;
import java.nio.file.Path;
import model.Car;

@WebServlet(name = "addCarServlet", urlPatterns = {"/addCar"})
@MultipartConfig
public class addCarServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addCarServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addCarServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CarDAO cDao = new CarDAO();
        List<Car> list = cDao.getAllCar();
        request.setAttribute("list", list);
        request.getRequestDispatcher("addCar.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        if (!session.getAttribute("role").equals("Manager")) {
            response.sendRedirect("home");
        }

        PrintWriter out = response.getWriter();
        String id_raw = request.getParameter("id"); //int
        String name = request.getParameter("name");
        String price_raw = request.getParameter("price");
        String brand = request.getParameter("brand");
        String model = request.getParameter("model");
        String year_raw = request.getParameter("year");//int
        String number_of_seat_raw = request.getParameter("number_of_seat"); //int
        String plate_number = request.getParameter("plate_number");
        String mileage_raw = request.getParameter("mileage"); //int
        String status = request.getParameter("status");
        String rate_raw = request.getParameter("rate"); //int
        String description = request.getParameter("description");
        Part part = request.getPart("image");

        String image = "carimg/default-car.jpg";

        String realPath = "";

        if (part != null && part.getSize() > 0) {

            realPath = request.getServletContext().getRealPath("/carimages");
            String filename = Path.of(part.getSubmittedFileName()).getFileName().toString();

            if (!Files.exists(Path.of(realPath))) {

                Files.createDirectory(Path.of(realPath));

            }

            part.write(realPath + "\\" + filename);

            if (!filename.endsWith(".jpg")) {

                image = "carimg/default-car.jpg";

            } else {
                image = realPath.substring(realPath.length() - 9, realPath.length()) + "/" + filename;
            }

        }

        try {

            int id = Integer.parseInt(id_raw);
            int year = Integer.parseInt(year_raw);
            int number_of_seat = Integer.parseInt(number_of_seat_raw);
            int mileage = Integer.parseInt(mileage_raw);
            int rate = Integer.parseInt(rate_raw);
            Double price = Double.parseDouble(price_raw);

            out.println(id);
            out.println(name);
            out.println(brand);
            out.println(price);
            out.println(model);
            out.println(year);
            out.println(number_of_seat);
            out.println(plate_number);
            out.println(mileage);
            out.println(status);
            out.println(rate);
            out.println(image);
            out.println(realPath);

            CarDAO cd = new CarDAO();

            Car cNew = new Car(id, name, brand, price, model, year, number_of_seat, plate_number, mileage, status, rate, image, description);

            cd.addCar(cNew);

        } catch (Exception e) {

        }

        response.sendRedirect("carManager");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
