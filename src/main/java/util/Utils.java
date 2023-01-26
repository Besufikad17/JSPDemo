package util;

import models.Student;

import java.sql.*;
import java.util.ArrayList;

public class Utils {

    public static Connection getConnection(String url, String username, String password) throws SQLException {
        return DriverManager.getConnection(url, username, password);
    }

    public static void loadDriver() throws ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
    }

    public static ArrayList<Student> getStudents() throws Exception {
        ArrayList<Student> students = new ArrayList<>();
        loadDriver();
        Connection con = getConnection("jdbc:mysql://localhost:3306/ASTU", "root", "");
        Statement statement = con.createStatement();
        ResultSet rs = statement.executeQuery("SELECT * FROM Student");
        while(rs.next()){
            students.add(new Student(rs.getInt("id"), rs.getString("name"), rs.getString("dept"), rs.getInt("age")));
        }
        return students;
    }

    public static Student getStudentById(int id) throws Exception {
        Student student = new Student();
        Connection con = getConnection("jdbc:mysql://localhost:3306/ASTU", "root", "");
        PreparedStatement statement = con.prepareStatement("SELECT * FROM Student WEHRE id=?");
        statement.setInt(1, id);
        ResultSet rs = statement.executeQuery();
        while(rs.next()){
            Student st = new Student(rs.getInt("id"), rs.getString("name"),rs.getString("dept"), rs.getInt("age"));
            student = st;
        }
        return student;
    }
}
