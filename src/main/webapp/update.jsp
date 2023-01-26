<%@ page import="models.Student" %>
<%@ page import="util.Utils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Update student</title>
    </head>
    <body>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            Student student = null;
            try {
                student = Utils.getStudentById(id);
                %>
                    <form class="form-container" method="post" action="updateProcess.jsp">
                        <p><label>Id: </label>
                            <input type="number" name="id" value="<%=student.getId() %>" disabled/>
                        </p>
                        <p><label>Name: </label>
                            <input type="text" name="name" value="<%=student.getName() %>" class="text" />
                        </p>
                        <p><label>Age: </label>
                            <input type="number" name="age" value="<%=student.getAge() %>" />
                        </p>
                        <p><label>Department: </label>
                            <input type="text" name="name" value="<%=student.getDept() %>" class="text"/>
                        </p>
                        <input type="submit" class="secondary" name="update" />
                    </form>
                <%
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        %>
    </body>
    <style>
        <%@include file="/WEB-INF/css/style.css"%>
    </style>
</html>
