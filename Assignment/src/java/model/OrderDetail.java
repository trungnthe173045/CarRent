package model;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */





public class OrderDetail {
    
    
    private int order_detail_id;
        private Order order;
    private Car car;

    public OrderDetail() {
    }

    public OrderDetail(int order_detail_id, Order order, Car car) {
        this.order_detail_id = order_detail_id;
        this.order = order;
        this.car = car;
    }
    
    

    public int getOrder_detail_id() {
        return order_detail_id;
    }

    public Order getOrder() {
        return order;
    }

    public Car getCar() {
        return car;
    }

    public void setOrder_detail_id(int order_detail_id) {
        this.order_detail_id = order_detail_id;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public void setCar(Car car) {
        this.car = car;
    }

   
    



}
