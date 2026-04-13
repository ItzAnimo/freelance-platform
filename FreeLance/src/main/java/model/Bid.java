package model;

public class Bid {

    private int id;
    private int jobId;
    private int freelancerId;
    private double amount;
    private String message;

    // Default Constructor
    public Bid() {
    }

    // Parameterized Constructor
    public Bid(int jobId, int freelancerId, double amount, String message) {
        this.jobId = jobId;
        this.freelancerId = freelancerId;
        this.amount = amount;
        this.message = message;
    }

    // Full Constructor
    public Bid(int id, int jobId, int freelancerId, double amount, String message) {
        this.id = id;
        this.jobId = jobId;
        this.freelancerId = freelancerId;
        this.amount = amount;
        this.message = message;
    }

    // Getters and Setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getJobId() {
        return jobId;
    }

    public void setJobId(int jobId) {
        this.jobId = jobId;
    }

    public int getFreelancerId() {
        return freelancerId;
    }

    public void setFreelancerId(int freelancerId) {
        this.freelancerId = freelancerId;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}