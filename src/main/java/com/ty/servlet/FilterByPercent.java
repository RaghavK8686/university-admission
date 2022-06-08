package com.ty.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.dto.Applicant;
import com.ty.service.ApplicantService;

@WebServlet(value = "/filter")
public class FilterByPercent extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		double percentage=Double.parseDouble(req.getParameter("per"));
		
		ApplicantService applicantService=new ApplicantService();
		List<Applicant> applicant= applicantService.filterByPer(percentage);
		
		if(applicant!=null)
		{
			req.setAttribute("filteredapplicant", applicant);
			RequestDispatcher dispatcher=req.getRequestDispatcher("viewfilteredapplicants.jsp");
			dispatcher.forward(req, resp);
		}
		else
		{
			resp.sendRedirect("filterbypercent");
		}
		
		
				
		
	}
}
