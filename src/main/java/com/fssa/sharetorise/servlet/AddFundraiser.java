package com.fssa.sharetorise.servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.sharetorise.model.Certificate;
import com.fssa.sharetorise.model.FundRaiser;
import com.fssa.sharetorise.service.FundraiserService;

/**
 * Servlet implementation class AddFundraiser
 */ 

public class AddFundraiser extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		  // Retrieve form parameters
        int minimumAmount =Integer.parseInt(request.getParameter("minimum_amount"));
        String playerImageUrl = request.getParameter("player_image_url");
        String playerTitle = request.getParameter("player_title");
        LocalDate daysLeft = LocalDate.parse(request.getParameter("days_left"));
        String description = request.getParameter("add_description");
        String[] certificate_img_arr =(String[]) request.getParameterValues("certificate_img_url");
        String[] certificate_num_arr = request.getParameterValues("certificate_number");
        // Perform any necessary processing with the form data
        // ... Your code here ... 
     	System.out.println(certificate_img_arr);
    	System.out.println(certificate_num_arr);
       List<Certificate> certificateList = new ArrayList<Certificate>();
       int i=0;
       for(String s:certificate_img_arr) {
    	   Certificate certificate1 = new Certificate();
    	   certificate1.setCerNum(certificate_num_arr[i]);
    	   certificate1.setCerUrl(certificate_img_arr[i]);
    	   certificateList.add(certificate1);
    	   i++;
       }
       
       
        FundRaiser fund = new FundRaiser();
        
        
        fund.setFundingGoal(minimumAmount);
        fund.setTitle(playerTitle);
        fund.setDescription(description);
        fund.setFundEndingDate(daysLeft);
        fund.setImageUrl(playerImageUrl);
        fund.setCertificate(certificateList);
    	FundraiserService fundraiserService = new FundraiserService(); 
    	System.out.println(fund);
   

    	try{
    		fundraiserService.createFundraiser(fund); 
    		System.out.println("FundRaiser object created successfully");
    		response.sendRedirect("./FundraiserServlet");
    	}catch(Exception e) {
    		
    		System.out.println(e.getMessage());
    		e.printStackTrace();
    		System.out.println("FundRaiser object creation failed");
    		
    	}
    	
         
     
	}

}
 