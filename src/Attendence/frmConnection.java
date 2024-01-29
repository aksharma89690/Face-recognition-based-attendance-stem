package Attendence;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
public class frmConnection
{

public static Connection con=null;
public frmConnection()
{
	
}
public Connection getCon() throws Exception
{

            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vidattendence", "root", "");
return con;
	
}
 public static String getDate() {
        DateFormat dateFormat = new SimpleDateFormat(
                "dd/MM/yyyy");

        Calendar cal = Calendar.getInstance();

        return dateFormat.format(cal.getTime());// "11/03/14 12:33:43";
    }
 public static String getFileDate() {
        DateFormat dateFormat = new SimpleDateFormat(
                "yyyy_MM_dd_hh_mm_ss");

        Calendar cal = Calendar.getInstance();

        return dateFormat.format(cal.getTime());// "11/03/14 12:33:43";
    }

    public static String getTime() {
        DateFormat dateFormat1 = new SimpleDateFormat(
                "HH:mm:ss");

        Calendar cal = Calendar.getInstance();

        return dateFormat1.format(cal.getTime());// "11/03/14 12:33:43";
    }

public void closeCon()
{
try
{
    con.close();
}
catch(Exception ex)
{
    
}

}
}
