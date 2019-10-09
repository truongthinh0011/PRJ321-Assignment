/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package assignmentprj321;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.TimeZone;


/**
 *
 * @author TruongThinh
 */
public class Connection {
    public static java.sql.Connection getMySQLConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://" + "localhost" + ":3306/" + "cake", "root", "");
    }
}
