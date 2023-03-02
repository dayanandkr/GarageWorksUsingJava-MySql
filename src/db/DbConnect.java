/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author hp
 */
public class DbConnect {
    public static Connection c;
    public static Statement st;
    static{
         //jdbc
         try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            c=DriverManager.getConnection("jdbc:mysql://localhost:3306/hosteldb","root","Incapp@12");
            st=c.createStatement();
    }catch(Exception e){
        JOptionPane.showMessageDialog(null, e);
    }
    }
}
