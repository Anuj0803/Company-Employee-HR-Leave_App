<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.container {
			position: absolute;
			left: 1000px;
			top:55px;
			margin: 0px;
			max-width: 300px;
			padding: 0px;
		}
		div {
  background-color: white;
  width: 405px;
  border: 7px solid rgb(168, 18, 18);
  padding: 50px;
  margin: 7px;
}
.input{
    margin: 10px;
}
.parent {
  position: relative;
  top: -20px;
  left: 50px;
}
.button{
    background-color: green;
    color: white;
    position: relative;
    width: 100px;
    height: 30px;
  top: 20px;
  left: 100px;
}
</style>
<body>
<form align="right"><h1>Apply for Leave</h1></form>

 <form class="container" action="leave"  method="post" modelAttribute="emp3">
     <div>
         <img class="parent" src="https://tse2.mm.bing.net/th?id=OIP.ph3s1KL6l69b90dhFGzOLgHaHM&pid=Api&P=0&w=167&h=162" width="200" height="120"  ><br>
         <b>Employee ID:</b>
        <input class= "input" type="text" name="username" value=${emp3.username}  ><br>
        <b>Employee Name:</b>
        <input class= "input" type="text" name="Name" value=${emp3.name} ><br>
        <b>Current Project:</b>
        <input class= "input" type="text" name="Project" value=${emp3.project} ><br>
        <b>Email:</b>
        <input class= "input" type="text" name="Email" value=${emp3.email} ><br>
        <b>Phone:</b>
        <input class= "input" type="text" name="Phone" value=${emp3.phone} ><br>
        <b>Leave Date:</b> 
         <input class= "input" type="text" name="Date"  ><br>
        <b>Leave Reason:</b> 
        <input class= "input" type="text" name="Reason"  ><br>
        <button class="button" type="submit">Submit</button>
      </div>
    </form>
</body>
</html>