<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Project.ConnectionProvider"%>
<%@include file="header.html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:60%;	
	border-radius: 25px;
	margin-left:20%;
}
h2,h1
{	
	margin-left:20%;
}
hr
{
width:60%;	
}
</style>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<center><font color="red" size="5" >Successfull updated</font></center>
<%}%>
<%
if("invalid".equals(msg))
{
%>
<center><font color="red" size="5" >Some thing Wrong !try again!</font></center>
<%}%>
<%
int id=1;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select max(id) from donor");
	if(rs.first())
	{
		id=rs.getInt(1);
		id=id+1;
	}%>
	<div class="container">
	<h1 style="color:red;">Donor ID:<%out.println(id); %></h1>
	<%
}catch(Exception e)
{}
%>
<div class="container">
<form action="addNewDonorAction.jsp" method="post" onsubmit="validate()">
<input type="hidden" name="id" value="<% out.println(id); %>" >
<h2>Name</h2>
<input type="text" placeholder="Enter Name" name="name" required>
<hr>
<h2>Father Name</h2>
<input type="text" placeholder="Enter Father Name" name="father" required>
<hr>
<h2>Mother Name</h2>
<input type="text" placeholder="Enter Mother Name" name="mother" required>
<hr>
<h2>Mobile Number</h2>
<input type="number" placeholder="Enter Mobile Number" name="mobilenumber" id="mobileno" required>
<hr>
<h2>Gender</h2>
<select name="gender">
<option value="Male">Male</option>
<option value="Female">Female</option>
<option value="Others">Others</option>
</select>
<hr>
<h2>Email</h2>
<input type="email" placeholder="Enter Email ID" name="email" required>
<hr>
<h2>Blood Group</h2>
<select name="bloodgroup">
<option value="A+">A+</option>
<option value="A-">A-</option>
<option value="B+">B+</option>
<option value="B-">B-</option>
<option value="O+">O+</option>
<option value="O-">O-</option>
<option value="AB+">AB+</option>
<option value="AB-">AB-</option>
</select>
<hr>
<h2>Address</h2>
<input type="text" placeholder="Enter Address" name="address" required>
<br>
<center><button type="submit" class="button">Save</button></center>
</form>
</div>
<script >
function validate()
{
	var mobiletxt=document.getElementById("mobileno").value;
	var mobileexp=/^\d{10}$/;
	if(mobiletxt.match(mobileexp))
		{
		return true;
		}
	else
		{
		alert("invalid mobile number");
		return false;
		}
	}

</script>

<br>
<br>
<br>
<br>
<h3><center><h2>Once a blood donor, always a lifesaver</h2> </center></h3>

</body>
</html>