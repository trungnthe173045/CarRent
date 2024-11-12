/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


package model;


import java.util.*;
import java.lang.*;







public class Transaction {
    
    private int transaction_id;
    private Order order;
    private String transaction_type_name;
    private Double amount;
    private Date transaction_date;

    public Transaction() {
    }

    public Transaction(int transaction_id, Order order_id, String transaction_type_name, Double amount, Date transaction_date) {
        this.transaction_id = transaction_id;
        this.order = order;
        this.transaction_type_name = transaction_type_name;
        this.amount = amount;
        this.transaction_date = transaction_date;
    }

    public int getTransaction_id() {
        return transaction_id;
    }

    public Order getOrder() {
        return order;
    }

    public String getTransaction_type_name() {
        return transaction_type_name;
    }

    public Double getAmount() {
        return amount;
    }

    public Date getTransaction_date() {
        return transaction_date;
    }

    public void setTransaction_id(int transaction_id) {
        this.transaction_id = transaction_id;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public void setTransaction_type_name(String transaction_type_name) {
        this.transaction_type_name = transaction_type_name;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public void setTransaction_date(Date transaction_date) {
        this.transaction_date = transaction_date;
    }

  

}
