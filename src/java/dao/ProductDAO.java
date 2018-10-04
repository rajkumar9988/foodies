package dao;

import java.util.List;
import model.Product;

public interface ProductDAO {
    void insert(Product u);
    void update(Product u);
    void delete(int uid);
    
    Product getProduct(int uid);
    Product getProduct(String categoryname);
    
    List<Product> getProduct();
   
    
    List<Product> getCart(String categoryname);
    
}
