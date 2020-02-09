<%@page import="java.sql.*"%>
<%@page errorPage="catch.jsp"%>
<%
String item=request.getParameter("item");
int no=Integer.parseInt(request.getParameter("no"));
Class.forName("oracle.jdbc.driver.OracleDriver");
String url="jdbc:oracle:thin:@localhost:1521:xe";
String un="shop",pw="123";
Connection c=DriverManager.getConnection(url,un,pw);
String k="select name,no from stock where name='"+item+"'";
ResultSet rs=c.createStatement().executeQuery(k);
String r="";
if(rs.next()){
r="update stock set no=? where name=?";
PreparedStatement p=c.prepareStatement(r);
p.setString(2,item);
p.setInt(1,rs.getInt(2)+no);
p.execute();
out.print("Item added");
}
else{
out.print("no item found to buy");
}
%>
<a href="all.html">back</a>