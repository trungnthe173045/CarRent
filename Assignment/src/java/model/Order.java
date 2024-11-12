/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.*;
import java.lang.*;
import java.time.LocalDateTime;

public class Order {

    private int id;

    private User user;

    private double total_price;

    private String order_status;

    private String date_order;

    private String pick_up_location;

    private String drop_off_location;

    private String pick_up_date;

    private String drop_off_date;

    private String pick_up_time;

    private String drop_off_time;

    private int rental_hours;

    public Order() {

    }

    public Order(int id, User user, double total_price, String order_status, String date_order, String pick_up_location, String drop_off_location, String pick_up_date, String drop_off_date, String pick_up_time, String drop_off_time, int rental_hours) {
        this.id = id;
        this.user = user;
        this.total_price = total_price;
        this.order_status = order_status;
        this.date_order = date_order;
        this.pick_up_location = pick_up_location;
        this.drop_off_location = drop_off_location;
        this.pick_up_date = pick_up_date;
        this.drop_off_date = drop_off_date;
        this.pick_up_time = pick_up_time;
        this.drop_off_time = drop_off_time;
        this.rental_hours = rental_hours;
    }
    
    

    public int getId() {
        return id;
    }

    public User getUser() {
        return user;
    }

    public double getTotal_price() {
        return total_price;
    }

    public String getPick_up_date() {
        return pick_up_date;
    }

    public String getDrop_off_date() {
        return drop_off_date;
    }

    public String getPick_up_time() {
        return pick_up_time;
    }

    public String getDrop_off_time() {
        return drop_off_time;
    }

    public void setPick_up_date(String pick_up_date) {
        this.pick_up_date = pick_up_date;
    }

    public void setDrop_off_date(String drop_off_date) {
        this.drop_off_date = drop_off_date;
    }

    public void setPick_up_time(String pick_up_time) {
        this.pick_up_time = pick_up_time;
    }

    public void setDrop_off_time(String drop_off_time) {
        this.drop_off_time = drop_off_time;
    }

    public String getOrder_status() {
        return order_status;
    }

    public String getDate_order() {
        return date_order;
    }

    public String getPick_up_location() {
        return pick_up_location;
    }

    public String getDrop_off_location() {
        return drop_off_location;
    }

    public int getRental_hours() {
        return rental_hours;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void setTotal_price(double total_price) {
        this.total_price = total_price;
    }

    public void setOrder_status(String order_status) {
        this.order_status = order_status;
    }

    public void setDate_order(String date_order) {
        this.date_order = date_order;
    }

    public void setPick_up_location(String pick_up_location) {
        this.pick_up_location = pick_up_location;
    }

    public void setDrop_off_location(String drop_off_location) {
        this.drop_off_location = drop_off_location;
    }

    public void setRental_hours(int rental_hours) {
        this.rental_hours = rental_hours;
    }

}
