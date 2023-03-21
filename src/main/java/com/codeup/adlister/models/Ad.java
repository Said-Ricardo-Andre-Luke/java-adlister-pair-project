package com.codeup.adlister.models;

public class Ad {
    private long id;
    private long userId;

    private String category;
    private String title;
    private String description;
    private Double price;
    private String date_created;

    private String photo;

    public Ad(long id, long userId, String category, String title, String description, Double price, String date_created, String photo) {
        this.id = id;
        this.userId = userId;
        this.category = category;
        this.title = title;
        this.description = description;
        this.price = price;
        this.date_created = date_created;
        this.photo = photo;
    }


    public Ad(long id, long userId, String category, String title, String description, Double price, String date_created) {
        this.id = id;
        this.userId = userId;
        this.category = category;
        this.title = title;
        this.description = description;
        this.price = price;
        this.date_created = date_created;
    }

    public Ad(long userId, String category, String title, String description, Double price, String date_created, String photo) {
        this.userId = userId;
        this.category = category;
        this.title = title;
        this.description = description;
        this.price = price;
        this.date_created = date_created;
        this.photo = photo;
    }

    public Ad(long id, long userId, String category, String title, String description, double price) {
        this.id = id;
        this.userId = userId;
        this.category = category;
        this.title = title;
        this.description = description;
        this.price = price;
    }

    public Ad(long userId, String category, String title, String description, Double price) {
        this.userId = userId;
        this.category = category;
        this.title = title;
        this.description = description;
        this.price = price;
    }

    public Ad(int i, int i1, String playstation_for_sale, String s) {

    }

    public Ad(long userId, String title, String description) {
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    public Ad(long userId, String category, String title, String description, Double price, String photo) {
        this.userId = userId;
        this.category = category;
        this.title = title;
        this.description = description;
        this.price = price;
        this.photo = photo;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getDate_created() {
        return date_created;
    }

    public void setDate_created(String date_created) {
        this.date_created = date_created;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

}
