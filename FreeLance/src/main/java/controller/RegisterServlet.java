package controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;

import model.User;
import dao.UserDAO;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String role = req.getParameter("role");

        User user = new User(name, email, password, role);
        UserDAO dao = new UserDAO();

        if (dao.registerUser(user)) {
            res.sendRedirect("jsp/login.jsp");
        } else {
            res.sendRedirect("jsp/register.jsp?error=1");
        }
    }
}