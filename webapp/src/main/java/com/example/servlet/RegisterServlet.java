package com.example.servlet;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;

public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String password = request.getParameter("psw");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/projectdb", "appuser", "AppPassword123");

            PreparedStatement stmt = conn.prepareStatement(
                "INSERT INTO users(email, name, password) VALUES (?, ?, ?)");
            stmt.setString(1, email);
            stmt.setString(2, name);
            stmt.setString(3, password);

            int rows = stmt.executeUpdate();
            if (rows > 0) {
                String encodedName = URLEncoder.encode(name, "UTF-8");
                response.sendRedirect("welcome.jsp?user=" + encodedName);

            } else {
                out.println("<h2>Registration Failed!</h2>");
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace(out);
        }
    }
}

