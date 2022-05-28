package project.Model;

import javax.persistence.*;

@Entity
public class Seller {
    @Id
    @Column(length = 50,name = "seller_id")
    private String sellerId;
    @Column(length = 100,name = "seller_name")
    private String sellerName;
    @Column(length = 100,name = "seller_email")
    private String sellerEmail;
    @Column(length = 100,name = "store_name")
    private String storeName;
    @Column(length = 100,name = "gst_no")
    private String gstNumber;
    @Column(length = 100,name = "seller_password")
    private String sellerPassword;

    public Seller(String sellerId, String sellerName, String sellerEmail, String storeName, String gstNumber, String sellerPassword) {
        this.sellerId = sellerId;
        this.sellerName = sellerName;
        this.sellerEmail = sellerEmail;
        this.storeName = storeName;
        this.gstNumber = gstNumber;
        this.sellerPassword = sellerPassword;
    }

    public Seller(String sellerName, String sellerEmail, String storeName, String gstNumber, String sellerPassword) {
        this.sellerName = sellerName;
        this.sellerEmail = sellerEmail;
        this.storeName = storeName;
        this.gstNumber = gstNumber;
        this.sellerPassword = sellerPassword;
    }

    public Seller() {
    }

    public String getSellerId() {
        return sellerId;
    }

    public void setSellerId(String sellerId) {
        this.sellerId = sellerId;
    }

    public String getSellerName() {
        return sellerName;
    }

    public void setSellerName(String sellerName) {
        this.sellerName = sellerName;
    }

    public String getSellerEmail() {
        return sellerEmail;
    }

    public void setSellerEmail(String sellerEmail) {
        this.sellerEmail = sellerEmail;
    }

    public String getStoreName() {
        return storeName;
    }

    public void setStoreName(String storeName) {
        this.storeName = storeName;
    }

    public String getGstNumber() {
        return gstNumber;
    }

    public void setGstNumber(String gstNumber) {
        this.gstNumber = gstNumber;
    }

    public String getSellerPassword() {
        return sellerPassword;
    }

    public void setSellerPassword(String sellerPassword) {
        this.sellerPassword = sellerPassword;
    }
}
