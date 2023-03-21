package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "controllers.AdDetailsServlet", urlPatterns = "/adDetail")
public class AdDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long adId = Long.parseLong(request.getParameter("id"));
        request.setAttribute("ad", DaoFactory.getAdsDao().findById(adId));
        request.getRequestDispatcher("/WEB-INF/ads/adsDetails.jsp").forward(request, response);
    }
}
