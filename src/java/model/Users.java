package model;

public class Users {
    
    public int id;
    public String firstname;
    public String lastname;
    public String password;
    public String mobile;
    public String address;
    public String email;
    public String cpassword;

    public String getCpassword() {
        return cpassword;
    }

    public void setCpassword(String cpassword) {
        this.cpassword = cpassword;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public Users(){
        
    }

    @Override
    public String toString() {
        return "Users{" + "id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + ", password=" + password + ", mobile=" + mobile + ", address=" + address + ", email=" + email + ", cpassword=" + cpassword + '}';
    }

   
}