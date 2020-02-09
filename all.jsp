<%
String opt=request.getParameter("opt");
if(opt.equals("a"))
response.sendRedirect("add.html");
else if(opt.equals("d"))
response.sendRedirect("del.html");
else if(opt.equals("b"))
response.sendRedirect("buy.html");
else if(opt.equals("r"))
response.sendRedirect("repo.jsp");
else
response.sendRedirect("sell.html");
%>