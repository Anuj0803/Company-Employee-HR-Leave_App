<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.container {
			position: absolute;
			left: 500px;
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
<form align="center"><h1>Employee Login</h1></form>

 <form class="container" action="login" enctype="multipart/form-data"  >
     <div>
         <img class="parent" src="https://borlabs.io/wp-content/uploads/2019/09/blog-wp-login.png" width="200" height="120"  ><br>
         <b>Employee ID:</b>
        <input class= "input" type="text" name="username" placeholder="Enter Employee ID" required="required"  ><br>
        <b>Password:</b>
        <input class= "input" type="password" name="password" placeholder="Enter password" required="required"><br>
       
        <button class="button" type="submit">Login</button>
      </div>
    </form>
</body>
</html>