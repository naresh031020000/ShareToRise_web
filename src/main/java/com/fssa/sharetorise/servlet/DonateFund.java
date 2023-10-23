
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
		String phone = request.getParameter("phone");
		String razor = request.getParameter("id");
		String days_left = (String) request.getParameter("days");

		System.out.println(phone);

		if (user != null) {

			try {

				if (fundraiserService.donateFundint(amount, user.getUserId(), fundRaiserId, null, razor, false)) {
					System.out.println("Donated Successful");
					response.getWriter().write("success");
				} else {
					System.out.println("Donated failed");
				}

			} catch (Exception e) {
				System.out.println(e.getMessage());
				e.printStackTrace();
			}

		} else {

			if (fundraiserService.donateFundint(amount, 0, fundRaiserId, phone, razor, true)) {
				System.out.println("Donated Successful");
				response.getWriter().write("success");
			} else {
				System.out.println("Donated failed");
			}
		}

	}

}
