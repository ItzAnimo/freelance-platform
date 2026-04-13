package controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;

import model.Job;
import dao.JobDAO;
import model.User;

@WebServlet("/postJob")
public class JobServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String title = req.getParameter("title");
        String description = req.getParameter("description");
        double budget = Double.parseDouble(req.getParameter("budget"));

        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");

        int clientId = user.getId();

        Job job = new Job(title, description, budget, clientId);
        JobDAO dao = new JobDAO();

        if (dao.addJob(job)) {
            res.sendRedirect("jsp/dashboard.jsp");
        } else {
            res.sendRedirect("jsp/postjob.jsp?error=1");
        }
    }
}