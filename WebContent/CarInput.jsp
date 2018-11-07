<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Sheridan Used Cars Information</title>
<style>
body, table{ 
			margin:20px auto; 
			text-align:left;  
			font-size:12px;  
		}
</style>
</head>

<body>

<div align="center">
<h2>Sheridan Used Cars Information</h2>
</div>	
	<form method="POST" name="BrandForm" action="JSPData.jsp">
	
<table>

<tr>
  
	<td align="left" width="150">Id </td>
	<td>
	<select name="mid">
	<option value="1"> 1	Nissan
	<option value="2"> 2	Honda
	<option value="3"> 3	Ford
	<option value="4"> 4	Hyundai
	<option value="5"> 5	Volkswagen
	<option value="6"> 6	Chevrolet
	<option value="7"> 7	Toyota
	<option value="8"> 8	KIA
	<option value="9"> 9	BMV
	</select>
	
</tr>

<tr>
	<td align="left" width="100">model </td>
	<td><input type="text" name="model" id="model" value="" maxlength="30" class="box_general"></td>
</tr>
<tr>
	<td>year </td>
	<td><input type="text" name="year" id="year" value="" maxlength="30" class="box_general"></td>
</tr>
<tr>
	<td>color </td>
	<td><input type="text" name="color" id="color" value="" maxlength="30" class="box_general"></td>
</tr>
<tr>
	<td>price </td>
	<td><input type="text" name="price" id="price" value="" maxlength="30" class="box_general"></td>
</tr>

<tr>
<td colspan="2" height="30" align="center"> <input type="submit" value="Add Info"> </td></tr>
</table>
 	
	<br><br>
			<input type="button" value="Search Brand" onclick="javascript:GoSearch();">
	</form>
	
	
	
</body>
</html>