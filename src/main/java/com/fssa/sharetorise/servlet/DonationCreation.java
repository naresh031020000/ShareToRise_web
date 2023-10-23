package com.fssa.sharetorise.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;
import com.razorpay.Order;

/**
 * Servlet implementation class DonationCreation
 */
public class DonationCreation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String amount = request.getParameter("amount");

		if (amount == null || amount.isEmpty()) {

			response.sendError(600, "Invalid parameter");
		}

		RazorpayClient client = null;
		String orderId = null;

		try {

			client = new RazorpayClient("rzp_test_TYnBnQNfGVNMP1", "TytV87gK9UUf5SBCC1UkjCxC");
			JSONObject options = new JSONObject();
			options.put("amount", Double.parseDouble(amount) * 100);
			options.put("currency", "INR");
			options.put("receipt", "zxr456");
			options.put("payment_capture", true);
			Order order = client.orders.create(options);
			orderId = order.get("id");
			response.getWriter().write(orderId);
		} catch (RazorpayException e) {

			response.sendError(600, e.getMessage());
		}
	}

}
