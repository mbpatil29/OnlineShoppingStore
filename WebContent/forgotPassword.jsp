<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
      <form action="forgotpasswordaction.jsp" method="post">
   <input type="Email" name="Email" placeholder="Enter mailId" required>
	<input type="number" name="Mobileno" placeholder=" Enter Mobileno" required> 
  <select name="securityquestion" required>
  <option value="which was ur first car?">which was your first car?</option> 
  <option value="which was ur favt place?">which was your favt place?</option>
  <option value="what is name of ur pet?">what is name of your pet?</option>
  <option value="which food u like?">which food u like?</option>
  </select>
  <input type="text" name="Answer" placeholder="Enter Answer" required> 
  <input type="password" name="newpassword" placeholder="Enter Your New password" required> 
  <input type="Submit" value="Save">
     
     
     
     
     
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  
  <%
 String msg=request.getParameter("msg");
 if("Done".equals(msg))
 {
 %>
<h1>Password Changed Successfully!</h1>
<%} %>


<%

 if("Invalid".equals(msg))
 {
 %>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>

    <h2>Online Grocery Shopping</h2>
    <p>The Online  Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>