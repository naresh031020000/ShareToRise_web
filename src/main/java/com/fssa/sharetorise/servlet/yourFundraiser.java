package com.fssa.sharetorise.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.sharetorise.model.FundRaiser;
import com.fssa.sharetorise.model.User;
import com.fssa.sharetorise.service.FundraiserService;

/**
 * Servlet implementation class yourFundraiser
 */
public class yourFundraiser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public yourFundraiser() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		FundraiserService service = new FundraiserService();
		HttpSession session = request.getSession(false);
		User user = (User) session.getAttribute("obj");
		System.out.println(user);
		List<FundRaiser> allFund = service.readAllFundraiserByUserId(user.getUserId());
		System.out.println(allFund);

		if (user == null) {
			response.sendRedirect("./login.jsp");
		} else {
			session.setAttribute("userFundraisers", allFund);
			response.sendRedirect("./yourFundraiser.jsp");
		}

	}

}
