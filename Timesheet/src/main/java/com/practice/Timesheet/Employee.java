package com.practice.Timesheet;


import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Employee {

	@Id
	String username;
	String Name;
	String Pic;
	String Department;
	String Date;
	String Project;
	String Role;
	String password;
	String Email;
	String Phone;
	
	public Employee() {}
	public Employee(String username, String name, String pic, String department, String date, String project,
			String role, String password, String email, String phone) {
		super();
		this.username = username;
		Name = name;
		Pic = pic;
		Department = department;
		Date = date;
		Project = project;
		Role = role;
		this.password = password;
		Email = email;
		Phone = phone;
	}





	public String getUsername() {
		return username;
	}






	public void setUsername(String username) {
		this.username = username;
	}






	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	
	public String getPic() {
		return Pic;
	}
	public void setPic(String pic) {
		Pic = pic;
	}
	public String getDepartment() {
		return Department;
	}
	public void setDepartment(String department) {
		Department = department;
	}
	
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	
	public String getProject() {
		return Project;
	}
	public void setProject(String project) {
		Project = project;
	}
	
	public String getRole() {
		return Role;
	}
	public void setRole(String role) {
		Role = role;
	}
	

	
	public String getPassword() {
		return password;
	}






	public void setPassword(String password) {
		this.password = password;
	}






	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}






	@Override
	public String toString() {
		return "Employee [username=" + username + ", Name=" + Name + ", Pic=" + Pic + ", Department=" + Department
				+ ", Date=" + Date + ", Project=" + Project + ", Role=" + Role + ", password=" + password + ", Email="
				+ Email + ", Phone=" + Phone + "]";
	}



	
	
	
	

}
