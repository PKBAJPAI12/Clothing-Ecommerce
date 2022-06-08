package project.Model;
import com.fasterxml.jackson.annotation.JsonProperty;

import javax.persistence.*;

public class UserOrder {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty("productId")
    private int productId;
    @JsonProperty("productName")
    private String productName;
    @JsonProperty("productQuantity")
    private int productQuantity;
    @JsonProperty("productPrice")
    private int productPrice;
    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "order_id")
    private Orders order;

    public UserOrder(int productId, String productName, int productQuantity, int productPrice, Orders order) {
        this.productId = productId;
        this.productName = productName;
        this.productQuantity = productQuantity;
        this.productPrice = productPrice;
        this.order = order;
    }

    public UserOrder(String productName, int productQuantity, int productPrice, Orders order) {
        this.productName = productName;
        this.productQuantity = productQuantity;
        this.productPrice = productPrice;
        this.order = order;
    }

    public UserOrder() {
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getProductQuantity() {
        return productQuantity;
    }

    public void setProductQuantity(int productQuantity) {
        this.productQuantity = productQuantity;
    }

    public int getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }

    public Orders getOrder() {
        return order;
    }

    public void setOrder(Orders order) {
        this.order = order;
    }
}
