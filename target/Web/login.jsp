<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <body>
        <div>
          <form class="form-container" action="loginProcess.jsp" method="post">
              <h2>Login Demo</h2>

              <input
                class="text"
                name="username"
                type="text"
                placeholder="username"
              />

              <input
                class="text"
                name="password"
                type="password"
                placeholder="password"
              />

              <button class="primary">Login</button><br />
              <a href="signup.jsp">Dont have an account ?</a>
            </form>
        </div>
    </body>
    <style>
     <%@include file="/WEB-INF/css/style.css"%>
    </style>
</html>

