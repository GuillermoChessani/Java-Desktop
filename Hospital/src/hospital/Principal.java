/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hospital;

import Clases.Prestamo;
import java.awt.Desktop;
import java.awt.Dimension;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.DefaultListModel;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;

public class Principal extends javax.swing.JFrame implements ActionListener  {
List V1,V2,V3;
    public Principal() {
        initComponents();
        this.setTitle("Hospital Ángeles Tampico");
        this.setResizable(false);
      
        Notificacion Notificacion = new Notificacion();
        this.toBack();
        MenuVerificacionAreas();
        MenuVerificacionEquipos();
        MenuLimpieza();
    }

    private void Pantalla(){
        
Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
int wid = (int) screenSize.getWidth();
int hei = (int) screenSize.getHeight();
setSize(wid-50, hei-50);
setVisible(true);
        
    }
   
       @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        escritorio = new javax.swing.JDesktopPane();
        jLabel1 = new javax.swing.JLabel();
        jMenuBar2 = new javax.swing.JMenuBar();
        menuInventarioArea = new javax.swing.JMenu();
        jMenuItem1 = new javax.swing.JMenuItem();
        menuInventarioEquipo = new javax.swing.JMenuItem();
        menuCronograma = new javax.swing.JMenuItem();
        menuFormatoEntrada = new javax.swing.JMenu();
        menuServiciosRealizados = new javax.swing.JMenuItem();
        menuAltaEquipos = new javax.swing.JMenuItem();
        menuBajaEquipos = new javax.swing.JMenuItem();
        menuTransferenciaEquipos = new javax.swing.JMenuItem();
        jMenuItem2 = new javax.swing.JMenuItem();
        menuEquiposFuera = new javax.swing.JMenuItem();
        menuReimpresion = new javax.swing.JMenuItem();
        FormatosVerificacion = new javax.swing.JMenu();
        VerificacionEquipos = new javax.swing.JMenu();
        VerificacionAreas = new javax.swing.JMenu();
        VerificacionLimpieza = new javax.swing.JMenu();
        menuDirectorioProveedores = new javax.swing.JMenu();
        jMenuItem10 = new javax.swing.JMenuItem();
        menuExtensiones = new javax.swing.JMenuItem();
        menuManuales = new javax.swing.JMenu();
        manualIB = new javax.swing.JMenuItem();
        menuManualU = new javax.swing.JMenuItem();
        ManualesServicio = new javax.swing.JMenuItem();
        FichasTecnicas = new javax.swing.JMenuItem();
        jMenu1 = new javax.swing.JMenu();
        menuDoc = new javax.swing.JMenuItem();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setAlwaysOnTop(true);
        setBackground(new java.awt.Color(255, 255, 255));
        setMinimumSize(new java.awt.Dimension(1082, 768));
        getContentPane().setLayout(null);

        escritorio.setBackground(new java.awt.Color(255, 255, 255));

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/Portada.png"))); // NOI18N

        javax.swing.GroupLayout escritorioLayout = new javax.swing.GroupLayout(escritorio);
        escritorio.setLayout(escritorioLayout);
        escritorioLayout.setHorizontalGroup(
            escritorioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(escritorioLayout.createSequentialGroup()
                .addComponent(jLabel1)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        escritorioLayout.setVerticalGroup(
            escritorioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(escritorioLayout.createSequentialGroup()
                .addComponent(jLabel1)
                .addGap(0, 736, Short.MAX_VALUE))
        );
        escritorio.setLayer(jLabel1, javax.swing.JLayeredPane.DEFAULT_LAYER);

        getContentPane().add(escritorio);
        escritorio.setBounds(0, 0, 1070, 750);

        menuInventarioArea.setText("Inventarios");
        menuInventarioArea.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                menuInventarioAreaActionPerformed(evt);
            }
        });

        jMenuItem1.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_A, java.awt.event.InputEvent.CTRL_MASK));
        jMenuItem1.setText("Consultar Inventario por Áreas");
        jMenuItem1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem1ActionPerformed(evt);
            }
        });
        menuInventarioArea.add(jMenuItem1);

        menuInventarioEquipo.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_E, java.awt.event.InputEvent.CTRL_MASK));
        menuInventarioEquipo.setText("Consultar Inventario por Equipos");
        menuInventarioEquipo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                menuInventarioEquipoActionPerformed(evt);
            }
        });
        menuInventarioArea.add(menuInventarioEquipo);

        menuCronograma.setAccelerator(javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_M, java.awt.event.InputEvent.CTRL_MASK));
        menuCronograma.setText("Cronograma de Mantenimientos Preventivos");
        menuCronograma.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                menuCronogramaActionPerformed(evt);
            }
        });
        menuInventarioArea.add(menuCronograma);

        jMenuBar2.add(menuInventarioArea);

        menuFormatoEntrada.setText("Formatos de Control");

        menuServiciosRealizados.setText("Servicios Realizados");
        menuServiciosRealizados.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                menuServiciosRealizadosActionPerformed(evt);
            }
        });
        menuFormatoEntrada.add(menuServiciosRealizados);

        menuAltaEquipos.setText("Alta de Equipos");
        menuAltaEquipos.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                menuAltaEquiposActionPerformed(evt);
            }
        });
        menuFormatoEntrada.add(menuAltaEquipos);

        menuBajaEquipos.setText("Baja de Equipos");
        menuBajaEquipos.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                menuBajaEquiposActionPerformed(evt);
            }
        });
        menuFormatoEntrada.add(menuBajaEquipos);

        menuTransferenciaEquipos.setText("Transferencia de Equipos");
        menuTransferenciaEquipos.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                menuTransferenciaEquiposActionPerformed(evt);
            }
        });
        menuFormatoEntrada.add(menuTransferenciaEquipos);

        jMenuItem2.setText("Préstamo de Equipos");
        jMenuItem2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem2ActionPerformed(evt);
            }
        });
        menuFormatoEntrada.add(jMenuItem2);

        menuEquiposFuera.setText("Equipos Fuera de Linea");
        menuEquiposFuera.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                menuEquiposFueraActionPerformed(evt);
            }
        });
        menuFormatoEntrada.add(menuEquiposFuera);

        menuReimpresion.setText("Reimpresión de Reportes");
        menuReimpresion.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                menuReimpresionActionPerformed(evt);
            }
        });
        menuFormatoEntrada.add(menuReimpresion);

        jMenuBar2.add(menuFormatoEntrada);

        FormatosVerificacion.setText("Formatos de Verificación");

        VerificacionEquipos.setText("Verificación de Equipos Médicos");
        FormatosVerificacion.add(VerificacionEquipos);

        VerificacionAreas.setText("Verificación de Áreas");
        FormatosVerificacion.add(VerificacionAreas);

        VerificacionLimpieza.setText("Limpieza y Desinfección de Equipo Médico");
        FormatosVerificacion.add(VerificacionLimpieza);

        jMenuBar2.add(FormatosVerificacion);

        menuDirectorioProveedores.setText("Contactos");

        jMenuItem10.setText("Directorio de Proveedores");
        jMenuItem10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem10ActionPerformed(evt);
            }
        });
        menuDirectorioProveedores.add(jMenuItem10);

        menuExtensiones.setText("Directorio de Extensiones");
        menuExtensiones.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                menuExtensionesActionPerformed(evt);
            }
        });
        menuDirectorioProveedores.add(menuExtensiones);

        jMenuBar2.add(menuDirectorioProveedores);

        menuManuales.setText("Manuales");

        manualIB.setText("Manual de Ingeniería Biomédica");
        manualIB.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                manualIBActionPerformed(evt);
            }
        });
        menuManuales.add(manualIB);

        menuManualU.setText("Manuales de Usuario de Equipo Biomédico");
        menuManualU.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                menuManualUActionPerformed(evt);
            }
        });
        menuManuales.add(menuManualU);

        ManualesServicio.setText("Manuales de Servicio de Equipo Biomédico");
        ManualesServicio.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ManualesServicioActionPerformed(evt);
            }
        });
        menuManuales.add(ManualesServicio);

        FichasTecnicas.setText("Fichas Técnicas de Equipo Biomédico");
        FichasTecnicas.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                FichasTecnicasActionPerformed(evt);
            }
        });
        menuManuales.add(FichasTecnicas);

        jMenuBar2.add(menuManuales);

        jMenu1.setText("Documentos");
        jMenu1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenu1ActionPerformed(evt);
            }
        });

        menuDoc.setText("Gestionar Documentos");
        menuDoc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                menuDocActionPerformed(evt);
            }
        });
        jMenu1.add(menuDoc);

        jMenuBar2.add(jMenu1);

        setJMenuBar(jMenuBar2);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void menuCronogramaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_menuCronogramaActionPerformed
      Cronograma Cronograma = new Cronograma();
      this.escritorio.add(Cronograma);
      Cronograma.show();
      escritorio.setDesktopManager(null);
    }//GEN-LAST:event_menuCronogramaActionPerformed

    private void menuInventarioAreaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_menuInventarioAreaActionPerformed
      
    }//GEN-LAST:event_menuInventarioAreaActionPerformed

    private void jMenuItem1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem1ActionPerformed
      
        InventarioArea InventarioPorArea = new InventarioArea();
      this.escritorio.add(InventarioPorArea);
      InventarioPorArea.show();
      escritorio.setDesktopManager(null);
       
    }//GEN-LAST:event_jMenuItem1ActionPerformed

    private void menuInventarioEquipoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_menuInventarioEquipoActionPerformed
       InventarioEquipo InventarioPorEquipo = new InventarioEquipo();
      this.escritorio.add(InventarioPorEquipo);
      InventarioPorEquipo.show();
      escritorio.setDesktopManager(null);
    }//GEN-LAST:event_menuInventarioEquipoActionPerformed

    private void jMenuItem10ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem10ActionPerformed
         Proveedores Proveedores = new Proveedores();
      this.escritorio.add(Proveedores);
      Proveedores.show();
      escritorio.setDesktopManager(null);
    }//GEN-LAST:event_jMenuItem10ActionPerformed

    private void ManualesServicioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ManualesServicioActionPerformed
      ManualesServicio  ManualesServicio = new  ManualesServicio();
      this.escritorio.add( ManualesServicio);
       ManualesServicio.show();
      escritorio.setDesktopManager(null);
    }//GEN-LAST:event_ManualesServicioActionPerformed

    private void FichasTecnicasActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_FichasTecnicasActionPerformed
      FichasTecnicas  FichasTecnicas = new  FichasTecnicas();
      this.escritorio.add( FichasTecnicas);
       FichasTecnicas.show();
      escritorio.setDesktopManager(null);
    }//GEN-LAST:event_FichasTecnicasActionPerformed

    private void menuManualUActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_menuManualUActionPerformed
    
        ManualesUsuario ManualesUsuario = new ManualesUsuario();
      this.escritorio.add(ManualesUsuario);
      ManualesUsuario.show();
      escritorio.setDesktopManager(null);
        
    }//GEN-LAST:event_menuManualUActionPerformed

    private void jMenuItem2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem2ActionPerformed
        FormatoPrestamo FormatoPrestamo = new FormatoPrestamo();
        this.escritorio.add(FormatoPrestamo);
        FormatoPrestamo.show();
        escritorio.setDesktopManager(null);
    }//GEN-LAST:event_jMenuItem2ActionPerformed

    private void menuTransferenciaEquiposActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_menuTransferenciaEquiposActionPerformed
        FormatoTransferencia FormatoTransferencia = new FormatoTransferencia();
        this.escritorio.add(FormatoTransferencia);
        FormatoTransferencia.show();
        escritorio.setDesktopManager(null);
    }//GEN-LAST:event_menuTransferenciaEquiposActionPerformed

    private void menuBajaEquiposActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_menuBajaEquiposActionPerformed
        FormatoBaja FormatoBaja = new FormatoBaja();
        this.escritorio.add(FormatoBaja);
        FormatoBaja.show();
        escritorio.setDesktopManager(null);
    }//GEN-LAST:event_menuBajaEquiposActionPerformed

    private void menuAltaEquiposActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_menuAltaEquiposActionPerformed
        FormatoAlta FormatoAlta = new FormatoAlta();
        this.escritorio.add(FormatoAlta);
        FormatoAlta.show();
        escritorio.setDesktopManager(null);
    }//GEN-LAST:event_menuAltaEquiposActionPerformed

    private void manualIBActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_manualIBActionPerformed
      try {
     File path = new File ("src\\hospital\\Documentos\\Manual Ingenieria Biomedica.pdf");
     Desktop.getDesktop().open(path);
     this.toBack();
     } catch (IOException ex){
     ex.printStackTrace();
     }
    }//GEN-LAST:event_manualIBActionPerformed

    private void menuServiciosRealizadosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_menuServiciosRealizadosActionPerformed
        OrdendeServicio OrdendeServicio = new OrdendeServicio();
        this.escritorio.add(OrdendeServicio);
        OrdendeServicio.show();
        escritorio.setDesktopManager(null);
        
    }//GEN-LAST:event_menuServiciosRealizadosActionPerformed

    private void menuEquiposFueraActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_menuEquiposFueraActionPerformed
EquiposFueradeLinea EquiposFueradeLinea = new EquiposFueradeLinea();
        this.escritorio.add(EquiposFueradeLinea);
        EquiposFueradeLinea.show();
        escritorio.setDesktopManager(null);
        
    }//GEN-LAST:event_menuEquiposFueraActionPerformed

    private void menuReimpresionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_menuReimpresionActionPerformed
        ReimpresionReportes ReimpresionReportes = new ReimpresionReportes();
        this.escritorio.add(ReimpresionReportes);
        ReimpresionReportes.show();
        escritorio.setDesktopManager(null);
    }//GEN-LAST:event_menuReimpresionActionPerformed

    private void menuExtensionesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_menuExtensionesActionPerformed
        Extensiones Extensiones = new Extensiones();
        this.escritorio.add(Extensiones);
        Extensiones.show();
        escritorio.setDesktopManager(null);
    }//GEN-LAST:event_menuExtensionesActionPerformed

    private void jMenu1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenu1ActionPerformed
              
    }//GEN-LAST:event_jMenu1ActionPerformed

    private void menuDocActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_menuDocActionPerformed
       GestionArchivos GestionArchivos = new GestionArchivos();
        this.escritorio.add(GestionArchivos);
        GestionArchivos.show();
        escritorio.setDesktopManager(null);
    }//GEN-LAST:event_menuDocActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Principal().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JMenuItem FichasTecnicas;
    private javax.swing.JMenu FormatosVerificacion;
    private javax.swing.JMenuItem ManualesServicio;
    private javax.swing.JMenu VerificacionAreas;
    private javax.swing.JMenu VerificacionEquipos;
    private javax.swing.JMenu VerificacionLimpieza;
    private javax.swing.JDesktopPane escritorio;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenuBar jMenuBar2;
    private javax.swing.JMenuItem jMenuItem1;
    private javax.swing.JMenuItem jMenuItem10;
    private javax.swing.JMenuItem jMenuItem2;
    private javax.swing.JMenuItem manualIB;
    private javax.swing.JMenuItem menuAltaEquipos;
    private javax.swing.JMenuItem menuBajaEquipos;
    private javax.swing.JMenuItem menuCronograma;
    private javax.swing.JMenu menuDirectorioProveedores;
    private javax.swing.JMenuItem menuDoc;
    private javax.swing.JMenuItem menuEquiposFuera;
    private javax.swing.JMenuItem menuExtensiones;
    private javax.swing.JMenu menuFormatoEntrada;
    private javax.swing.JMenu menuInventarioArea;
    private javax.swing.JMenuItem menuInventarioEquipo;
    private javax.swing.JMenuItem menuManualU;
    private javax.swing.JMenu menuManuales;
    private javax.swing.JMenuItem menuReimpresion;
    private javax.swing.JMenuItem menuServiciosRealizados;
    private javax.swing.JMenuItem menuTransferenciaEquipos;
    // End of variables declaration//GEN-END:variables

    private void MenuVerificacionAreas() {
        DefaultListModel modelo = new DefaultListModel();
        String sDirectorio = "src\\hospital\\Documentos\\Verificacion Areas\\";
        File f = new File(sDirectorio);
        if (f.exists()){ 
     File[] ficheros = f.listFiles();
       for (int x=0;x<ficheros.length;x++){
         JMenuItem items [] = new JMenuItem[ficheros.length];
       items[x] = new JMenuItem(ficheros[x].getName().substring(0, ficheros[x].getName().lastIndexOf(".")));
       VerificacionAreas.add(items[x]);  
      
       items[x].addActionListener(this);
  }
}else{
    JOptionPane.showMessageDialog(this.getParent(), "La carpeta especificada no existe");
    }
    }

    private void MenuVerificacionEquipos() {
 
        DefaultListModel modelo = new DefaultListModel();
        String sDirectorio = "src\\hospital\\Documentos\\Verificacion Equipos\\";
        File f = new File(sDirectorio);
        if (f.exists()){ 
     File[] ficheros = f.listFiles();
       for (int x=0;x<ficheros.length;x++){
         JMenuItem items [] = new JMenuItem[ficheros.length];
       items[x] = new JMenuItem(ficheros[x].getName().substring(0, ficheros[x].getName().lastIndexOf(".")));
       VerificacionEquipos.add(items[x]);  
        items[x].addActionListener(this);
  }
}else{
    JOptionPane.showMessageDialog(this.getParent(), "La carpeta especificada no existe");
    }
    
    }

    private void MenuLimpieza() {
         DefaultListModel modelo = new DefaultListModel();
        String sDirectorio = "src\\hospital\\Documentos\\Limpieza y Desinfeccion\\";
        File f = new File(sDirectorio);
        if (f.exists()){ 
     File[] ficheros = f.listFiles();
       for (int x=0;x<ficheros.length;x++){
         JMenuItem items [] = new JMenuItem[ficheros.length];
       items[x] = new JMenuItem(ficheros[x].getName().substring(0, ficheros[x].getName().lastIndexOf(".")));
       VerificacionLimpieza.add(items[x]);  
        items[x].addActionListener(this);
  }
}else{
    JOptionPane.showMessageDialog(this.getParent(), "La carpeta especificada no existe");
    }
    }


    
    
@Override
    public void actionPerformed(ActionEvent e) {
       int indice =-1;
      String Seleccionado = e.getActionCommand();  
        
      String CEquipos = "src\\hospital\\Documentos\\Verificacion Equipos\\";
      String CAreas = "src\\hospital\\Documentos\\Verificacion Areas\\";
      String CLimpieza = "src\\hospital\\Documentos\\Limpieza y Desinfeccion\\";
       
      File f1 = new File(CEquipos);
        if (f1.exists()){ 
            File[] ficheros1 = f1.listFiles();
            String[] itemsEquipos = new String[ficheros1.length];
            VerificacionEquipos.getMenuComponents();
             for (int i = 0; i < ficheros1.length; i++) {
               itemsEquipos[i] = VerificacionEquipos.getItem(i).getText().toString();
                  }
              indice = (BusquedaSecuencial(itemsEquipos,Seleccionado));
            if (indice != -1) {
               
                
                try {
     File path = new File (ficheros1[indice].getPath());
     Desktop.getDesktop().open(path);
     } catch (IOException ex){     ex.printStackTrace();     }
                
                
            }
        
        }
        
         File f2 = new File(CAreas);
        if (f2.exists()){ 
            File[] ficheros2 = f2.listFiles();
             String[] itemsAreas = new String[ficheros2.length];
             for (int i = 0; i < ficheros2.length; i++) {
             
               itemsAreas[i] = VerificacionAreas.getItem(i).getText().toString();
               }
                indice = (BusquedaSecuencial(itemsAreas,Seleccionado));
            if (indice != -1) {
              
                try {
     File path = new File (ficheros2[indice].getPath());
     Desktop.getDesktop().open(path);
     } catch (IOException ex){     ex.printStackTrace();     }
                
        }
        }
        
      File f3 = new File(CLimpieza);
        if (f3.exists()){ 
            File[] ficheros3 = f3.listFiles();
           String[] itemsLimpieza = new String[ficheros3.length];
             for (int i = 0; i < ficheros3.length; i++) {
             
               itemsLimpieza[i] = VerificacionLimpieza.getItem(i).getText().toString();
                 }
                indice = (BusquedaSecuencial(itemsLimpieza,Seleccionado));
            if (indice != -1) {
             
                try {
     File path = new File (ficheros3[indice].getPath());
     Desktop.getDesktop().open(path);
     } catch (IOException ex){     ex.printStackTrace();     }
                
        }
        }
        
    
    }

       
       
    
        public static  int BusquedaSecuencial(String vector[], String Elem){
            for (int i = 0; i < vector.length; ++i){
                if (vector[i].equals(Elem)){
                    return i;
                }
            }
            return -1;
        }
       
       
    }

 

