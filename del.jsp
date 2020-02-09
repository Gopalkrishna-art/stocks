<%@page import="java.sql.*"%>
<%@page errorPage="catch.jsp"%>
<%
String op=request.getParameter("op");
Class.forName("oracle.jdbc.driver.OracleDriver");
String url="jdbc:oracle:thin:@localhost:1521:xe";
String un="shop",pw="123";
Connection c=DriverManager.getConnection(url,un,pw);
String q=("delete from stock where name=?");
PreparedStatement ps=c.prepareStatement(q);
ps.setString(1,op);
ps.execute();
out.print("Item deleted");
%>
<a href="all.html">back</a>