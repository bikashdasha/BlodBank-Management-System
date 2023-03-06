<%
String username=request.getParameter("username");
String password=request.getParameter("password");
if("admin".equals(username) && "admin".equals(password))
{
	response.sendRedirect("home.jsp");
}
else
{
	response.sendRedirect("admin.jsp?msg=invalid");
}
%>