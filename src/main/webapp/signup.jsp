<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <body>
        <div>
          <form class="form-container" action="signupProcess.jsp" method="post">
              <h2>SignUp Demo</h2>

              <input
                class="text"
                name="username"
                type="text"
                placeholder="username"
              />

              <input
                class="text"
                name="email"
                type="text"
                placeholder="email"
              />

              <input
                class="text"
                name="password"
                type="password"
                placeholder="password"
              />

              <button class="primary">SignUp</button><br />
              <a href="login.jsp">Already have an account ?</a>
            </form>
        </div>
    </body>
    <style>
     <%@include file="/WEB-INF/css/style.css"%>
    </style>
</html>

