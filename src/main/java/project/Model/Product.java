package project.Model;

import javax.persistence.*;

@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 10,name = "product_id")
    private int id;
    @Column(length = 40,name = "product_name")
    private String pName;
    @Column(length = 1000,name = "product_desc")
    private  String pDesc;
    @Column(length = 10,name = "product_qty")
    private int pQty;
    @Column(length = 20,name = "product_price")
    private int pPrice;
    @Column(length = 5,name = "product_discount")
    private int pDiscount;
    @Column(length = 10,name = "product_pCollection")
    private String pCollection;
    @Column(length = 10,name = "product_pCategory")
    private String pCategory;
    private String pImage;

    public Product(int id, String pName, String pDesc, int pQty, int pPrice, int pDiscount, String pCollection, String pCategory, String pImage) {
        this.id = id;
        this.pName = pName;
        this.pDesc = pDesc;
        this.pQty = pQty;
        this.pPrice = pPrice;
        this.pDiscount = pDiscount;
        this.pCollection = pCollection;
        this.pCategory = pCategory;
        this.pImage = pImage;
    }

    public Product(String pName, String pDesc, int pQty, int pPrice, int pDiscount, String pCollection, String pCategory, String pImage) {
        this.pName = pName;
        this.pDesc = pDesc;
        this.pQty = pQty;
        this.pPrice = pPrice;
        this.pDiscount = pDiscount;
        this.pCollection = pCollection;
        this.pCategory = pCategory;
        this.pImage = pImage;
    }

    public Product() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getpDesc() {
        return pDesc;
    }

    public void setpDesc(String pDesc) {
        this.pDesc = pDesc;
    }

    public int getpQty() {
        return pQty;
    }

    public void setpQty(int pQty) {
        this.pQty = pQty;
    }

    public int getpPrice() {
        return pPrice;
    }

    public void setpPrice(int pPrice) {
        this.pPrice = pPrice;
    }

    public int getpDiscount() {
        return pDiscount;
    }

    public void setpDiscount(int pDiscount) {
        this.pDiscount = pDiscount;
    }

    public String getpCollection() {
        return pCollection;
    }

    public void setpCollection(String pCollection) {
        this.pCollection = pCollection;
    }

    public String getpCategory() {
        return pCategory;
    }

    public void setpCategory(String pCategory) {
        this.pCategory = pCategory;
    }

    public String getpImage() {
        return pImage;
    }

    public void setpImage(String pImage) {
        this.pImage = pImage;
    }
    public int getPriceAfterApplyingDiscount(){
        int d=(int)((this.getpDiscount()/100.0)*this.getpPrice());
        return this.getpPrice()-d;
    }

}
