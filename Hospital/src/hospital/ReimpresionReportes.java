/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hospital;

import java.awt.Dimension;
import java.awt.Point;
import java.awt.Toolkit;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.view.JasperViewer;

/**
 *
 * @author Usuario
 */
public class ReimpresionReportes extends javax.swing.JInternalFrame {
String accion = "";
   
    public ReimpresionReportes() {
        initComponents();
        agrupar();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        jPanel1 = new javax.swing.JPanel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        lblDirectorio = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        tblConsulta = new javax.swing.JTable();
        jPanel2 = new javax.swing.JPanel();
        altas = new javax.swing.JRadioButton();
        bajas = new javax.swing.JRadioButton();
        transferencias = new javax.swing.JRadioButton();
        servicios = new javax.swing.JRadioButton();
        prestamos = new javax.swing.JRadioButton();

        setClosable(true);
        setIconifiable(true);
        setTitle("Reimpresión de Reportes");

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));

        jLabel4.setFont(new java.awt.Font("Calibri", 0, 36)); // NOI18N
        jLabel4.setText("Hospital Ángeles Tampico");

        jLabel5.setFont(new java.awt.Font("Calibri", 0, 24)); // NOI18N
        jLabel5.setText("Departamento de Ingeniería Biomédica");

        jLabel6.setFont(new java.awt.Font("Calibri", 0, 14)); // NOI18N
        jLabel6.setText("Ing. Victor Hugo Hernández Hernández");

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/IngBiomedica.jpg"))); // NOI18N

        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/HAngeles.jpg"))); // NOI18N

        lblDirectorio.setFont(new java.awt.Font("Calibri", 0, 14)); // NOI18N

        jLabel8.setFont(new java.awt.Font("Calibri", 0, 24)); // NOI18N
        jLabel8.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel8.setText("Reimpresión de Reportes");

        tblConsulta.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        tblConsulta.setEnabled(false);
        tblConsulta.setShowVerticalLines(false);
        tblConsulta.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblConsultaMouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(tblConsulta);

        jPanel2.setBackground(new java.awt.Color(255, 255, 255));
        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "Reportes de Control"));
        jPanel2.setToolTipText("Formatos de Control");

        altas.setBackground(new java.awt.Color(255, 255, 255));
        altas.setText("Reportes de Alta");
        altas.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                altasActionPerformed(evt);
            }
        });

        bajas.setBackground(new java.awt.Color(255, 255, 255));
        bajas.setText("Reportes de Baja");
        bajas.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bajasActionPerformed(evt);
            }
        });

        transferencias.setBackground(new java.awt.Color(255, 255, 255));
        transferencias.setText("Reportes de Transferencia");
        transferencias.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                transferenciasActionPerformed(evt);
            }
        });

        servicios.setBackground(new java.awt.Color(255, 255, 255));
        servicios.setText("Reportes de Servicios");
        servicios.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                serviciosActionPerformed(evt);
            }
        });

        prestamos.setBackground(new java.awt.Color(255, 255, 255));
        prestamos.setText("Reportes de Préstamo");
        prestamos.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                prestamosActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(altas)
                    .addComponent(bajas)
                    .addComponent(transferencias)
                    .addComponent(servicios)
                    .addComponent(prestamos)))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(altas)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(bajas)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(transferencias)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(prestamos)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(servicios)
                .addContainerGap(26, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 390, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 380, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 230, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(124, 124, 124)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel2))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(466, 466, 466)
                        .addComponent(lblDirectorio, javax.swing.GroupLayout.PREFERRED_SIZE, 274, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(3, 3, 3)
                        .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(76, 76, 76)
                                .addComponent(jLabel8, javax.swing.GroupLayout.PREFERRED_SIZE, 390, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 777, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(43, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(0, 0, 0)
                                .addComponent(jLabel5))
                            .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(0, 0, 0)
                        .addComponent(jLabel6))
                    .addComponent(jLabel2))
                .addGap(0, 0, 0)
                .addComponent(lblDirectorio)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(37, 37, 37)
                        .addComponent(jLabel8)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(62, 62, 62)
                        .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(89, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void tblConsultaMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblConsultaMouseClicked
        Point point = evt.getPoint();
        int row = tblConsulta.rowAtPoint(point);

        String Folio = ""+tblConsulta.getValueAt(row, 0);

        if (evt.getClickCount() == 2) {

            //JOptionPane.showMessageDialog(this, "Accion: "+accion+"\nFolio: "+Folio);
            EjecutarReporte(Folio);
        }
    }//GEN-LAST:event_tblConsultaMouseClicked

    private void bajasActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bajasActionPerformed
       accion = "bajas";
      //  JOptionPane.showMessageDialog(this, accion);
        ActivarTableBaja(accion);
    }//GEN-LAST:event_bajasActionPerformed

    private void altasActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_altasActionPerformed
    accion = "altas";
     //   JOptionPane.showMessageDialog(this,accion );
        ActivarTableAlta(accion);
    }//GEN-LAST:event_altasActionPerformed

    private void transferenciasActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_transferenciasActionPerformed
       accion = "transferencias";
      //  JOptionPane.showMessageDialog(this,accion );
        ActivarTableTransferencia(accion);
    }//GEN-LAST:event_transferenciasActionPerformed

    private void prestamosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_prestamosActionPerformed
      accion = "prestamos";
       // JOptionPane.showMessageDialog(this,accion );
        ActivarTablePrestamo(accion);
    }//GEN-LAST:event_prestamosActionPerformed

    private void serviciosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_serviciosActionPerformed
        accion = "servicios";
        //JOptionPane.showMessageDialog(this,accion );
        ActivarTableServicio(accion);
    }//GEN-LAST:event_serviciosActionPerformed

public void agrupar(){
     buttonGroup1.add(altas);
      buttonGroup1.add(bajas);
       buttonGroup1.add(prestamos);
        buttonGroup1.add(transferencias);
    buttonGroup1.add(servicios);
}

 public void ActivarTableAlta(String Accion) {
        tblConsulta.setVisible(true);
        String[] titulo = {"Folio", "Fecha", "Equipo", "Observaciones"};
        String[] registro = new String[4];
        DefaultTableModel modelo = new DefaultTableModel(null, titulo);
        String sSQL = "select Folio, Fecha, Equipo, Observaciones from "+Accion+";";
        ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
        try {
         Statement st = cn.createStatement();
         ResultSet rs = st.executeQuery(sSQL);
         while (rs.next()) {
                registro[0] = rs.getString("Folio");
                registro[1] = rs.getString("Fecha");
                registro[2] = rs.getString("Equipo");
                registro[3] = rs.getString("Observaciones");
            modelo.addRow(registro);
        }
        tblConsulta.setModel(modelo);
        } catch (SQLException ex) {
            Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
        }
}
 
  public void ActivarTableBaja(String Accion) {
        tblConsulta.setVisible(true);
        String[] titulo = {"Folio", "Fecha", "Equipo", "Motivo de la baja", "Destino del Equipo","Observaciones"};
        String[] registro = new String[6];
        DefaultTableModel modelo = new DefaultTableModel(null, titulo);
        String sSQL = "select * from "+Accion+";";
        ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
        try {
         Statement st = cn.createStatement();
         ResultSet rs = st.executeQuery(sSQL);
         while (rs.next()) {
                registro[0] = rs.getString("Folio");
                registro[1] = rs.getString("Fecha");
                registro[2] = rs.getString("Equipo");
                registro[3] = rs.getString("Motivo");
                registro[4] = rs.getString("Destino");
                registro[5] = rs.getString("Observaciones");
            modelo.addRow(registro);
        }
        tblConsulta.setModel(modelo);
        } catch (SQLException ex) {
            Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
        }
}
  
   public void ActivarTableTransferencia(String Accion) {
        tblConsulta.setVisible(true);
        String[] titulo = {"Folio", "Fecha", "Equipo", "NS", "Presta",  "Responsable P.", "Solicita","Responsable S." };
        String[] registro = new String[8];
        DefaultTableModel modelo = new DefaultTableModel(null, titulo);
        String sSQL = "select * from "+Accion+";";
        ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
        try {
         Statement st = cn.createStatement();
         ResultSet rs = st.executeQuery(sSQL);
         while (rs.next()) {
                registro[0] = rs.getString("Folio");
                registro[1] = rs.getString("Fecha");
                registro[2] = rs.getString("Equipo");
                registro[3] = rs.getString("NS");
                registro[4] = rs.getString("DepartamentoP");
                registro[5] = rs.getString("ResponsableP");
                registro[6] = rs.getString("DepartamentoS");
                registro[7] = rs.getString("ResponsableS");
                
            modelo.addRow(registro);
        }
        tblConsulta.setModel(modelo);
        } catch (SQLException ex) {
            Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
        }
}
   
    public void ActivarTablePrestamo(String Accion) {
        tblConsulta.setVisible(true);
         String[] titulo = {"Folio", "Fecha", "Equipo", "NS", "Presta",  "Responsable P.", "Solicita","Responsable S." };
        String[] registro = new String[8];
        DefaultTableModel modelo = new DefaultTableModel(null, titulo);
        String sSQL = "select * from "+Accion+";";
        ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
        try {
         Statement st = cn.createStatement();
         ResultSet rs = st.executeQuery(sSQL);
         while (rs.next()) {
               registro[0] = rs.getString("Folio");
                registro[1] = rs.getString("Fecha");
                registro[2] = rs.getString("Equipo");
                registro[3] = rs.getString("NS");
                registro[4] = rs.getString("DepartamentoP");
                registro[5] = rs.getString("ResponsableP");
                registro[6] = rs.getString("DepartamentoS");
                registro[7] = rs.getString("ResponsableS");
            modelo.addRow(registro);
        }
        tblConsulta.setModel(modelo);
        } catch (SQLException ex) {
            Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
        }
}


 public void ActivarTableServicio(String Accion) {
        tblConsulta.setVisible(true);
        String[] titulo = {"Folio", "Fecha Solicitud", "Fecha Terminacion", "Equipo", "Falla", "Servicio", "Observaciones"};
        String[] registro = new String[7];
        DefaultTableModel modelo = new DefaultTableModel(null, titulo);
        String sSQL = "select * from "+Accion+";";
        ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
        try {
         Statement st = cn.createStatement();
         ResultSet rs = st.executeQuery(sSQL);
         while (rs.next()) {
                registro[0] = rs.getString("Folio");
                registro[1] = rs.getString("FechaSolicitud");
                registro[2] = rs.getString("FechaTerminacion");
                registro[3] = rs.getString("Equipo");
                registro[4] = rs.getString("Falla");
                registro[5] = rs.getString("TrabajoRealizado");
                registro[6] = rs.getString("Observaciones");
            modelo.addRow(registro);
        }
        tblConsulta.setModel(modelo);
        } catch (SQLException ex) {
            Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
        }
}

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JRadioButton altas;
    private javax.swing.JRadioButton bajas;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JLabel lblDirectorio;
    private javax.swing.JRadioButton prestamos;
    private javax.swing.JRadioButton servicios;
    private javax.swing.JTable tblConsulta;
    private javax.swing.JRadioButton transferencias;
    // End of variables declaration//GEN-END:variables

   private void EjecutarReporte(String Control) {

    JasperReport jr = null;
    ConeccionSQL mysql = new ConeccionSQL();
    Connection cn = mysql.Conectar();
      
          if (accion == "altas"){
          String archivo = "src\\hospital\\Reportes\\ReporteAlta.jasper";
          try {
              Map parametro = new HashMap();
              parametro.put("pFolio",Integer.parseInt(Control));
              jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
              JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
              JasperViewer.viewReport(jp,false);
//              JasperViewer jv = new JasperViewer(jp);
//              jv.setVisible(true);
          } catch (JRException ex) {
              JOptionPane.showMessageDialog(this, ex.toString());
             // Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
          }
          }
          
        if (accion == "transferencias"){
          String archivo = "src\\hospital\\Reportes\\ReporteTransferencia.jasper";
          try {
              Map parametro = new HashMap();
              parametro.put("pFolio",Integer.parseInt(Control));
              jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
              JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
              JasperViewer.viewReport(jp,false);
//              JasperViewer jv = new JasperViewer(jp);
//              jv.setVisible(true);
          } catch (JRException ex) {
               JOptionPane.showMessageDialog(this, ex.toString());
              Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
          }
          }
   
        if (accion == "prestamos"){
          String archivo = "src\\hospital\\Reportes\\ReportePrestamo.jasper";
          try {
              Map parametro = new HashMap();
              parametro.put("pFolio",Integer.parseInt(Control));
              jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
              JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
              JasperViewer.viewReport(jp,false);
////              JasperViewer jv = new JasperViewer(jp);
////              jv.setVisible(true);
          } catch (JRException ex) {
               JOptionPane.showMessageDialog(this, ex.toString());
              Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
          }
          }
        
         if (accion == "servicios"){
          String archivo = "src\\hospital\\Reportes\\ReporteServicio.jasper";
          try {
              Map parametro = new HashMap();
              parametro.put("pFolio",Integer.parseInt(Control));
              jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
              JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
              JasperViewer.viewReport(jp,false);
//              JasperViewer jv = new JasperViewer(jp);
//              jv.setVisible(true);
          } catch (JRException ex) {
               JOptionPane.showMessageDialog(this, ex.toString());
              Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
          }
          }
         
        if (accion == "bajas"){
          String archivo = "src\\hospital\\Reportes\\ReporteBaja.jasper";
          try {
              Map parametro = new HashMap();
              parametro.put("pFolio",Integer.parseInt(Control));
              jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
              JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
              JasperViewer.viewReport(jp,false);
//              JasperViewer jv = new JasperViewer(jp);
//              jv.setVisible(true);
          } catch (JRException ex) {
               JOptionPane.showMessageDialog(this, ex.toString());
              Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
          }
          }
   
   }
}
