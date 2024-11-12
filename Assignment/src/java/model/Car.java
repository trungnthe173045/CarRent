/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.*;
import java.lang.*;

public class Car {

    private int id;
    private String name;
    private String brand;
    private double price;
    private String model;
    private int year;
    private int number_of_seat;
    private String plate_number;
    private int mileage;
    private String status;
    private int rating;
    private String image;
    private String description;

    public Car() {
    }

    public Car(int id, String name, String brand, double price, String model, int year, int number_of_seat, String plate_number, int mileage, String status, int rating, String image, String description) {
        this.id = id;
        this.name = name;
        this.brand = brand;
        this.price = price;
        this.model = model;
        this.year = year;
        this.number_of_seat = number_of_seat;
        this.plate_number = plate_number;
        this.mileage = mileage;
        this.status = status;
        this.rating = rating;
        this.image = image;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getBrand() {
        return brand;
    }

    public double getPrice() {
        return price;
    }

    public String getModel() {
        return model;
    }

    public int getYear() {
        return year;
    }

    public int getNumber_of_seat() {
        return number_of_seat;
    }

    public String getPlate_number() {
        return plate_number;
    }

    public int getMileage() {
        return mileage;
    }

    public String getStatus() {
        return status;
    }

    public int getRating() {
        return rating;
    }

    public String getImage() {
        return image;
    }

    public String getDescription() {
        return description;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public void setNumber_of_seat(int number_of_seat) {
        this.number_of_seat = number_of_seat;
    }

    public void setPlate_number(String plate_number) {
        this.plate_number = plate_number;
    }

    public void setMileage(int mileage) {
        this.mileage = mileage;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    
    
    
    
    
    
    
    
    
    
}
