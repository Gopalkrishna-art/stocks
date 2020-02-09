<%@page import="java.sql.*"%>
<%@page errorPage="catch.jsp"%>
<%
String item=request.getParameter("item");
int no=Integer.parseInt(request.getParameter("no"));
Class.forName("oracle.jdbc.driver.OracleDriver");
String url="jdbc:oracle:thin:@localhost:1521:xe";
String un="shop",pw="123";
Connection c=DriverManager.getConnection(url,un,pw);
String k="select name from stock where name='"+item+"'";
ResultSet rs=c.createStatement().executeQuery(k);
if(rs.next()){
out.print("Item already added");
}
else{
String r="insert into stock values(?,?)";
PreparedStatement ps=c.prepareStatement(r);
ps.setString(1,item);
ps.setInt(2,no);
ps.execute();
out.print("Item added");
}
%>
<a href="all.html">back</a>