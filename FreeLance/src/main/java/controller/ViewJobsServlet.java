package controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.List;

import dao.JobDAO;
import model.Job;

@WebServlet("/viewJobs")
public class ViewJobsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        try {
            // Fetch jobs from DB
            JobDAO dao = new JobDAO();
            List<Job> jobs = dao.getAllJobs();

            // Send data to JSP
            req.setAttribute("jobs", jobs);

            // Forward to JSP page
            RequestDispatcher rd = req.getRequestDispatcher("jsp/viewjobs.jsp");
            rd.forward(req, res);

        } catch (Exception e) {
            e.printStackTrace();
            res.sendRedirect("jsp/dashboard.jsp");
        }
    }
}