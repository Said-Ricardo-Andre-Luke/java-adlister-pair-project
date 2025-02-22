package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    Ad findById(long id);

    void deleteAd(Ad ad);

    void editAd(long id, String updatedCategory, String updatedTitle, double price, String updatedDescription);
}
