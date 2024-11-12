package controller;

import dal.UserDAO;
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

@WebServlet(name = "loginServlet", urlPatterns = {"/login"})
public class loginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet loginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        int i = 0;
        UserDAO u = new UserDAO();

        List<User> listU = u.getAllUser();

        PrintWriter out = response.getWriter();
        try {

            for (User cl : listU) {

                if (cl.getUsername().equals(user) && cl.getPassword().equals(pass)) {
                    
                    HttpSession session = request.getSession(); 
                    session.setAttribute("user", cl.getUsername());
                    session.setAttribute("pass", cl.getPassword());
                    session.setAttribute("id", cl.getId());
                     session.setAttribute("role", cl.getRole());

                    response.sendRedirect("home");
                }
                i++;
            }

            request.setAttribute("error", "Username or Password incorrect!");
            request.getRequestDispatcher("login.jsp").forward(request, response);

        } catch (Exception e) {

            out.print(out);

        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
