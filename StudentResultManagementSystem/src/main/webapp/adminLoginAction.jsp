<%
String username1 =request.getParameter("username");
String password1=request.getParameter("password");
if("admin".equals(username1) && "admin".equals(password1))
{
	session.setAttribute("username1", username1);
	response.sendRedirect("adminHome.jsp");
	
}else{
	response.sendRedirect("errorAdminLogin.html");
}
%>