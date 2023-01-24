<%
  session.removeAttribute("user");
  response.sendRedirect("index.jsp");
%>