package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditServlet", value = "/ad/edit")
public class EditServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
            long adId = Long.parseLong(request.getParameter("id"));
            Ad ad = DaoFactory.getAdsDao().findById(adId);
            request.setAttribute("ad", ad);

        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp")
                .forward(request, response);


    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String title = request.getParameter("title");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        String category = request.getParameter("category");
        long adId = Long.parseLong(request.getParameter("id"));


        DaoFactory.getAdsDao().editAd(adId, category, title, price, description);

        response.sendRedirect("/ads");


    }
}