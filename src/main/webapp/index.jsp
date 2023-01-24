<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <body>
        <div class="parent">
            <div class="logo">
                  <img src="" alt="logo" />
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
        </div>
    </body>
    <style>
     <%@include file="/WEB-INF/css/style.css"%>
    </style>
</html>
