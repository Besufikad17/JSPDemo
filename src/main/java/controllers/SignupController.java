package controllers;

import models.Signup;
import util.Utils;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class SignupController {

    public static boolean signup(Signup bean){
        System.out.println(bean.getUsername() + " " + bean.getEmail() + " " + bean.getPassword());
        boolean stats = true;
        if(bean.getUsername() != null && bean.getPassword() != null){
            try {
                Utils.loadDriver();
                Connection con = Utils.getConnection("jdbc:mysql://localhost:3306/ASTU", "root", "");
                PreparedStatement ps = con.prepareStatement("INSERT INTO Admin(username,email,password) VALUES(?,?,?)");
                ps.setString(1, bean.getUsername());
                ps.setString(2, bean.getEmail());
                ps.setString(3, bean.getPassword());
                ps.executeUpdate();
                stats = false;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
        return stats;
    }

}
