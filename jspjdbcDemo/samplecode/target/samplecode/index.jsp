<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
<html>
<head>
<title>Obtaining a Connection</title>
</head>
<body>
<h1>This Page Obtains a Connection to a Database and executes a query</h1>
The query is based upon a PreparedStatement</h1>
<%
     try {
      Connection conn = DriverManager.getConnection("https://localhost:3306/loginupdate","root","");
     Statement stmt = conn.createStatement();
     ResultSet result = stmt.executeQuery("SELECT * FROM `userupdate`");
     out.println("connected");
      String str="";
      while(result.next()){
       str+=result.getString(1)+"---"+result.getString(2);
      }
      out.println(str);
      stmt.close();
      conn.close();
     }
     catch (SQLException e) {
         
      }
      

%>
</body>
</html>