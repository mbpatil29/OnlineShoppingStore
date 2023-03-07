<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="signupaction.jsp" method="post">
  <input type="text" name="Name" placeholder="Enter Name" required>
   <input type="Email" name="Email" placeholder="Enter mailId" required>
	<input type="number" name="Mobileno" placeholder=" Enter Mobileno" required> 
  <select name="securityquestion" required>
  <option value="which was ur first car?">which was your first car?</option> 
  <option value="which was ur favt place?">which was your favt place?</option>
  <option value="what is name of ur pet?">what is name of your pet?</option>
  <option value="which food u like?">which food u like?</option>
  </select>
  <input type="text" name="Answer" placeholder="Enter Answer" required> 
  <input type="password" name="password" placeholder="Enter password" required> 
  <input type="Submit" value="Signup">

  
  </form>
  
    
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
  
 <%
 String msg=request.getParameter("msg");
 if("valid".equals(msg))
 {
 %>
<h1>Successfully Registered</h1>
<%} %>


<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>



    <h2>Online Grocery Shopping</h2>
     <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  
  </div>
</div>

</body>
</html>