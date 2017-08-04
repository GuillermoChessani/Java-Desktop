/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hospital;

import java.awt.Color;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ButtonGroup;
import javax.swing.JCheckBox;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.view.JasperViewer;


public class InventarioArea extends javax.swing.JInternalFrame {
        ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
   DefaultTableModel modelo;
   int TipoReporte = 0;
   
    public InventarioArea() {
        this.getContentPane().setBackground(Color.white);
        initComponents();
      buttonGroup1.add(Propiedad);
       buttonGroup1.add(Comodato);
        cargarDepartamentos();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblConsulta = new javax.swing.JTable();
        cmbDepartamento = new javax.swing.JComboBox();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        cmbArea = new javax.swing.JComboBox();
        btnBusqueda = new javax.swing.JButton();
        lblElementos = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        Propiedad = new javax.swing.JCheckBox();
        Comodato = new javax.swing.JCheckBox();
        btnReporte = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();

        setBackground(new java.awt.Color(255, 255, 255));
        setClosable(true);
        setForeground(java.awt.Color.white);
        setIconifiable(true);
        setResizable(true);
        setTitle("Consultar Inventarios por Área");

        jLabel4.setFont(new java.awt.Font("Calibri", 0, 36)); // NOI18N
        jLabel4.setText("Hospital Ángeles Tampico");

        jLabel5.setFont(new java.awt.Font("Calibri", 0, 24)); // NOI18N
        jLabel5.setText("Departamento de Ingeniería Biomédica");

        jLabel6.setFont(new java.awt.Font("Calibri", 0, 14)); // NOI18N
        jLabel6.setText("Ing. Victor Hugo Hernández Hernández");

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/IngBiomedica.jpg"))); // NOI18N

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "CONSULTAR INVENTARIOS POR ÁREAS", javax.swing.border.TitledBorder.CENTER, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Calibri", 1, 24), new java.awt.Color(0, 0, 255))); // NOI18N
        jPanel1.setForeground(new java.awt.Color(255, 255, 255));

        tblConsulta.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null}
            },
            new String [] {
                "No. Control", "Descripción", "Marca", "Modelo", "Serie", "Accesorios"
            }
        ));
        jScrollPane1.setViewportView(tblConsulta);

        cmbDepartamento.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cmbDepartamentoItemStateChanged(evt);
            }
        });
        cmbDepartamento.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cmbDepartamentoActionPerformed(evt);
            }
        });

        jLabel8.setText("Departamento:");

        jLabel9.setText("Área:");

        cmbArea.setEnabled(false);

        btnBusqueda.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        btnBusqueda.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/buscar.png"))); // NOI18N
        btnBusqueda.setText("Buscar");
        btnBusqueda.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBusquedaActionPerformed(evt);
            }
        });

        lblElementos.setText(" ");

        jPanel2.setBackground(new java.awt.Color(255, 255, 255));
        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "Búsqueda por:"));

        Propiedad.setBackground(new java.awt.Color(255, 255, 255));
        Propiedad.setSelected(true);
        Propiedad.setText("Equipos Propiedad del Hospital");
        Propiedad.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                PropiedadActionPerformed(evt);
            }
        });

        Comodato.setBackground(new java.awt.Color(255, 255, 255));
        Comodato.setText("Equipos en Comodato");
        Comodato.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ComodatoActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(Propiedad)
                    .addComponent(Comodato))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(Propiedad)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(Comodato))
        );

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
                        .addContainerGap()
                        .addComponent(jScrollPane1))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(75, 75, 75)
                                .addComponent(jLabel8)
                                .addGap(27, 27, 27)
                                .addComponent(cmbDepartamento, javax.swing.GroupLayout.PREFERRED_SIZE, 231, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(147, 147, 147)
                                .addComponent(jLabel9)
                                .addGap(18, 18, 18)
                                .addComponent(cmbArea, javax.swing.GroupLayout.PREFERRED_SIZE, 216, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(lblElementos, javax.swing.GroupLayout.PREFERRED_SIZE, 323, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(0, 202, Short.MAX_VALUE)))
                .addContainerGap())
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(btnBusqueda, javax.swing.GroupLayout.PREFERRED_SIZE, 141, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(191, 191, 191)
                        .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(94, 94, 94))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(btnReporte)
                        .addGap(410, 410, 410))))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addGap(23, 23, 23)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cmbArea, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel9)
                    .addComponent(cmbDepartamento, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel8))
                .addGap(19, 19, 19)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnBusqueda))
                .addGap(18, 18, 18)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 264, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(lblElementos)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnReporte)
                .addGap(9, 9, 9))
        );

        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/HAngeles.jpg"))); // NOI18N

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 390, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 380, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(134, 134, 134)
                                .addComponent(jLabel1))
                            .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 230, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 183, Short.MAX_VALUE)
                        .addComponent(jLabel2)
                        .addGap(33, 33, 33))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(0, 0, 0)
                                .addComponent(jLabel5))
                            .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(0, 0, 0)
                        .addComponent(jLabel6))
                    .addComponent(jLabel2))
                .addGap(18, 18, 18)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void cmbDepartamentoItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cmbDepartamentoItemStateChanged
    cmbArea.setEnabled(true);
    cmbArea.removeAllItems();
       if(cmbDepartamento.getSelectedIndex()>-1){
           cargarAreas();
        }
       
    }//GEN-LAST:event_cmbDepartamentoItemStateChanged
    
    private void cmbDepartamentoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cmbDepartamentoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_cmbDepartamentoActionPerformed

    private void btnBusquedaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBusquedaActionPerformed
       String Departamento = cmbDepartamento.getSelectedItem().toString();
       String Area = cmbArea.getSelectedItem().toString();
       ActivarTable(Departamento, Area);
       JOptionPane.showMessageDialog(this,"Area: " +Area+ "\nDepartamento: "+Departamento);
       btnReporte.setEnabled(true);
    }//GEN-LAST:event_btnBusquedaActionPerformed

    private void PropiedadActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_PropiedadActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_PropiedadActionPerformed

    public int TipodeReporte(int TipoReporte){
            String Departamento ="";
            String Area ="";
            Departamento = cmbDepartamento.getSelectedItem().toString();
            Area = cmbArea.getSelectedItem().toString();
            if (true==Propiedad.isSelected()) {
                if (Area.equals(Departamento)){
                TipoReporte = 1; 
                   } else {
                 TipoReporte = 2; 
                   }
    }
        if (true==Comodato.isSelected()) {
                if (Area.equals(Departamento)){
                TipoReporte = 3; 
                  } else {
                 TipoReporte = 4; 
               }
    }
            return TipoReporte;
    }
    
    private void btnReporteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnReporteActionPerformed
            String Departamento ="";
            String Area ="";
            String archivo ="" ;
            Departamento = cmbDepartamento.getSelectedItem().toString();
            Area = cmbArea.getSelectedItem().toString();
        JasperReport jr = null;
        ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
         
        System.out.println(TipoReporte);
        int TR = TipodeReporte(TipoReporte);
       
        switch (TR) {
            case 1: // Equipo en Propiedad del Hospital, pero Combobox Iguales
                archivo = "src\\hospital\\Reportes\\ReporteAreasPropiedad.jasper";
            try {
                Map parametro = new HashMap();
                parametro.put("pDepartamento",Departamento);
                jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
                JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
                JasperViewer.viewReport(jp,false);
//                JasperViewer jv = new JasperViewer(jp);
//                jv.setVisible(true);
            } catch (JRException ex) {
                Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
            }
            break;
            case 2: // Equipo en Propiedad del Hospital, pero Combobox Diferentes
                archivo = "src\\hospital\\Reportes\\ReporteDepartamentosPropiedad.jasper";
            try {
                Map parametro = new HashMap();
                parametro.put("pDepartamento",Departamento);
                parametro.put("pArea",Area);
                jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
                JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
                JasperViewer.viewReport(jp,false);
//                JasperViewer jv = new JasperViewer(jp);
//                jv.setVisible(true);
            } catch (JRException ex) {
                Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
            }
             break;
            case 3: // Equipo en Comodato del Hospital, pero Combobox Iguales
               archivo = "src\\hospital\\Reportes\\ReporteAreasenComodato.jasper";
            try {
                Map parametro = new HashMap();
                parametro.put("pDepartamento",Departamento);
                jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
                JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
                JasperViewer.viewReport(jp,false);
//                JasperViewer jv = new JasperViewer(jp);
//                jv.setVisible(true);
            } catch (JRException ex) {
                Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
            }
             break;
            case 4: // Equipo en Propiedad del Hospital, pero Combobox Iguales
               archivo = "src\\hospital\\Reportes\\ReporteDepartamentosComodato.jasper";
            try {
                Map parametro = new HashMap();
                parametro.put("pDepartamento",Departamento);
                parametro.put("pArea",Area);
                jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
                JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
                JasperViewer.viewReport(jp,false);
//                JasperViewer jv = new JasperViewer(jp);
//                jv.setVisible(true);
            } catch (JRException ex) {
                Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
            }
             break;
        }  
        
//        if (btnDescripcion.isSelected()) {
//            String archivo = "C:\\Users\\Usuario\\Documents\\NetBeansProjects\\Hospital\\src\\hospital\\Reportes\\ReporteEquiposDescripcion.jasper";
//            try {
//                Map parametro = new HashMap();
//                parametro.put("pDescripcion",txtEntrada.getText());
//                jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
//                JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
//                JasperViewer jv = new JasperViewer(jp);
//                jv.setVisible(true);
//            } catch (JRException ex) {
//                Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
//            }
//        }
//
//        if (btnMarca.isSelected()) {
//            String archivo = "C:\\Users\\Usuario\\Documents\\NetBeansProjects\\Hospital\\src\\hospital\\Reportes\\ReporteEquiposMarca.jasper";
//            try {
//                Map parametro = new HashMap();
//                parametro.put("pMarca",txtEntrada.getText());
//                jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
//                JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
//                JasperViewer jv = new JasperViewer(jp);
//                jv.setVisible(true);
//            } catch (JRException ex) {
//                Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
//            }
//        }
//
//        if (btnModelo.isSelected()) {
//            String archivo = "C:\\Users\\Usuario\\Documents\\NetBeansProjects\\Hospital\\src\\hospital\\Reportes\\ReporteEquiposModelo.jasper";
//            try {
//                Map parametro = new HashMap();
//                parametro.put("pModelo",txtEntrada.getText());
//                jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
//                JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
//                JasperViewer jv = new JasperViewer(jp);
//                jv.setVisible(true);
//            } catch (JRException ex) {
//                Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
//            }
//        }
//
//        if (btnNS.isSelected()) {
//            String archivo = "C:\\Users\\Usuario\\Documents\\NetBeansProjects\\Hospital\\src\\hospital\\Reportes\\ReporteEquiposNS.jasper";
//            try {
//                Map parametro = new HashMap();
//                parametro.put("pNS",txtEntrada.getText());
//                jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
//                JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
//                JasperViewer jv = new JasperViewer(jp);
//                jv.setVisible(true);
//            } catch (JRException ex) {
//                Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
//            }
//        }

    }//GEN-LAST:event_btnReporteActionPerformed

    private void ComodatoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ComodatoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_ComodatoActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JCheckBox Comodato;
    private javax.swing.JCheckBox Propiedad;
    private javax.swing.JButton btnBusqueda;
    private javax.swing.JButton btnReporte;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JComboBox cmbArea;
    private javax.swing.JComboBox cmbDepartamento;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel lblElementos;
    private javax.swing.JTable tblConsulta;
    // End of variables declaration//GEN-END:variables

    private void cargarDepartamentos() {
       ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar(); 
    String SQL="select * from departamentos order by IDDepartamento;";
        String datos[]=new String[2];
        
        try{
           
             Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(SQL);
            
            while (rs.next()){
                datos[0]=rs.getString(1);
                datos[1]=rs.getString(2);
                cmbDepartamento.addItem(datos[1]);
               
            }
        }catch(Exception e){
            JOptionPane.showMessageDialog(this, e.toString());
        }
        
    }

    private void cargarAreas() {
   //if (cmbDepartamento.getSelectedIndex()>0){
        String SQL="SELECT departamentos.Departamento, areas.Area FROM hospital.areas, hospital.departamentos \n" +
"where areas.Departamento = departamentos.IDDepartamento and departamentos.IDDepartamento ="+cmbDepartamento.getSelectedIndex();
        
        String datos[]=new String[1];
         ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar(); 
        try{
              Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(SQL);
            
            while (rs.next()){
                datos[0]=rs.getString("Area");
                cmbArea.addItem(datos[0]);
            }
        }catch(Exception e){
            JOptionPane.showMessageDialog(this, e.toString());
        }
        }
 //   }

    public int isComodato(JCheckBox ch1, JCheckBox ch2){
      int  x = 0;
        if (ch1.isSelected()) {
            x =0;
        }
     if (ch1.isSelected()) {
            x =  1;
        }
     return x;
    }
    
    public void ActivarTable(String Departamento, String Area) {
        tblConsulta.setVisible(true);
        String[] titulo = {"No. Control", "Descripción", "Marca", "Modelo", "Serie","Accesorios"};
        String[] registro = new String[6];
        String SQL = "";
        modelo = new DefaultTableModel(null, titulo);
        String opcion="";
        ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
        
        if (Area.equals(Departamento)) {
             SQL = "Select * \n" +
"FROM equipos, areas, departamentos \n" +
"where equipos.Area = areas.IDArea\n" +
"and departamentos.IDDepartamento = areas.Departamento\n" +
"and departamentos.Departamento = '" +Departamento+"'"+
                       "and Comodato = "+isComodato(Comodato,Propiedad) ;
        }else {

            
        SQL = "Select * \n" +
"FROM equipos, areas, departamentos \n" +
"where equipos.Area = areas.IDArea\n" +
"and departamentos.IDDepartamento = areas.Departamento\n" +
"and departamentos.Departamento = '" +Departamento+"'" +
                "and areas.Area = '" +Area+"'" +
             "and Comodato = "+isComodato(Comodato,Propiedad) ;
                
        }
       
        
        try {
            
            
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(SQL);

            while (rs.next()) {
                registro[0] = rs.getString("NControl");
                registro[1] = rs.getString("Descripcion");
                registro[2] = rs.getString("Marca");
                registro[3] = rs.getString("Modelo");
                registro[4] = rs.getString("NS");
                registro[5] = rs.getString("Accesorios");
               
                modelo.addRow(registro);
              }
            
            tblConsulta.setModel(modelo);
            int n =0;
            n = tblConsulta.getRowCount();
            lblElementos.setText(n+" elementos han sido encontrados en su búsqueda");
        } catch (SQLException ex) {
            Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
