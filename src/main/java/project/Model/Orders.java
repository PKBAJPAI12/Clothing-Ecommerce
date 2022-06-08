package project.Model;

import javax.persistence.*;

public class Orders {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_Id")
    private int orderId;
    @Column(name = "total_price")
    private int totalPrice;
    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "user_id")
    private User user;

    public Orders(int orderId, int totalPrice, User user) {
        this.orderId = orderId;
        this.totalPrice = totalPrice;
        this.user = user;
    }

    public Orders(int totalPrice, User user) {
        this.totalPrice = totalPrice;
        this.user = user;
    }

    public Orders() {
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
