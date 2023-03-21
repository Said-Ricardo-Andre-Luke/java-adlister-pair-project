package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Ads;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


import static com.codeup.adlister.dao.DaoFactory.adsDao;
import static com.codeup.adlister.dao.DaoFactory.getAdsDao;


@WebServlet(name = "controllers.AdDetailsServlet", urlPatterns = "/adDetail")
public class AdDetailsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    long id = Long.parseLong(request.getParameter("id"));
    Ads ad = (Ads) DaoFactory.getAdsDao().findById(id);
    request.setAttribute("ad", ad);

        DaoFactory.getAdsDao().all();

//        request.setAttribute("adDetail", DaoFactory.getAdsDao().findById());

        request.getRequestDispatcher("WEB-INF/ads/adsDetails.jsp").forward(request, response);
    }


        long adId = Long.parseLong(request.getParameter("id"));
        request.setAttribute("ad", DaoFactory.getAdsDao().findById(adId));
        request.getRequestDispatcher("/WEB-INF/ads/adsDetails.jsp").forward(request, response);
    }
}
