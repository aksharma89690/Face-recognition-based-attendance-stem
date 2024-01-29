package DB;
import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Administrator
 */
public class Connect {

    public static Connection conn = null;
    public static Statement stat = null;
    public static ResultSet rs1;
    static PreparedStatement ps = null;
    public static ResultSet rs = null;
    static String rdate = "";
    static String rtime = "";

    public static Connection openConnection() {
        try {
            rdate = getDate();
            rtime = getTime();
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vidattendence", "root", "");
            stat = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            System.out.println("connection made");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Connect.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;

    }
    public static void closeConnection() {
        try {
            stat.close();
            conn.close();
            //rs.close();
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }
    public static String getCabID() {
        String id ="";
        try {

            openConnection();
            String query = "SELECT Max(cabid) FROM cab_register";
            rs = stat.executeQuery(query);
            //System.out.println(rs);  //Extact result from ResultSet rs
            int newid =1;
            if (rs.next()) {
                newid = (rs.getInt(1));
                newid =newid +1;
            }
            id =Integer.toString(newid);
            closeConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return id;
    }
     public static String getUserID() {
        String id ="";
        try {

            openConnection();
            String query = "SELECT Max(userid) FROM user_register";
            rs = stat.executeQuery(query);
            //System.out.println(rs);  //Extact result from ResultSet rs
            int newid =1;
            if (rs.next()) {
                newid = (rs.getInt(1));
                newid =newid +1;
            }
            id =Integer.toString(newid);
            closeConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return id;
    }
    public static String getDate() {
        DateFormat dateFormat = new SimpleDateFormat(
                "dd/MM/yyyy");

        Calendar cal = Calendar.getInstance();

        return dateFormat.format(cal.getTime());// "11/03/14 12:33:43";
    }

    public static String getTime() {
        DateFormat dateFormat1 = new SimpleDateFormat(
                "HH:mm:ss");

        Calendar cal = Calendar.getInstance();

        return dateFormat1.format(cal.getTime());// "11/03/14 12:33:43";
    }
}
