package DAO;

import Entity.Book;
import Util.DBConnection.Database;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BookDAO {
    public List<Book> getBookby(String key,String value) throws Exception{
        Database d=new Database();
        d.DBConnection();
        String sql="select * from book where "+key+" like '%"+value+"%'";
        ResultSet rs=d.select(sql);
        List<Book> list=new ArrayList<>();
        while(rs.next()){
            Book book=new Book();
            book.setBookId(rs.getString("book_id"));
            book.setPicture(rs.getString("picture"));
            book.setName(rs.getString("name"));
            book.setPress(rs.getString("press"));
            book.setType(rs.getString("type"));
            book.setPrice(rs.getDouble("price"));
            book.setDescription(rs.getString("description"));
            book.setMark(rs.getDouble("mark"));
            book.setNumber(rs.getInt("book_number"));
            book.setUserId(rs.getString("user_id"));
            list.add(book);
        }
        return list;
    }
}
