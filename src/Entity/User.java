package Entity;

public class User {
    private String userID;

    private String telephone;

    private String name;

    private String password;

    private String type;

    private String eMail;

    private String description;

    private String image;

    public User(){

    }

    public User(String userId,String tel,String name,String password,String type,String eMail,String description,String image){
        this.userID=userId;
        this.telephone=tel;
        this.name=name;
        this.password=password;
        this.type=type;
        this.eMail=eMail;
        this.description=description;
        this.image=image;

    }

    public String getTelephone(){
        return telephone;
    }

    public void setTelephone(String tel){
        this.telephone=tel;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userId) {
        this.userID = userId == null ? null : userId.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getEmail() {
        return eMail;
    }

    public void setEmail(String eMail) {
        this.eMail = eMail == null ? null : eMail.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description){
        this.description=description;
    }

    public String getImage(){
        return image;
    }

    public void setImage(String image){
        this.image=image;
    }



}