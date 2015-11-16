package fr.jwebv3;

import java.sql.DriverManager;  // gestion des pilotes
import java.sql.Connection;     // une connexion à la BD
import java.sql.Statement;      // une instruction
import java.sql.ResultSet;      // un résultat (lignes/colonnes)
import java.sql.SQLException;   // une erreur

/**
 * Created by norius on 08.11.2015.
 */
public class JdbcSample {
        void loadDriver() throws ClassNotFoundException {
            Class.forName("com.mysql.jdbc.Driver");
        }

        Connection newConnection() throws SQLException {
            final String url = "jdbc:mysql://37.187.48.115:3306/J2ee";
            Connection conn = DriverManager.getConnection(url, "goudot", "cafeb4af5d");
            return conn;
        }

        public void listPersons() throws SQLException {
            Connection conn = null;
            try {
                // create new connection and statement
                conn = newConnection();
                Statement st = conn.createStatement();

                String query = "SELECT login, password, email FROM User";
                ResultSet rs = st.executeQuery(query);

                while (rs.next()) {
                    System.out.printf(" %-20s |  %-20s | %-20s  ",rs.getString("login"), rs.getString("password"), rs.getString("email"));
                }
            } finally {
                // close result, statement and connection
                if (conn != null) conn.close();
            }
        }
        // chargement du pilote

        // ouverture de connexion

        // exécution d'une requête

        // programme principal

    }

