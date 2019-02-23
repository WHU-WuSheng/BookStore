package Util.DBConnection;

import java.sql.*;


public class Database {
    private String url="jdbc:oracle:thin:@172.20.10.6:1521:orcl" ;
    private String user="scott";
    private String password="123456";

    private Connection conn = null;
    private Statement stmt=null;
    private ResultSet rs=null;


    public Database(){

    }

    public Connection getConn(){
        return conn;
    }
    public Statement getPstmt(){
        return stmt;
    }
    public ResultSet getRs(){
        return rs;
    }

    public void DBConnection(){
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(url, user, password);
            if (!conn.isClosed()) {
                System.out.println("success");
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
    }

    public ResultSet select(String sql) throws SQLException {
        stmt=(Statement)conn.createStatement();
        rs=stmt.executeQuery(sql);
        return rs;
    }

    public boolean insert(String sql){
        try{
            stmt=conn.createStatement();
            return stmt.execute(sql);
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public boolean update(String sql){
        try{
            stmt=conn.createStatement();
            return (stmt.executeUpdate(sql)!=0);
        }catch (SQLException e){
            e.printStackTrace();
            return false;
        }
    }

    public void closeConn() {
        // 关闭数据库
        try {
            if (rs != null) {
                rs.close();
                rs = null;
            }
            if (stmt != null) {
                stmt.close();
                stmt = null;
            }
            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (Exception e) {
            System.out.println("数据库关闭错误");
            e.printStackTrace();
        }
    }


}

