package com.fssa.sharetorise.servlet;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.sharetorise.model.FundRaiser;
import com.fssa.sharetorise.model.SportsCategories;
import com.fssa.sharetorise.model.User;
import com.fssa.sharetorise.service.FundraiserService;

/**
 * Servlet implementation class UpdateFundraiserServlet
 */
public class UpdateFundraiserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		int userId = 0;

		if (session != null) {

			User userObj = (User) session.getAttribute("obj");
			userId = userObj.getUserId();
		}

		yourFundraiser getAllFund = new yourFundraiser();

		// Retrieve form parameters
		int updateId = Integer.parseInt(request.getParameter("updateId"));
		double minimumAmount = Double.parseDouble(request.getParameter("minimum_amount"));
		String playerImageUrl = request.getParameter("player_image_url");
		String playerTitle = request.getParameter("player_title");
		LocalDate daysLeft = LocalDate.parse(request.getParameter("days_left"));
		String description = request.getParameter("add_description");
		String sports_type = request.getParameter("selected_option2");

		FundRaiser fund = new FundRaiser();
		fund.setUserId(userId);
		fund.setFundingGoal(minimumAmount);
		fund.setTitle(playerTitle);
		fund.setDescription(description);
		fund.setFundEndingDate(daysLeft);
		fund.setImageUrl(playerImageUrl);
		fund.setCategory(SportsCategories.valueOf(sports_type.toUpperCase()));

		FundraiserService fundraiserService = new FundraiserService();

		try {
			fundraiserService.updateFundraiser(fund, updateId);
			getAllFund.doGet(request, response);

		} catch (Exception e) {

			System.out.println(e.getMessage());
			e.printStackTrace();

		}
	}

}
