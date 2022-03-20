<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
   <head>
       <title>Company Portal</title>
   </head>
   <style>
    .container {
			position: absolute;
			left: 1048px;
			top:0px;
			margin: 0px;
			max-width: 300px;
			padding: 0px;
		}
		div {
  background-color: white;
  width: 350px;
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
img {
    transition: -webkit-transform 0.25s ease;
    transition: transform 0.25s ease;
}
img:active {
    -webkit-transform: scale(2);
    transform: scale(2);
}
.button1{
    background-color: green;
    color: white;
    position: relative;
    width: 100px;
    height: 80px;
    left:930px
}
.div1 {
  background-color: white;
  width: 1000px;
  border: 7px solid black);
  padding: 50px;
  margin: 7px;
}
.center {
  margin-left: auto;
  margin-right: auto;
  background-color: tan;
}
</style>
   <body>
   <form action="check" ><button class="button1" type="submit">Check Leave Requests</button></form>
       <form class="container" action="add" enctype="multipart/form-data" method="post">
     <div>
         <img class="parent" src="https://cdn2.iconfinder.com/data/icons/business-dual-color-glyph-set-8/128/add_user-512.png" width="200" height="120"  ><br>
         <b><h3 class="parent">Add Employee</h3></b> 
         <b>Employee ID:</b>
        <input class= "input" type="text" name="username" placeholder="Enter Employee ID" required="required" ><br>
        <b>Employee Name:</b>
        <input class= "input" type="text" name="Name" placeholder="Enter Employee Name" required="required"><br>
        <b>Joining Date:</b>
        <input class= "input" type="text" name="Date" placeholder="Joining Date" required="required"><br>
        <b>Current Project:</b>
        <input class= "input" type="text" name="Project" placeholder="Current Project" required="required"><br>
        <b>Role:</b>
        <input class= "input" type="text" name="Role" placeholder="Role" required="required"><br>
        <b>Email:</b>
        <input class= "input" type="text" name="Email" placeholder="Enter Email" required="required"><br>
        <b>Phone Number:</b>
        <input class= "input" type="text" name="Phone" placeholder="Enter Phone No." required="required"><br>
        <b>Employee Picture:</b>
        <input class= "input" type="file" name="img"  required="required"><br>
        <b>Employee Department</b>
        <select class="input" name="Department" required="required">  
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
    <form >

	<h2>Employee List</h2>

	<table border="1" >
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>JOINING DATE</th>
			<th>DEPT.</th>
			<th>PROJECT</th>
			<th>ROLE</th>
			<th>EMAIL</th>
			<th>PHONE</th>
			<th>IMAGE</th>
		</tr>
		<c:forEach var="employee" items="${emp}">
			<tr>
				<td>${employee.username}</td>
				<td>${employee.name}</td>
				<td>${employee.date}
				<td>${employee.department}</td>
				<td>${employee.project}</td>
				<td>${employee.role}</td>
				<td>${employee.email}</td>
				<td>${employee.phone}</td>
				<td><img src="/imagedata/${employee.username}.jpg"  width="100" height="100"></td>
				<td><a onclick="if(!(confirm('Are you sure you want to delete this employee ?'))) return false" href="/delete?userId=${employee.username}">Delete</a></td>
				<td><a href="/update?userId=${employee.username}">Update</a></td>
			</tr>
		</c:forEach>
	</table>

</form>

   </body>

</html>