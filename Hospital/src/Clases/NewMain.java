/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;
import java.io.IOException;
import java.nio.file.*;
/**
 *
 * @author Usuario
 */
public class NewMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException {
      Path o = Paths.get("origen.txt");
      
      Path d = Paths.get("destino.txt");
      
      Files.copy(o , d ,StandardCopyOption.REPLACE_EXISTING);
    }
    
}
