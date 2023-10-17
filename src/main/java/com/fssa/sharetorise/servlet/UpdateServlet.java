package com.fssa.sharetorise.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.sharetorise.model.FundRaiser;
import com.fssa.sharetorise.service.FundraiserService;

/**
 * Servlet implementation class UpdateServlet
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	FundraiserService service = new FundraiserService();

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String num = request.getParameter("UpdateId");

		FundRaiser fund = service.getFundraiserById(Integer.parseInt(num));

		request.setAttribute("update", fund);

		request.getRequestDispatcher("./AddFundraiser.jsp").forward(request, response);

	}

}
