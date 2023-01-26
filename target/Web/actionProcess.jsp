<%@ page import="java.util.Arrays" %>
<%--<jsp:useBean id="obj" class="models.Student"/>--%>
<%--<jsp:setProperty name="obj" property="*" />--%>

<%
   String x = Arrays.toString(request.getParameterValues("submiy"));
   System.out.println(x);
%>