<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sheridan Used Cars Information</title>
<style>
body, table{ 
			margin:20px auto; 
			text-align:left;  
			font-size:12px;  
		}
		
		.listT{
			background-color:#ffffff;
			border:thin solid #808080;
			height:300px;
			width:300px;
			margin:20px auto;  
			text-align:left;  
   			font-family:Arial;
			font-size:12px; 
			color:#004554;

		}
</style>
</head>
<body>
 
<%-- Declaration --%>
<%!
Connection conn;
Statement stmt;
ResultSet rs;
%>

<%-- Connection --%>
<%
String connectionUrl="jdbc:mysql://localhost:3306/sheridanusedcars";
String connectionUser="root";
String connectionPassword="mydb1234";
%>

<div align="center">
<h2>Sheridan Used Cars Information</h2>
</div>

<table class="listT">
<th>No</th>
<th>Id</th>
<th>Model</th>
<th>Year</th>
<th>Color</th>
<th>Price</th>
<%-- Print output --%>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
	
	stmt = conn.createStatement();
	rs = stmt.executeQuery("select * from car ");
	
	while(rs.next()){
	%>	
	<tr><td width="30">
		<%=rs.getInt(1)%>
	</td><td>
		<%=rs.getInt(2)%>
	</td>
	<td>
		<%=rs.getString(3)%>
	</td><td>
		<%=rs.getInt(4)%>
	</td>
	<td>
		<%=rs.getString(5)%>
	</td><td>
		<%=rs.getDouble(6)%>
	</td>
	</tr>		
	<%	
	}
}
catch(Exception ex){
	ex.printStackTrace();
}finally{
	
	// close
	if(conn!=null)
        conn.close();
	if(stmt!=null)
	        stmt.close();
	if(rs!=null)
	        rs.close();
}
	
%>
</table>

</body>
</html>