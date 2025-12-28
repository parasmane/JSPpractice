<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	101<br>
	<%
	
		String url="jdbc:postgresql://localhost:5432/secrets";
		String sql="select * from users where id=1";
		Class.forName("org.postgresql.Driver");
		Connection con =DriverManager.getConnection(url,"postgres","paras");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(sql);
		rs.next();
		
	%>
	
	 id<%=rs.getString(3) %>
</body>
</html>