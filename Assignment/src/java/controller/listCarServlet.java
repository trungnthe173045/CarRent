/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CarDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.*;
import java.lang.*;
import model.Car;

@WebServlet(name = "listCarServlet", urlPatterns = {"/listCar"})
public class listCarServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet listAccountServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet listAccountServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        

        CarDAO c = new CarDAO();

        List<Integer> listSeat = c.getDistinctNOF();

        List<Integer> listRating = c.getDistinctRating();

        String filter_raw = request.getParameter("filter");
        String rating_raw = request.getParameter("rating");
        String search_raw = request.getParameter("search");
        String fromprice_raw = request.getParameter("fromprice");
        String toprice_raw = request.getParameter("toprice");

        PrintWriter out = response.getWriter();
        Double fromprice, toprice;
        int filter, rating;

        try {

            if (filter_raw == null && rating_raw == null && search_raw == null && fromprice_raw == null && toprice_raw == null) {

                List<Car> listC = c.getAllCar();

                request.setAttribute("listSeat", listSeat);
                request.setAttribute("listRating", listRating);
                request.setAttribute("listC", listC);
                request.getRequestDispatcher("car.jsp").forward(request, response);

            } else  {

                fromprice = (fromprice_raw == null || fromprice_raw.equals("")) ? null : Double.parseDouble(fromprice_raw);
                toprice = (toprice_raw == null || toprice_raw.equals("")) ? null : Double.parseDouble(toprice_raw);
                filter = Integer.parseInt(filter_raw);
                rating = Integer.parseInt(rating_raw);

                List<Car> listC = c.searchCar(filter, rating, search_raw, fromprice, toprice);

                request.setAttribute("listSeat", listSeat);
                request.setAttribute("listRating", listRating);
                request.setAttribute("listC", listC);
                request.getRequestDispatcher("car.jsp").forward(request, response);

            }

        } catch (Exception e) {

            out.print(e);

        }
        
        

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
