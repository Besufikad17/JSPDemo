<%@ page import="java.util.ArrayList" %>
<%@ page import="models.Student" %>
<%@ page import="util.Utils" %>
<%@ page import="java.io.File" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <body>
        <div class="parent">
            <div class="logo">
                  <img src="images/icons8-student-center-100.png" alt="logo" />
            </div>
            <%
                Object user = session.getAttribute("user");
                if(user != null){
                    %>
                        <div class="links">
                            <form method="post" action="logoutProcess.jsp">
                                <input type="submit" name="logout" value="logout" />
                            </form>
                        </div>
                    <%
                }
                else{
                    %>
                        <div class="links">
                            <a href="login.jsp">Login</a>
                            <a href="signup.jsp">Signup</a>
                        </div>
                    <%
                }
            %>
        </div><br><br>
        <div class="grid_parent">
            <%
                try {
                    ArrayList<Student> students = Utils.getStudents();
                    students.add(new Student(1, "gex", "SE", 22));
                    for(int i = 0; i < students.size(); i++){
                        if(i % 2 != 0){
                            %>
                            <div class="row">
                                <div class="child">

                                </div>
                                <div class="child">
                                    <p>Id: <%=students.get(i).getId() %></p>
                                    <p>Name: <%=students.get(i).getName() %></p>
                                    <p>Age: <%=students.get(i).getAge() %></p>
                                    <p>Department: <%=students.get(i).getDept() %></p>
                                    <button onclick="<%System.out.println(":)");%>" class="secondary">Update</button>
                                    <button onclick="<%System.out.println(":(");%>" class="danger">Delete</button>
                                </div>
                            </div>
                            <%
                        }
                    }
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            %>
        </div>
    </body>
    <style>
     <%@include file="/WEB-INF/css/style.css"%>
    </style>
</html>
2