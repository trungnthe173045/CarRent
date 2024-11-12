/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.OrderDAO;
import dal.OrderDetailDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.*;
import java.lang.*;
import model.OrderDetail;

@WebServlet(name = "listOrderServlet", urlPatterns = {"/listOrder"})
public class listOrderServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet listOrderServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet listOrderServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id_raw = request.getParameter("id");
        String ac = request.getParameter("ac");
       
        OrderDAO oder = new OrderDAO();
        if (id_raw != null && ac != null) {

            try {
                int id = Integer.parseInt(id_raw);

                if (ac.equals("true")) {
                    oder.updateStatusOrderById(id, "Completed");
                } else {
                    oder.updateStatusOrderById(id, "Refuse");
                }
                
                

            } catch (Exception e) {

            }

        }
         OrderDetailDAO odDao = new OrderDetailDAO();
         List<OrderDetail> list = odDao.getOrderDetail();

        request.setAttribute("listOd", list);
        request.getRequestDispatcher("listOrder.jsp").forward(request, response);

       

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
