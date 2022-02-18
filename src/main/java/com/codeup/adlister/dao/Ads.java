package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    //get a list of ads by user id
    List<Ad> getAd(User user);
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    // get a single add to return
    Ad findById(Long ad);
    // search ads
    List<Ad> search(String keyword);

    void update(Ad ad);
    void delete(long id);

    void deleteCategories(long ad_Id);

    void getAdsFromCategory(Long IDofNewAd, long l);
}
