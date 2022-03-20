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
<form align="center"><h1>Update Employee</h1></form>

 <form class="container" action="add" enctype="multipart/form-data" method="post" modelAttribute="emp1">
     <div>
         <img class="parent" src="https://cdn0.iconfinder.com/data/icons/universal-web-mobile-3-1/48/275-512.png" width="200" height="120"  ><br>
         <b>Employee ID:</b>
        <input class= "input" type="text" name="username" value=${emp1.username}  ><br>
        <b>Employee Name:</b>
        <input class= "input" type="text" name="Name" value=${emp1.name} ><br>
        <b>Joining Date:</b>
        <input class= "input" type="text" name="Date" value=${emp1.date} ><br>
        <b>Current Project:</b>
        <input class= "input" type="text" name="Project" value=${emp1.project} ><br>
        <b>Role</b>
        <input class= "input" type="text" name="Role" value=${emp1.role} ><br>
        <b>Email</b>
        <input class= "input" type="text" name="Email" value=${emp1.email} ><br>
        <b>Phone</b>
        <input class= "input" type="text" name="Phone" value=${emp1.phone} ><br>
        <b>Employee Picture:</b>
        <input class= "input" type="file" name="img" value="/imagedata/${emp1.username}.jpg"  ><br>
        <b>Employee Department</b>
        <select class="input" name="Department" value=${emp1.department}>  
             <option value selected disabled>select</option> 
            <option value = "IT"> IT   
            </option>  
            <option value = "HR"> HR   
            </option>  
            <option value = "Finance"> Finance  
            </option>  
            <option value = "Marketing"> Marketing 
            </option> 
            <option value = "Operations management"> Operations management
            </option> 
            </select>  
        <button class="button" type="submit">Submit</button>
      </div>
    </form>
</body>
</html>