
package Db_Connection;
import java.sql.*;
import javax.swing.JOptionPane;
public class ConectionDb {
   public static Connection con ;
   public static   Statement st;
   public ConectionDb(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
	 con = DriverManager.getConnection(  "jdbc:mysql://localhost:3306/garageworkdb","root","Incapp@12");
	       
	 st = con.createStatement();
    }catch(Exception ex){
        JOptionPane.showMessageDialog(null, ex);
    }
        }
}
