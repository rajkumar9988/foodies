package impl;

import dao.CategoryDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;

public class CategoryDAOImpl implements CategoryDAO{

    @Override
    public void insert(Category u) {
        String query = "insert into Category (categoryname,description,image) values (?,?,?)"; 
        try{
        Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setString(1, u.getCategoryname());
            pstmt.setString(2, u.getDescription());
            pstmt.setString(3, u.getImage());
            
            pstmt.executeUpdate();
            
        }
        catch( SQLException e ){
            e.printStackTrace();
        }
        
    }

    @Override
    public void update(Category u) {
        String query = "update Category set categoryname=?,description=?,image=? where id=?";
        
        try{
            Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setString(1, u.getCategoryname());
            pstmt.setString(2, u.getDescription());
            pstmt.setString(3, u.getImage());
            pstmt.setInt(4, u.getId());
            
            pstmt.executeUpdate();
            
        }catch( SQLException e ){
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int uid) {
         String query = "delete from Category where id=?";
        
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
    public Category getCategory(int uid) {
        String query = "select * from Category where id=?";
        
        try{
            Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setInt(1, uid);
            
            ResultSet rs = pstmt.executeQuery();
            
            while( rs.next() ){
                Category  u = new Category();
                
                u.setId(rs.getInt("id"));
                u.setCategoryname(rs.getString("categoryname"));
                u.setDescription(rs.getString("description"));
                u.setImage(rs.getString("image"));
                
                return u;
                
            }
            
        }catch( SQLException e ){
            e.printStackTrace();
        }
        
        return null;
    }

    @Override
    public List<Category> getCategory() {
             List<Category> list = new ArrayList<>();
        
        String query = "select * from Category";
        
        try{
            Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            ResultSet rs = pstmt.executeQuery();
            
            while( rs.next() ){
                Category u = new Category();
                
                u.setId(rs.getInt("id"));
                u.setCategoryname(rs.getString("categoryname"));
                u.setDescription(rs.getString("description"));
                u.setImage(rs.getString("image"));
                
                list.add(u);
                
            }
            
        }catch( SQLException e ){
            e.printStackTrace();
        }
        
        return list;       
        
    }
    
}