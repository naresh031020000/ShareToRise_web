
package com.fssa.sharetorise.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.sharetorise.dao.UserDAO;
import com.fssa.sharetorise.model.User;
import com.fssa.sharetorise.service.FundraiserService;

public class DonateFund extends HttpServlet {
	private static final long serialVersionUID = 1L;

	FundraiserService fundraiserService = new FundraiserService();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		User user = (User) session.getAttribute("obj");

		int fundRaiserId = Integer.parseInt(request.getParameter("fundRaiserId"));
		Double amount = Double.parseDouble(request.getParameter("amount"));
		
		if (user != null) {

			try {

				if (fundraiserService.donateFundint(amount, user.getUserId(), fundRaiserId)) {
					System.out.println("Donated Successful");
				} else {
					System.out.println("Donated failed");
				}

			} catch (Exception e) {
				System.out.println(e.getMessage());
				e.printStackTrace();
			}

			response.sendRedirect("./PlayerDetailsServlet?emer_id=" + fundRaiserId);

		} else {
			System.out.println("login first  user :" + user);
			request.setAttribute("error", "Login/ session timeout");
			RequestDispatcher rd = request.getRequestDispatcher("./login.jsp");
			rd.forward(request, response);
		}

	}

}
