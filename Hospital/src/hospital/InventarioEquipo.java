package hospital;

import Clases.Equipo;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Toolkit;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;
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


public class InventarioEquipo extends javax.swing.JInternalFrame {
        
      DefaultTableModel modelo;
    int aux;
   public static String n;
   
    
Scanner Scanner = new Scanner(System.in);
    public InventarioEquipo() {
        
         this.getContentPane().setBackground(Color.white);
        initComponents();
        txtEntrada.setText(n);
        
    }

    public void ActivarTable(String n) {
       
        
        tblConsulta.setVisible(true);
        String[] titulo = {"No. Control", "Descripción", "Marca", "Modelo", "Serie","Accesorios","Área"};
        String[] registro = new String[7];
        String sSQL = "";
      
        modelo = new DefaultTableModel(null, titulo);
        
        String opcion="";
       
        if(btnDescripcion.isSelected()==true){
            opcion=btnDescripcion.getText();
             sSQL = "select * from equipos,areas where "+opcion+" like '%"+n+"%' and equipos.Area = areas.IDArea order by NControl ";
       
        ;}
        
        if(btnMarca.isSelected()==true){
            opcion=btnMarca.getText();
             sSQL = "select * from equipos,areas where "+opcion+" like '%"+n+"%' and equipos.Area = areas.IDArea order by NControl ";
       
        ;}
        
        if(btnModelo.isSelected()==true){
            opcion=btnModelo.getText();
             sSQL = "select * from equipos,areas where "+opcion+" like '%"+n+"%' and equipos.Area = areas.IDArea order by NControl ";
       
        }
        
        if(btnNS.isSelected()==true){
            opcion=btnNS.getText();
             sSQL = "select * from equipos,areas where NS = '"+n+"' and equipos.Area = areas.IDArea order by NControl ";
      
        }
        
         
        ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
        try {
            
            
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sSQL);

            while (rs.next()) {
                registro[0] = rs.getString("NControl");
                registro[1] = rs.getString("Descripcion");
                registro[2] = rs.getString("Marca");
                registro[3] = rs.getString("Modelo");
                registro[4] = rs.getString("NS");
                registro[5] = rs.getString("Accesorios");
                registro[6] = rs.getString("areas.Area");
                modelo.addRow(registro);
               
            }
            tblConsulta.setModel(modelo);
             int N =0;
            N = tblConsulta.getRowCount();
            lblElementos.setText(N+" elementos han sido encontrados en su búsqueda");

        } catch (SQLException ex) {
            Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        txtEntrada = new javax.swing.JTextField();
        btnBusqueda = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblConsulta = new javax.swing.JTable();
        jPanel2 = new javax.swing.JPanel();
        btnDescripcion = new javax.swing.JRadioButton();
        btnMarca = new javax.swing.JRadioButton();
        btnModelo = new javax.swing.JRadioButton();
        btnNS = new javax.swing.JRadioButton();
        btnBusquedas = new javax.swing.JButton();
        lblElementos = new javax.swing.JLabel();
        btnReporte = new javax.swing.JButton();

        setBackground(new java.awt.Color(255, 255, 255));
        setClosable(true);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        setTitle("Consultar Inventarios por Equipos");

        jLabel4.setFont(new java.awt.Font("Calibri", 0, 36)); // NOI18N
        jLabel4.setText("Hospital Ángeles Tampico");

        jLabel5.setFont(new java.awt.Font("Calibri", 0, 24)); // NOI18N
        jLabel5.setText("Departamento de Ingeniería Biomédica");

        jLabel6.setFont(new java.awt.Font("Calibri", 0, 14)); // NOI18N
        jLabel6.setText("Ing. Victor Hugo Hernández Hernández");

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/IngBiomedica.jpg"))); // NOI18N

        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/HAngeles.jpg"))); // NOI18N

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "CONSULTAR INVENTARIOS POR EQUIPOS", javax.swing.border.TitledBorder.CENTER, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Calibri", 1, 24), new java.awt.Color(0, 0, 255))); // NOI18N
        jPanel1.setForeground(new java.awt.Color(255, 255, 255));

        txtEntrada.setToolTipText("Ingrese la información de su búsqueda");

        btnBusqueda.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        btnBusqueda.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/buscar.png"))); // NOI18N
        btnBusqueda.setText("Buscar");
        btnBusqueda.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBusquedaActionPerformed(evt);
            }
        });

        tblConsulta.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null}
            },
            new String [] {
                "No. Control", "Descripción", "Marca", "Modelo", "Serie", "Accesorios", "Área"
            }
        ));
        jScrollPane1.setViewportView(tblConsulta);
        if (tblConsulta.getColumnModel().getColumnCount() > 0) {
            tblConsulta.getColumnModel().getColumn(0).setMinWidth(100);
            tblConsulta.getColumnModel().getColumn(0).setPreferredWidth(100);
            tblConsulta.getColumnModel().getColumn(0).setMaxWidth(100);
        }

        jPanel2.setBackground(new java.awt.Color(255, 255, 255));
        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "Búsqueda por:"));
        jPanel2.setToolTipText("Seleccione una opción a buscar");

        btnDescripcion.setBackground(new java.awt.Color(255, 255, 255));
        buttonGroup1.add(btnDescripcion);
        btnDescripcion.setSelected(true);
        btnDescripcion.setText("Descripcion");

        btnMarca.setBackground(new java.awt.Color(255, 255, 255));
        buttonGroup1.add(btnMarca);
        btnMarca.setText("Marca");
        btnMarca.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnMarcaActionPerformed(evt);
            }
        });

        btnModelo.setBackground(new java.awt.Color(255, 255, 255));
        buttonGroup1.add(btnModelo);
        btnModelo.setText("Modelo");

        btnNS.setBackground(new java.awt.Color(255, 255, 255));
        buttonGroup1.add(btnNS);
        btnNS.setText("Numero de Serie");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnDescripcion)
                    .addComponent(btnMarca)
                    .addComponent(btnModelo)
                    .addComponent(btnNS))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(btnDescripcion)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnMarca)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnModelo)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 1, Short.MAX_VALUE)
                .addComponent(btnNS))
        );

        btnBusquedas.setFont(new java.awt.Font("Calibri", 1, 14)); // NOI18N
        btnBusquedas.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/Equipos/Busquedas.png"))); // NOI18N
        btnBusquedas.setText("Busquedas más frecuentes:");
        btnBusquedas.setToolTipText("");
        btnBusquedas.setIconTextGap(10);
        btnBusquedas.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBusquedasActionPerformed(evt);
            }
        });

        btnReporte.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        btnReporte.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/Inventarios.png"))); // NOI18N
        btnReporte.setText("Generar Reporte");
        btnReporte.setEnabled(false);
        btnReporte.setIconTextGap(10);
        btnReporte.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnReporteActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(12, 12, 12)
                                .addComponent(txtEntrada, javax.swing.GroupLayout.PREFERRED_SIZE, 310, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(btnBusqueda)
                                .addGap(229, 229, 229))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                .addGap(306, 306, 306)
                                .addComponent(btnBusquedas)
                                .addGap(29, 29, 29)))
                        .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 233, Short.MAX_VALUE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jScrollPane1)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(lblElementos)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(btnReporte)
                                .addGap(382, 382, 382)))))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(33, 33, 33)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(btnBusqueda)
                            .addComponent(txtEntrada, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(btnBusquedas))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(18, 18, 18)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 268, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(lblElementos)
                        .addContainerGap())
                    .addComponent(btnReporte, javax.swing.GroupLayout.Alignment.TRAILING)))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 390, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 380, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(134, 134, 134)
                        .addComponent(jLabel1))
                    .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 230, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel2)
                .addGap(53, 53, 53))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(0, 0, 0)
                                .addComponent(jLabel5))
                            .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(0, 0, 0)
                        .addComponent(jLabel6))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(36, 36, 36)
                        .addComponent(jLabel2)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 34, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnBusquedaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBusquedaActionPerformed
        String entrada =txtEntrada.getText();
       
        ActivarTable(entrada);
        
        txtEntrada.setText(entrada); 
        btnReporte.setEnabled(true);
    }//GEN-LAST:event_btnBusquedaActionPerformed

    private void btnMarcaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnMarcaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnMarcaActionPerformed

    private void btnBusquedasActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBusquedasActionPerformed
        Busquedas Busquedas = new Busquedas();
       
        Dimension pantalla = Toolkit.getDefaultToolkit().getScreenSize();
        Dimension ventana = this.getSize();
        int x = (int)((int)(pantalla.width-ventana.width)/1.5);
        int y = ((ventana.height+pantalla.height)/10);
        Busquedas.setLocation(x, y);
          
       
   
      this.getParent().add(Busquedas);
     Busquedas.setVisible(true);
      Busquedas.toFront();
      
      Busquedas.show();
      
 
     
    }//GEN-LAST:event_btnBusquedasActionPerformed

    
    
    private void btnReporteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnReporteActionPerformed
   JasperReport jr = null;
    ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
        if (btnDescripcion.isSelected()) {
         String archivo = "src\\hospital\\Reportes\\ReporteEquiposDescripcion.jasper";
          try {
              Map parametro = new HashMap();
              parametro.put("pDescripcion",txtEntrada.getText());
              jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
              JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
              JasperViewer.viewReport(jp,false);
//              JasperViewer jv = new JasperViewer(jp);
//              jv.setVisible(true);
          } catch (JRException ex) {
              Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
          }
        }
        
         if (btnMarca.isSelected()) {
         String archivo = "src\\hospital\\Reportes\\ReporteEquiposMarca.jasper";
          try {
              Map parametro = new HashMap();
              parametro.put("pMarca",txtEntrada.getText());
              jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
              JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
              JasperViewer.viewReport(jp,false);
//              JasperViewer jv = new JasperViewer(jp);
//              jv.setVisible(true);
          } catch (JRException ex) {
              Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
          }
        }
        
        if (btnModelo.isSelected()) {
         String archivo = "src\\hospital\\Reportes\\ReporteEquiposModelo.jasper";
          try {
              Map parametro = new HashMap();
              parametro.put("pModelo",txtEntrada.getText());
              jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
              JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
              JasperViewer.viewReport(jp,false);
//              JasperViewer jv = new JasperViewer(jp);
//              jv.setVisible(true);
          } catch (JRException ex) {
              Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
          }
        }
        
        if (btnNS.isSelected()) {
         String archivo = "src\\hospital\\Reportes\\ReporteEquiposNS.jasper";
          try {
              Map parametro = new HashMap();
              parametro.put("pNS",txtEntrada.getText());
              jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
              JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
              JasperViewer.viewReport(jp,false);
//              JasperViewer jv = new JasperViewer(jp);
//              jv.setVisible(true);
          } catch (JRException ex) {
              Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
          }
        }
        
    }//GEN-LAST:event_btnReporteActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnBusqueda;
    public javax.swing.JButton btnBusquedas;
    private javax.swing.JRadioButton btnDescripcion;
    private javax.swing.JRadioButton btnMarca;
    private javax.swing.JRadioButton btnModelo;
    private javax.swing.JRadioButton btnNS;
    private javax.swing.JButton btnReporte;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel lblElementos;
    private javax.swing.JTable tblConsulta;
    public static javax.swing.JTextField txtEntrada;
    // End of variables declaration//GEN-END:variables
}
