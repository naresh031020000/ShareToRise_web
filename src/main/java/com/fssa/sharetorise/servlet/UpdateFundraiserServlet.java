package com.fssa.sharetorise.servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fssa.sharetorise.model.Certificate;
import com.fssa.sharetorise.model.FundRaiser;
import com.fssa.sharetorise.model.SportsCategories;
import com.fssa.sharetorise.model.User;
import com.fssa.sharetorise.model.Video;
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

		String certificate_img_arr = request.getParameter("certificate_img_urls");
		String[] video_arr = (String[]) request.getParameterValues("video_urls");

		// to convert string to array
		ObjectMapper objectMapper = new ObjectMapper();
		// Access and use the array of objects as needed
		List<Certificate> certificateList = new ArrayList<Certificate>();
		List<Video> videoList = new ArrayList<Video>();

		if (certificate_img_arr != null) {
			Certificate[] objects = objectMapper.readValue(certificate_img_arr, Certificate[].class);
			for (Certificate obj : objects) {
				certificateList.add(obj);
			}
		}
		if (video_arr != null) {

			// video urls
			Video[] video_objects = objectMapper.readValue(video_arr[0], Video[].class);

			for (Video obj : video_objects) {
				videoList.add(obj);
			}

		}

		FundRaiser fund = new FundRaiser();
		fund.setUserId(userId);
		fund.setFundraiserId(updateId);
		fund.setFundingGoal(minimumAmount);
		fund.setTitle(playerTitle);
		fund.setDescription(description);
		fund.setFundEndingDate(daysLeft);
		fund.setImageUrl(playerImageUrl);
		fund.setCategory(SportsCategories.valueOf(sports_type.toUpperCase()));
		fund.setCertificate(certificateList);
		fund.setVideo(videoList);

		FundraiserService fundraiserService = new FundraiserService();

		try {

			if (fundraiserService.updateFundraiser(fund, updateId)) {
				getAllFund.doGet(request, response);
			}

		} catch (Exception e) {

			System.out.println(e.getMessage());
			e.printStackTrace();

		}
	}

}
