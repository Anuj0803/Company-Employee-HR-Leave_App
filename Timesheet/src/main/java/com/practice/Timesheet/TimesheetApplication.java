package com.practice.Timesheet;

import java.io.File;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
@SpringBootApplication
@ComponentScan
public class TimesheetApplication {

	public static void main(String[] args) {
		new File(EmployeeController.uploadDirectory).mkdir();
		SpringApplication.run(TimesheetApplication.class, args);
	}

}
