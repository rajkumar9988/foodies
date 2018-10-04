package impl;

import dao.UsersDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Users;

public class UsersDAOImpl implements UsersDAO{

     @Override
    public void insert(Users u) {
        String query = "insert into Users (firstname,lastname,password,mobile,address,email) values (?,?,?,?,?,?)"; 
        try{
        Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setString(1, u.getFirstname());
            pstmt.setString(2, u.getLastname());
            pstmt.setString(3, u.getPassword());
            pstmt.setString(4, u.getMobile());
            pstmt.setString(5, u.getAddress());
            pstmt.setString(6, u.getEmail());
            
            
            pstmt.executeUpdate();
            
        }
        catch( SQLException e ){
            e.printStackTrace();
        }
    }

     @Override
    public void update(Users u) {
        String query = "update Users set firstname=?,lastname=?,address=?,email=?,mobile=? where id=?";
        
        try{
            Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setString(1, u.getFirstname());
            pstmt.setString(2, u.getLastname());
            pstmt.setString(3, u.getAddress());
            pstmt.setString(4, u.getEmail());
            pstmt.setString(5, u.getMobile());
            pstmt.setInt(6, u.getId());
            
            pstmt.executeUpdate();
            
        }catch( SQLException e ){
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int uid) {
        String query = "delete from Users where id=?";
        
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
    public Users getUsers(int uid) {
     String query = "select * from Users where id=?";
        
        try{
            Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setInt(1, uid);
            
            ResultSet rs = pstmt.executeQuery();
            
            while( rs.next() ){
                Users  u = new Users();
                
                u.setId(rs.getInt("id"));
                u.setFirstname(rs.getString("firstname"));
                u.setLastname(rs.getString("lastname"));
                u.setEmail(rs.getString("email"));
                u.setMobile(rs.getString("mobile"));
                u.setAddress(rs.getString("address"));
                
                return u;
                
            }
            
        }catch( SQLException e ){
            e.printStackTrace();
        }
        
        return null;
    }

    @Override
    public List<Users> getUsers() {
       List<Users> list = new ArrayList<>();
        
        String query = "select * from Users";
        
        try{
            Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            ResultSet rs = pstmt.executeQuery();
            
            while( rs.next() ){
                Users u = new Users();
                
                u.setId(rs.getInt("id"));
                u.setFirstname(rs.getString("firstname"));
                u.setLastname(rs.getString("lastname"));
                u.setAddress(rs.getString("address"));
                u.setMobile(rs.getString("mobile"));
                u.setEmail(rs.getString("email"));
                
                list.add(u);
                
            }
            
        }catch( SQLException e ){
            e.printStackTrace();
        }
        
        return list;       
        
    }

    @Override
    public boolean checkLogin(String email, String password ) {
        
        String query = "select * from Users where email=? and password=?";
        
        try{
            Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            
            ResultSet rs = pstmt.executeQuery();
            
            return( rs.next() );
            
        }catch( SQLException e ){
            e.printStackTrace();
        }
        
        return false;
    }

    @Override
    public boolean getUsers(String email) {
       
        String query = "select * from Users where email=?";
        
        try{
            Connection conn = config.Config.conn;
            
            PreparedStatement pstmt = conn.prepareStatement(query);
            
            pstmt.setString(1, email);
            
            ResultSet rs = pstmt.executeQuery();
            
            return ( rs.next() );
            
        }catch( SQLException e ){
            e.printStackTrace();
        }
        
        return false;
    }
    
}