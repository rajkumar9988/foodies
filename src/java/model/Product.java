package model;

public class Product {
    
    private int id;
    private String categoryname;
    private String productname;
    private String image;
    private String price;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategoryname() {
        return categoryname;
    }

    public void setCategoryname(String categoryname) {
        this.categoryname = categoryname;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
    public Product(){
        
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", categoryname=" + categoryname + ", productname=" + productname + ", image=" + image + ", price=" + price + '}';
    }
    
}
