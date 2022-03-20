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
<form align="center"><h1>Leave Status</h1></form>

 <form class="container" action="leave1" enctype="multipart/form-data" method="post" modelAttribute="emp4">
     <div>
         <img class="parent" src="https://tse1.mm.bing.net/th?id=OIP.8mblAizibbqKE0pQCRI8EwHaHa&pid=Api&P=0&w=190&h=190" width="200" height="120"  ><br>
         <b>Employee ID:</b>
        <input class= "input" type="text" name="username" value=${emp4.username} readonly="readonly" ><br>
        <b>Employee Name:</b>
        <input class= "input" type="text" name="Name" value=${emp4.name} readonly="readonly"><br>
        <b>Current Project:</b>
        <input class= "input" type="text" name="Project" value=${emp4.project} readonly="readonly"><br>
        <b>Email</b>
        <input class= "input" type="text" name="Email" value=${emp4.email} readonly="readonly"><br>
        <b>Phone</b>
        <input class= "input" type="text" name="Phone" value=${emp4.phone} readonly="readonly"><br>
        <b>Leave Date</b>
        <input class= "input" type="text" name="Date" value=${emp4.date} readonly="readonly"><br>
        <b>Reason</b>
        <input class= "input" type="text" name="Reason" value=${emp4.reason} readonly="readonly"><br>
          <b>Status</b>
        <select class="input" name="Status" >  
             <option value selected disabled>select</option> 
            <option value = "Approved">Approved    
            </option>  
            <option value = "Not Approved"> Not Approved   
            </option>  
            </select>  
  
        <button class="button" type="submit">Submit</button>
      </div>
    </form>
</body>
</html>