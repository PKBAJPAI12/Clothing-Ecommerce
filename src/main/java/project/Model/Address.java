package project.Model;

import javax.persistence.*;

@Entity

public class Address{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 10,name = "address_id")
    private int addressId;
    @Column(length = 20)
    private String firstName;
    private String lastName;
    private String userShippingEmail;
    private long userPhone;
    @Column(length = 100)
    private String address;
    private String country;
    private int pinCode;
    private  String city;
    private String order_reference;
    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.DETACH)
    @JoinColumn(name = "user_id")

    private User user;

    public Address() {
    }

    public Address(int addressId, String firstName, String lastName, String userShippingEmail, long userPhone, String address, String country, int pinCode, String city, String order_reference, User user) {
        this.addressId = addressId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.userShippingEmail = userShippingEmail;
        this.userPhone = userPhone;
        this.address = address;
        this.country = country;
        this.pinCode = pinCode;
        this.city = city;
        this.order_reference = order_reference;
        this.user = user;
    }

    public Address(String firstName, String lastName, String userShippingEmail, long userPhone, String address, String country, int pinCode, String city, String order_reference, User user) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.userShippingEmail = userShippingEmail;
        this.userPhone = userPhone;
        this.address = address;
        this.country = country;
        this.pinCode = pinCode;
        this.city = city;
        this.order_reference = order_reference;
        this.user = user;
    }

    public int getAddressId() {
        return addressId;
    }

    public void setAddressId(int addressId) {
        this.addressId = addressId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUserShippingEmail() {
        return userShippingEmail;
    }

    public void setUserShippingEmail(String userShippingEmail) {
        this.userShippingEmail = userShippingEmail;
    }

    public long getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(long userPhone) {
        this.userPhone = userPhone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public int getPinCode() {
        return pinCode;
    }

    public void setPinCode(int pinCode) {
        this.pinCode = pinCode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getOrder_reference() {
        return order_reference;
    }

    public void setOrder_reference(String order_reference) {
        this.order_reference = order_reference;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
