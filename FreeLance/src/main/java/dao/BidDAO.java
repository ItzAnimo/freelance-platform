package dao;

import java.sql.*;
import model.Bid;
import util.DBConnection;

public class BidDAO {

    // Add Bid
    public boolean addBid(Bid bid) {
        boolean status = false;

        try {
            Connection con = DBConnection.getConnection();
            String query = "INSERT INTO bids(job_id, freelancer_id, amount, message) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, bid.getJobId());
            ps.setInt(2, bid.getFreelancerId());
            ps.setDouble(3, bid.getAmount());
            ps.setString(4, bid.getMessage());

            int rows = ps.executeUpdate();
            if (rows > 0) status = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}