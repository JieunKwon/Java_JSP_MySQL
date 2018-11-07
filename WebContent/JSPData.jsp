<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
 
<%-- Declaration --%>
<%!
Connection conn; 
PreparedStatement pst; 
%>

<%-- Connection --%>
<%
String connectionUrl="jdbc:mysql://localhost:3306/sheridanusedcars";
String connectionUser="root";
String connectionPassword="mydb1234";
%>

<%
//Params 
int manufacturerID = Integer.parseInt(request.getParameter("mid"));
String model = request.getParameter("model");
String colour = request.getParameter("color");
int year = Integer.parseInt(request.getParameter("year"));
Double price = Double.parseDouble(request.getParameter("price"));

// query
String insertSQL ="insert into car (manufacturerID, model, year, colour, price) " + " values(?,?,?,?,?)";

try{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
	 
	 pst = conn.prepareStatement(insertSQL);
	   
	// set 
	pst.setInt(1,manufacturerID); 
	pst.setString(2,model);
	pst.setInt(3,year); 
	pst.setString(4,colour); 	
	pst.setDouble(5,price); 
	
	out.println(manufacturerID + model + colour + year + price);
	// execute
	pst.executeUpdate();
	
	// 
	out.println("Successfully inserted!");

	%>
	
	<br>
	<a href="carInput.jsp">Go back</a>
	<br>
	<a href="Dataview.jsp">View List</a>
	
	<%
}catch(Exception ex){
	ex.printStackTrace();
}finally{
	
	// close
	if(conn!=null)
        conn.close(); 
	if(pst!=null)
		pst.close(); 
}

%>

</body>
</html>