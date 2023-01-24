<%@page import="bean.SignupDao"%>


<jsp:useBean id="obj" class="bean.SignupBean" />
<jsp:setProperty name="obj" property="*" />

<%

   boolean status=SignupDao.signup(obj);

   if(!status){
      %><jsp:include page="index.jsp"></jsp:include><%
      out.print("You r successfully signed in");
      session.setAttribute("user", obj);
   }else{
      %><jsp:include page="signup.jsp"></jsp:include><%
      out.print("Sorry, email or password error");
   }

%>