<%@page import="bean.LoginDao"%>


<jsp:useBean id="obj" class="bean.LoginBean"/>
<jsp:setProperty name="obj" property="*" />

<%

   boolean status=LoginDao.validate(obj);

   if(!status){
      response.sendRedirect("index.jsp");
      out.println("You r successfully logged in");
      session.setAttribute("user", obj);
   }else{
      %><jsp:include page="login.jsp"></jsp:include><%
      out.print("Sorry, email or password error");
   }

%>