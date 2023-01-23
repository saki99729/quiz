package com.example.demo.model;

public class Login {
    private String email;
    private String pass;
    private String jobRole;

    public Login(String email, String pass, String jobRole) {
        this.email = email;
        this.pass = pass;
        this.jobRole = jobRole;
    }

    public Login() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getJobRole() {
        return jobRole;
    }

    public void setJobRole(String jobRole) {
        this.jobRole = jobRole;
    }
}