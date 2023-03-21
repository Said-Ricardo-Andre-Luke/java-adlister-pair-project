package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteAdServlet", value = "/ads/delete")
public class DeleteAdServlet extends HttpServlet {
  //no doGet yet

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the ad ID from the request parameter
        Long adId = Long.parseLong(request.getParameter("id"));

        // Get the currently logged in user
        User currentUser = (User) request.getSession().getAttribute("user");

        // Retrieve the ad from the database using its ID
        Ad ad = DaoFactory.getAdsDao().findById(adId);

        // Check if the user is authorized to delete the ad
        if (currentUser != null && currentUser.getId() == ad.getUserId()) {
            // Delete the ad from the database
            DaoFactory.getAdsDao().deleteAd(ad);
            response.sendRedirect("/ads");
        } else {
            // Redirect to the login page if the user is not authorized
            response.sendRedirect("/login");
        }
    }
}
