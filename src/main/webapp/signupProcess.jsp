<%@page import="controllers.SignupController"%>


<jsp:useBean id="obj" class="models.Signup" />
<jsp:setProperty name="obj" property="*" />

<%

   boolean status= SignupController.signup(obj);

   if(!status){
      %><jsp:include page="index.jsp"></jsp:include><%
      out.print("You r successfully signed in");
      session.setAttribute("user", obj);
   }else{
      %><jsp:include page="signup.jsp"></jsp:include><%
      out.print("Sorry, email or password error");
   }

%>