package uploads;

import java.sql.*;
import java.util.ArrayList;

public class imageDAO {

    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public imageDAO() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String dbURL = "jdbc:mysql://localhost:3306/defenders";
            String dbID = "defenders";
            String dbPass = "defenderss";
            conn = DriverManager.getConnection(dbURL, dbID, dbPass);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int insertImage(String memberID, String description){
        String sql = "insert into uploads (writer, description) values(?, ?)";
        try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, memberID);
            pstmt.setString(2, description);
            return pstmt.executeUpdate();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return -1; //Error
    }

    public int insertImageDareDevil(String description){
        String sql = "insert into dareDevilUploads (description) values(?)";
        try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, description);
            return pstmt.executeUpdate();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return -1; //Error
    }

    public int insertImageJessicaJones(String description){
        String sql = "insert into jessicaJonesUploads (description) values(?)";
        try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, description);
            return pstmt.executeUpdate();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return -1; //Error
    }

    public int insertImageIronFist(String description){
        String sql = "insert into ironFistUploads (description) values(?)";
        try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, description);
            return pstmt.executeUpdate();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return -1; //Error
    }

    public int insertImageLukeCage(String description){
        String sql = "insert into lukeCageUploads (description) values(?)";
        try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, description);
            return pstmt.executeUpdate();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return -1; //Error
    }

    public ArrayList<String> getSrcDareDevil(){
        String sql = "select description from dareDevilUploads";
        ArrayList<String> srcLists = new ArrayList<String>();
        String description = "";
        try{
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while(rs.next()){
                description = rs.getString("description");
                srcLists.add(description);

            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return srcLists;
    }

    public ArrayList<String> getSrcJessicaJones(){
        String sql = "select description from jessicaJonesUploads";
        ArrayList<String> srcLists = new ArrayList<String>();
        String description = "";
        try{
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while(rs.next()){
                description = rs.getString("description");
                srcLists.add(description);

            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return srcLists;
    }

    public ArrayList<String> getSrcIronFist(){
        String sql = "select description from ironFistUploads";
        ArrayList<String> srcLists = new ArrayList<String>();
        String description = "";
        try{
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while(rs.next()){
                description = rs.getString("description");
                srcLists.add(description);

            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return srcLists;
    }

    public ArrayList<String> getSrcLukeCage(){
        String sql = "select description from lukeCageUploads";
        ArrayList<String> srcLists = new ArrayList<String>();
        String description = "";
        try{
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while(rs.next()){
                description = rs.getString("description");
                srcLists.add(description);

            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return srcLists;
    }
}
