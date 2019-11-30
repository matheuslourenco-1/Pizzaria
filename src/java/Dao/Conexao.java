//Classe de Conexão
package Dao;
//importar bibliotecas
import java.sql.Connection;
import java.sql.DriverManager;


public class Conexao {
    //Metodo para realizar conexão
    public Connection getConexao(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/unopar", "root", "");
            
        } catch (Exception erro) {
            throw new RuntimeException("ERRO 1:"+erro);
        }
    }
    
}
