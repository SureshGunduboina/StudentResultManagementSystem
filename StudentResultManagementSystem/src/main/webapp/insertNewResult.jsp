<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String rollNo=request.getParameter("rollNo");
String S1=request.getParameter("s1");
String S2=request.getParameter("s2");
String S3=request.getParameter("s3");
String S4=request.getParameter("s4");
String S5=request.getParameter("s5");
String S6=request.getParameter("s6");
String S7=request.getParameter("s7");
int s1=Integer.parseInt(S1);
int s2=Integer.parseInt(S2);
int s3=Integer.parseInt(S3);
int s4=Integer.parseInt(S4);
int s5=Integer.parseInt(S5);
int s6=Integer.parseInt(S6);
int s7=Integer.parseInt(S7);

try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into result values(?,?,?,?,?,?,?,?);");
	ps.setString(1, rollNo);
	ps.setInt(2, s1);
	ps.setInt(3, s2);
	ps.setInt(4, s3);
	ps.setInt(5, s4);
	ps.setInt(6, s5);
	ps.setInt(7, s6);
	ps.setInt(8, s7);
	ps.executeUpdate();
	response.sendRedirect("adminHome.jsp"); 
}catch(Exception e){
	System.out.println(e);
}
%>