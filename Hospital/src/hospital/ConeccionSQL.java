package hospital;

import java.sql.*;
import javax.swing.JOptionPane;

public class ConeccionSQL {

    String bd = "hospital";
    String url = "jdbc:mysql://localhost:3306/hospital"+  bd;

    public Connection Conectar() {
       Connection con=null;
   
       try {
           
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","chessani93");
          } catch (ClassNotFoundException | SQLException e) {
           JOptionPane.showMessageDialog(null, "error de conexion "+e);
       }
       return con;
   }
}
