package impl;

import dao.CartDAO;
import dao.ProductDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Cart;
import model.Product;

public class CartDAOImpl implements CartDAO{

    @Override
    public void insert(Cart c) {
        String query = "insert into Cart (productId,qty,email) values (?,?,?)"; 
        try{
        Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setInt(1, c.getProductId());
            pstmt.setInt(2, c.getQty());
            pstmt.setString(3, c.getEmail());
            
            pstmt.executeUpdate();
            
        }
        catch( SQLException e ){
            e.printStackTrace();
        }
    }

     @Override
    public void update(Cart c) {
       String query = "update Cart set name=?,address=?,billingaddress=? where email=?";
        
        try{
            Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setString(1, c.getName());
            pstmt.setString(2, c.getAddress());
            pstmt.setString(3, c.getBillingaddress());
            pstmt.setString(4, c.getEmail());
            
            pstmt.executeUpdate();
            
        }catch( SQLException e ){
            e.printStackTrace();
        }
    }
    @Override
    public List<Cart> getCart(String email) {
        String query = "select * from Cart where email=?";
        
        List<Cart> cart = new ArrayList<>();
        ProductDAO pdao = new ProductDAOImpl();
        
        try{
            Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setString(1, email);
            
            ResultSet rs = pstmt.executeQuery();
            
            while( rs.next() ){
                Cart u = new Cart();
                
                u.setId(rs.getInt("id"));
                u.setEmail(rs.getString("email"));
                u.setProductId(rs.getInt("productId"));
                u.setQty(rs.getInt("qty"));
                u.setAddress(rs.getString("address"));
                u.setBillingaddress(rs.getString("billingaddress"));
                u.setName(rs.getString("name"));
                
                Product p = pdao.getProduct(u.getProductId());
                
                u.setProduct(p);
                
                cart.add(u);
                
            }
            
        }catch( SQLException e ){
            e.printStackTrace();
        }
        
        return cart;
    }

    @Override
    public void deleteAllItemsByEmail(String email) {
        String query = "delete from Cart where email = ?"; 
        try{
        Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setString(1, email);
            
            pstmt.executeUpdate();
            
        }
        catch( SQLException e ){
            e.printStackTrace();
        }
    }

    @Override
    public Cart getCart(String email, int productId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(int id) {
      String query = "delete from Cart where id = ?";
        try {
            Connection conn = config.Config.conn;

            PreparedStatement pstmt = conn.prepareStatement(query);

            pstmt.setInt(1, id);

            pstmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();  
    }
    }

    @Override
    public void updateAddressAndBilling(String email, String address, String name, String billingaddress) {
    
        String query="update Cart set address = ?, billingaddress = ?, name = ? where email=?";
        
        System.out.println("email: " + email);
        System.out.println("address:" + address);
        System.out.println("billingaddress:" + billingaddress);
        System.out.println("name:" + name);
        
        try{
         
            Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setString(1, address);
            pstmt.setString(2, billingaddress);
            pstmt.setString(3, name);
            pstmt.setString(4, email);
                    
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
    }

    
}

