package dao;

import java.util.List;
import model.Cart;

public interface CartDAO {

    void insert( Cart c );
    void update(Cart c);
    
    void updateAddressAndBilling(String email, String address, String name, String billingaddress);
    
    
    List<Cart> getCart(String email);
    
    void deleteAllItemsByEmail( String email );
    
    Cart getCart(String email, int productId);
    
    void delete( int id );
}
