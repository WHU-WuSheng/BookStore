package DAO;

import Entity.User;
import Util.DBConnection.Database;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class UserDAO {

    public List<User> getUserBy(String ID,String value) throws Exception{

        Database d=new Database();
        d.DBConnection();
        String sql="select * from user where "+ID+"= "+"'"+value+"'";
        ResultSet rs=d.select(sql);
        List<User> list=new ArrayList<User>();
        while(rs.next()){
            User user=new User();
            user.setUserID(rs.getString("user_id"));
            user.setName(rs.getString("name"));
            user.setEmail(rs.getString("email"));
            user.setDescription(rs.getString("description"));
            user.setImage(rs.getString("image"));
            user.setPassword(rs.getString("password"));
            user.setType(rs.getString("type"));
            user.setTelephone(rs.getString("tel"));
            list.add(user);
        }
        d.closeConn();
        return list;
    }

    public boolean insertUser(User user){
        Database d=new Database();
        d.DBConnection();
        String id=user.getUserID();
        String name=user.getName();
        String password=user.getPassword();
        String type=user.getType();
        String email=user.getEmail();
        String description=user.getDescription();
        String image=user.getImage();
        String tel=user.getTelephone();
        String sql="insert into user(user_id,name,password,type,email,description,image,tel) " +
                "values("+"'"+id+"'"+","+"'"+name+"'"+","+"'"+password+"'"+","+"'"+type+"'"+","+"'"+email+"'"+","+"'"+description+"'"+","+"'"+image+"'"+","+"'"+tel+"'"+")";
        boolean result=d.insert(sql);
        d.closeConn();
        return result;
    }

    public boolean updatebasicInfo(User user){
        Database d=new Database();
        d.DBConnection();
        String sql="update user set name='"+user.getName()+"',tel='"+user.getTelephone()+"',description='"+user.getDescription()+"' where user_id='"+user.getUserID()+"'";
        boolean result=d.update(sql);
        d.closeConn();
        return result;
    }

    public boolean updatepassword(String userID,String password){
        Database d= new Database();
        d.DBConnection();
        String sql="update user set password='"+password+"' where user_id='"+userID+"'";
        boolean result=d.update(sql);
        d.closeConn();
        return result;
    }

}
