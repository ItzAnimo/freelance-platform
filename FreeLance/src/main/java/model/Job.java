package model;

public class Job {

    private int id;
    private String title;
    private String description;
    private double budget;
    private int clientId;

    // Default Constructor
    public Job() {
    }

    // Parameterized Constructor
    public Job(String title, String description, double budget, int clientId) {
        this.title = title;
        this.description = description;
        this.budget = budget;
        this.clientId = clientId;
    }

    // Full Constructor
    public Job(int id, String title, String description, double budget, int clientId) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.budget = budget;
        this.clientId = clientId;
    }

    // Getters and Setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getBudget() {
        return budget;
    }

    public void setBudget(double budget) {
        this.budget = budget;
    }

    public int getClientId() {
        return clientId;
    }

    public void setClientId(int clientId) {
        this.clientId = clientId;
    }
}