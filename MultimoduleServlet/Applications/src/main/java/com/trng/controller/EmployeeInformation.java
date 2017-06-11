package com.trng.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.DAO.Employee;
import org.DAO.EmployeeDAO;
import org.Services.EmployeeService;

/**
 * Servlet implementation class EmployeeInformation
 */
public class EmployeeInformation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeInformation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String option = request.getServletPath();
		EmployeeService employeeService = new EmployeeService();
		int employeeId;
		String firstName,lastName,gender,employeeSalary,deptnumber,deptname;
		
		if(option.equals("/edit")){
				employeeId = Integer.parseInt(request.getParameter("id"));
				Employee employeeedit=employeeService.getEmployeeInformation(employeeId);
				request.setAttribute("employeeId", employeeedit);
				request.getRequestDispatcher("/update.jsp").forward(request, response);
				
		}
		else if(option.equals("/EmployeeInformation.do")){
				employeeId = Integer.parseInt(request.getParameter("employerid"));	
				Employee employee=employeeService.getEmployeeInformation(employeeId);
				request.setAttribute("employee", employee);
				RequestDispatcher rd = request.getRequestDispatcher("/details.jsp");
				rd.forward(request, response);
				
		}
		else if(option.equals( "/update")){
				employeeId = Integer.parseInt(request.getParameter("employeeId"));
				firstName = request.getParameter("firstNAme");
				lastName = request.getParameter("lastName");
				gender = request.getParameter("gender");
				Employee emp = new Employee(employeeId,firstName, lastName, gender);
				boolean validation=employeeService.updateEmployeeInformation(employeeId,emp);
				if(validation){
					request.setAttribute("display", "Employee Details are updated");
				}else{
					request.setAttribute("display", "Employee Details are not updated");
				}
				RequestDispatcher rd1 = request.getRequestDispatcher("/update.jsp");
				rd1.forward(request, response);
				
		}
		else if(option.equals("/add")){
				employeeId = Integer.parseInt(request.getParameter("employerid"));
				firstName = request.getParameter("firstNAme");
				lastName = request.getParameter("lastName");
				gender = request.getParameter("gender");
				employeeSalary = request.getParameter("salary");
				Employee employeedetails = new Employee(employeeId, firstName, lastName, gender);
				boolean addvalidation=employeeService.addEmployeeInformation(employeedetails);
				if(addvalidation){
					request.setAttribute("display", "Employee Details are added");
				}else{
					request.setAttribute("display", "Employee Details are not added");
				}
				request.getRequestDispatcher("/login.jsp").forward(request, response);
				
		}
			
		
	}
	

}
	
    
   