package dbtaobao;
import java.sql.*;
import java.util.ArrayList;
 
public class connDb {
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;
 
    public static void startConn(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            try{
                con = DriverManager.getConnection("jdbc:MySQL://localhost:3306/dbtaobao","root","hadoop");
            }catch(SQLException e){
                e.printStackTrace();
            }
        }catch(ClassNotFoundException e){
            e.printStackTrace();
        }
    }
 
    public static void endConn() throws SQLException{
        if(con != null){
            con.close();
            con = null;
        }
        if(rs != null){
            rs.close();
            rs = null;
        }
        if(stmt != null){
            stmt.close();
            stmt = null;
        }
    }
    public static ArrayList<String[]> index() throws SQLException{
        ArrayList<String[]> list = new ArrayList<>();
        startConn();
        stmt = con.createStatement();
        rs = stmt.executeQuery("select action,count(*) num from user_log group by action desc");
        while(rs.next()){
            String[] temp={rs.getString("action"),rs.getString("num")};
            list.add(temp);
        }
            endConn();
        return list;
    }
        public static ArrayList<String[]> index_1() throws SQLException{
            ArrayList<String[]> list = new ArrayList<>();
            startConn();
            stmt = con.createStatement();
            rs = stmt.executeQuery("select gender,count(*) num from user_log group by gender desc");
            while(rs.next()){
                String[] temp={rs.getString("gender"),rs.getString("num")};
                list.add(temp);
            }
            endConn();
            return list;
        }
        public static ArrayList<String[]> index_2() throws SQLException{
            ArrayList<String[]> list = new ArrayList<>();
            startConn();
            stmt = con.createStatement();
            rs = stmt.executeQuery("select gender,age_range,count(*) num from user_log group by gender,age_range desc");
            while(rs.next()){
                String[] temp={rs.getString("gender"),rs.getString("age_range"),rs.getString("num")};
                list.add(temp);
            }
            endConn();
            return list;
        }
        public static ArrayList<String[]> index_3() throws SQLException{
            ArrayList<String[]> list = new ArrayList<>();
            startConn();
            stmt = con.createStatement();
            rs = stmt.executeQuery("select cat_id,count(*) num from user_log group by cat_id order by count(*) desc limit 5");
            while(rs.next()){
                String[] temp={rs.getString("cat_id"),rs.getString("num")};
                list.add(temp);
            }
            endConn();
            return list;
        }
    public static ArrayList <String[]>index_4() throws SQLException{
        ArrayList<String[]> list = new ArrayList<>();
        startConn();
        stmt = con.createStatement();
        rs = stmt.executeQuery("select province,count(*) num from user_log group by province order by count(*) desc");
        while(rs.next()){
            String[] temp={rs.getString("province"),rs.getString("num")};
            list.add(temp);
        }
        endConn();
        return list;
    }
}
