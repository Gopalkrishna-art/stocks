<%@page import="java.sql.*"%>
<%@page errorPage="catch.jsp"%>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
String url="jdbc:oracle:thin:@localhost:1521:xe";
String un="shop",pw="123";
Connection c=DriverManager.getConnection(url,un,pw);
String q="select * from stock";
ResultSet rs=c.createStatement().executeQuery(q);
while(rs.next())
out.print(rs.getString(1)+"----"+rs.getInt(2)+"<br>");
%>
<a href="all.html">back</a>
