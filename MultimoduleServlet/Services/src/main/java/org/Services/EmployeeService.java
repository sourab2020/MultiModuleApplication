package org.Services;

import org.DAO.Employee;
import org.DAO.EmployeeDAO;
import org.DAO.SalaryDAO;

public class EmployeeService {
	EmployeeDAO employeeDAO = new EmployeeDAO();
	SalaryDAO salaryDAO = new SalaryDAO();
	public Employee getEmployeeInformation(int id){
		
		Employee employee=employeeDAO.getEmployee(id);
		return employee;
	}
	
	public boolean updateEmployeeInformation(int employeeId,Employee employee) {			
		 boolean validation = employeeDAO.updateEmployeeInformation(employeeId,employee);
		 return validation;
	}

	public boolean addEmployeeInformation(Employee employee2) {
		// TODO Auto-generated method stub
		boolean EmployeeValidation = employeeDAO.addEmployeeInformation(employee2);
		boolean SalaryValidation = salaryDAO.addSalaryInformation(employee2);
		
		if(EmployeeValidation && SalaryValidation)
			return true;
		else
			return false;
	}

}
