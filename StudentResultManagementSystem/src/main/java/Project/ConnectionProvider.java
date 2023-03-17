package Project;
import java.sql.*;
public class ConnectionProvider {
     public static Connection getCon(){
    	
    		  
			try {
 	            Class.forName("org.postgresql.Driver");
 	           Connection  con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Student","postgres", "root");
 	           return con;
 			}catch(Exception e) {
 				System.out.println(e);
 				return null;
 			}
    	 }
     }
