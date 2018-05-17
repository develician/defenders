package members;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class memberDAO {

    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public memberDAO() {
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


    public int join(String memberID, String memberPassword, String memberEmail) {
        String sql = "insert into member (memberID, memberPassword, memberEmail) values(?, ?, ?)";
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, memberID);
            pstmt.setString(2, memberPassword);
            pstmt.setString(3, memberEmail);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    public int login(String memberID, String memberPassword) {
        String sql = "select * from member where memberID = ?";
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, memberID);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                if (rs.getString("memberPassword").equals(memberPassword)) {
                    return 1; //Success
                } else {
                    return 0; // Incorrect Password
                }
            }
            return -1; // No Id

        } catch (Exception e) {
            e.printStackTrace();
        }

        return -2; //DBERror
    }

    public ArrayList<String> management(String memberID){
        String sql = "select * from member where memberID = ?";
        ArrayList<String> member = new ArrayList<String>();
        try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, memberID);
            rs = pstmt.executeQuery();
            if(rs.next()){

                String memberPassword = rs.getString("memberPassword");
                String memberEmail = rs.getString("memberEmail");
                member.add(memberID);
                member.add(memberPassword);
                member.add(memberEmail);
                return member;
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return member;

    }

    public int update(String memberPassword, String memberEmail, String memberID){
        String sql = "update member set memberPassword = ?, memberEmail = ? where memberID = ?";
        try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, memberPassword);
            pstmt.setString(2, memberEmail);
            pstmt.setString(3, memberID);
            return pstmt.executeUpdate();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return -1; // DB Error
    }

    public String findID(String memberEmail){
        String sql = "select memberID from member where memberEmail = ?";
        try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, memberEmail);
            rs = pstmt.executeQuery();
            if(rs.next()){
                String memberID = rs.getString("memberID");
                return memberID;
            }
            else{
                return "Please Check Your Email.";
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return "DataBase Error, Try Again.";
    }


    public boolean emailCheck(String memberEmail){
        String sql = "select * from member where memberEmail = ?";
        try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, memberEmail);
            rs = pstmt.executeQuery();
            if(rs.next()){
                return true;
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }

//    public String findEmail(String memberEmail, String memberID){
//        String sql = "select memberEmail from member where memberID = ?";
//        try{
//            pstmt = conn.prepareStatement(sql);
//            pstmt.setString(1, memberID);
//            rs = pstmt.executeQuery();
//            if(rs.next()){
//                return rs.getString("memberEmail");
//            }
//        }
//        catch(Exception e){
//            e.printStackTrace();
//        }
//        return null;
//    }

    public String findPassword(String memberID){
        String sql = "select memberPassword from member where memberID = ?";
        try{
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, memberID);
            rs = pstmt.executeQuery();
            if(rs.next()){
                return rs.getString("memberPassword");
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }

}
