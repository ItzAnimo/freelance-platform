package controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;

import model.Bid;
import model.User;
import dao.BidDAO;

@WebServlet("/applyBid")
public class BidServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        try {
            // Get form data
            int jobId = Integer.parseInt(req.getParameter("jobId"));
            double amount = Double.parseDouble(req.getParameter("amount"));
            String message = req.getParameter("message");

            // Get logged-in user (freelancer)
            HttpSession session = req.getSession();
            User user = (User) session.getAttribute("user");

            // Safety check
            if (user == null) {
                res.sendRedirect("jsp/login.jsp");
                return;
            }

            int freelancerId = user.getId();

            // Create Bid object
            Bid bid = new Bid(jobId, freelancerId, amount, message);

            // Save to DB
            BidDAO dao = new BidDAO();
            if (dao.addBid(bid)) {
                res.sendRedirect("viewJobs"); // refresh jobs page
            } else {
                res.sendRedirect("jsp/viewjobs.jsp?error=1");
            }

        } catch (Exception e) {
            e.printStackTrace();
            res.sendRedirect("jsp/viewjobs.jsp?error=1");
        }
    }
}