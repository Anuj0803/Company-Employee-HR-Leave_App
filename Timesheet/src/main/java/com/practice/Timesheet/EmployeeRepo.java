package com.practice.Timesheet;

import org.springframework.data.jpa.repository.JpaRepository;


public interface EmployeeRepo extends JpaRepository<Employee, String> {

	Employee findByUsernameAndPassword(String Username, String Password);
}
