package model;

public class Category {
    
    private int id;
    private String categoryname;
    private String description;
    private String image;

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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    public Category(){
        
    }

    @Override
    public String toString() {
        return "Category{" + "id=" + id + ", categoryname=" + categoryname + ", description=" + description + ", image=" + image + '}';
    }
    
}
