<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
.mySlides {display:none;}

input[type="text"], input[type="mail"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
}
</style>
</head>
<body>

<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
  <div class="header-right">
    <a class="active" href="index.jsp">Home</a>
    <a href="adminLogin.jsp">Admin Login</a>
  </div>
</div>

<div style="max-width:100%">
  <img class="mySlides"  src="slide1.jpg" >
  <img class="mySlides"  src="slide2.png" >
  <img class="mySlides"  src="H1.png" >
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 4000); // Change image every 2 seconds
}
</script>


<body>
  <br>
  <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
	  %>
	  <center><font color="red" size="5">Form Submitted Successfully. Tou Will get notified within 24 hours.</font></center>
  	<% 
  }
  
  %>
   <%
  if("invalid".equals(msg))
  {
	  %>
	  <center><font color="red" size="5">Invalid data !try again.</font></center>
  	<% 
  }
  
  %>
 	<center><h1>Enter Your Details to Request for Blood</h1></center>
 	<form action="indexFormAction.jsp" method="post" onsubmit="validate()">
 	<center>
 	<input type="text" name="name" placeholder="Enter Name" required>
 	<input type="text" name="mobilenumber" placeholder="Enter mobileNumber" id="mobileno" required>
  	<input type="mail" name="email" placeholder="Enter Email Address" required>
  	<input type="text" name="bloodgroup" placeholder="Enter Blood Group" id="bg" required>
 	<button type="submit" class="button1"><span>Submit</span></button>
 	</center>
 	</form>
 	
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
 	
 	<script >
function validate()
{
	var mobiletxt=document.getElementById("bg").value;
	var mobileexp=/^[ABO]+[-+]{1}$/;
	if(mobiletxt.match(mobileexp))
		{
		return true;
		}
	else
		{
		alert("invalid Blood Group");
		return false;
		}
	}

</script>
  <br>
  <br>
  </div>
</div>

<div class="row1"> 
<div class="container"> 
<br>         
<br>
    </tbody>
  </table>
</div>
</div>
<h3><center><h2>Once a blood donor, always a lifesaver</h2></center></h3>

</body>
</html>

