package fr.jwebv3;

import fr.jwebv3.JdbcSample;
import java.sql.DriverManager;  // gestion des pilotes
import java.sql.Connection;     // une connexion à la BD
import java.sql.Statement;      // une instruction
import java.sql.ResultSet;      // un résultat (lignes/colonnes)
import java.sql.SQLException;   // une erreur
/**
 * Created by norius on 08.11.2015.
 */
public class main {
    public static void main(String[] Args) {
        JdbcSample test = new JdbcSample();
        try {
            test.loadDriver();
            test.listPersons();
        } catch (ClassNotFoundException e) {
            System.err.println("Pilote JDBC introuvable !");
        } catch (SQLException e) {
            System.out.println("SQLException: " + e.getMessage());
            System.out.println("SQLState:     " + e.getSQLState());
            System.out.println("VendorError:  " + e.getErrorCode());
            e.printStackTrace();
        }
    }
}
