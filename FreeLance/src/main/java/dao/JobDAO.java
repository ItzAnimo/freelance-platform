package dao;

import java.sql.*;
import java.util.*;
import model.Job;
import util.DBConnection;

public class JobDAO {

    // Add Job
    public boolean addJob(Job job) {
        boolean status = false;

        try {
            Connection con = DBConnection.getConnection();
            String query = "INSERT INTO jobs(title, description, budget, client_id) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, job.getTitle());
            ps.setString(2, job.getDescription());
            ps.setDouble(3, job.getBudget());
            ps.setInt(4, job.getClientId());

            int rows = ps.executeUpdate();
            if (rows > 0) status = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    // Get All Jobs
    public List<Job> getAllJobs() {
        List<Job> list = new ArrayList<>();

        try {
            Connection con = DBConnection.getConnection();
            String query = "SELECT * FROM jobs";
            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Job job = new Job();
                job.setId(rs.getInt("id"));
                job.setTitle(rs.getString("title"));
                job.setDescription(rs.getString("description"));
                job.setBudget(rs.getDouble("budget"));
                job.setClientId(rs.getInt("client_id"));

                list.add(job);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}