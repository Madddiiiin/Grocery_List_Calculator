package com.mycompany.app;
import java.sql.*;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args ) {

        try (
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerylistcalculator?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
                        "user", "5018");
                Statement stmt = conn.createStatement()
        ) {

        } catch (SQLException e) {
            e.printStackTrace();
        }

        API api = new API();
        api.startServer();

    }
}