package impl;

import dao.ProductDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;

public class ProductDAOImpl implements ProductDAO {

    @Override
    public void insert(Product u) {
      String query = "insert into Product (categoryname,productname,image,price) values (?,?,?,?)"; 
        try{
        Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setString(1, u.getCategoryname());
            pstmt.setString(2, u.getProductname());
            pstmt.setString(3, u.getImage());
            pstmt.setString(4, u.getPrice());
            
            
            pstmt.executeUpdate();
            
        }
        catch( SQLException e ){
            e.printStackTrace();
        }
        
    }

    @Override
    public void update(Product u) {
        String query = "update Product set categoryname=?,productname=?,image=?,price=? where id=?";
        
        try{
            Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setString(1, u.getCategoryname());
            pstmt.setString(2, u.getProductname());
            pstmt.setString(3, u.getImage());
            pstmt.setString(4, u.getPrice());
            pstmt.setInt(5, u.getId());
            
            pstmt.executeUpdate();
            
        }catch( SQLException e ){
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int uid) {
        String query = "delete from Product where id=?";
        
        try{
            Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setInt(1, uid);
                        
            pstmt.executeUpdate();
            
        }catch( SQLException e ){
            e.printStackTrace();
        }
    }

    @Override
    public Product getProduct(int uid) {
        String query = "select * from Product where id=?";
        
        try{
            Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setInt(1, uid);
            
            ResultSet rs = pstmt.executeQuery();
            
            while( rs.next() ){
                Product  u = new Product();
                
                u.setId(rs.getInt("id"));
                u.setCategoryname(rs.getString("categoryname"));
                u.setProductname(rs.getString("productname"));
                u.setImage(rs.getString("image"));
                u.setPrice(rs.getString("price"));
                
                return u;
                
            }
            
        }catch( SQLException e ){
            e.printStackTrace();
        }
        
        return null;
    }

    @Override
    public List<Product> getProduct() {
         List<Product> list = new ArrayList<>();
        
        String query = "select * from Product";
        
        try{
            Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            ResultSet rs = pstmt.executeQuery();
            
            while( rs.next() ){
                Product u = new Product();
                
                u.setId(rs.getInt("id"));
                u.setCategoryname(rs.getString("categoryname"));
                u.setProductname(rs.getString("productname"));
                u.setImage(rs.getString("image"));
                u.setPrice(rs.getString("price"));
                
                list.add(u);
                
            }
            
        }catch( SQLException e ){
            e.printStackTrace();
        }
        
        return list;       
        
    }

    @Override
    public List<Product> getCart(String categoryname) {
       String query = "select * from prdouct where categoryname=?";
        
        List<Product> product1 = new ArrayList<>();
        ProductDAO pdao = new ProductDAOImpl();
        
        try{
            Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setString(1, categoryname);
            
            ResultSet rs = pstmt.executeQuery();
            
            while( rs.next() ){
                Product u = new Product();
                
                u.setId(rs.getInt("id"));
                u.setImage(rs.getString("image"));
                u.setProductname(rs.getString("productname"));
                u.setCategoryname(rs.getString("categoryname"));
                u.setPrice(rs.getString("price"));
                
                
               
                
                
                
                product1.add(u);
                
            }
            
        }catch( SQLException e ){
            e.printStackTrace();
        }
        
        return product1;
    }

    @Override
    public Product getProduct(String categoryname) {
       String query = "select * from Product where categoryname=?";
        
        try{
            Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setString(1, categoryname);
            
            ResultSet rs = pstmt.executeQuery();
            
            while( rs.next() ){
                Product  u = new Product();
                
                u.setId(rs.getInt("id"));
                u.setCategoryname(rs.getString("categoryname"));
                u.setProductname(rs.getString("productname"));
                u.setImage(rs.getString("image"));
                u.setPrice(rs.getString("price"));
                
                return u;
                
            }
            
        }catch( SQLException e ){
            e.printStackTrace();
        }
        
        return null;
    }

   
}