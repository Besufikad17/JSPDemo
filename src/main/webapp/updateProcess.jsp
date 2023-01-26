<%@ page import="java.util.Arrays" %>
<jsp:useBean id="obj" class="models.Student"/>
<jsp:setProperty name="obj" property="*" />

<%
   String x = Arrays.toString(request.getParameterValues("submit"));
   System.out.println(x);
%>