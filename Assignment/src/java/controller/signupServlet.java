/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

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
import model.User;

@WebServlet(name="signupServlet", urlPatterns={"/signup"})
public class signupServlet extends HttpServlet {
   
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet signupServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet signupServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String email = request.getParameter("email");

                //check mat khau nhap lai
        if (!password.equals(repassword)) {
            request.setAttribute("error", "Password do not match");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
            return;
        }

        //check username co ton tai hay khong
        UserDAO userDAO = new UserDAO();
        User existingUser = userDAO.getUserByUsername(username);
        if (existingUser != null) {
            request.setAttribute("error", "Username already exists");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
            return;
        }

        // tao user moi neu thieu du lieu -> hien loi + ve trang Signup.jsp
        User newUser = userDAO.createUser(name, phone, address, email, username, password, "Customer");
        if (newUser == null) {
            request.setAttribute("error", "Missing info to make new user");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
            return;
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("user", newUser.getUsername());
            session.setAttribute("pass", newUser.getPassword());
            session.setAttribute("id", newUser.getId());
            session.setAttribute("role", newUser.getRole());
            response.sendRedirect("home.jsp");
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
