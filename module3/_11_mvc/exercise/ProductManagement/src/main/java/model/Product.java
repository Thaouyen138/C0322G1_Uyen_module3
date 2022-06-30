package model;

public class Product {
    //id, tên sản phẩm, giá sản phẩm, mô tả của sản phẩm, nhà sản xuất
    private Integer id;
    private  String name;
    private Double price;
    private String describle;
    private String producer;

    public Product() {
    }

    public Product(Integer id, String name, Double price, String describle, String producer) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.describle = describle;
        this.producer = producer;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getDescrible() {
        return describle;
    }

    public void setDescrible(String describle) {
        this.describle = describle;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }
}
