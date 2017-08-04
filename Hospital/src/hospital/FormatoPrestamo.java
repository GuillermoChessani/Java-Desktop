/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hospital;

import Clases.Prestamo;
import static hospital.InventarioEquipo.txtEntrada;
import java.io.InputStream;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.DefaultComboBoxModel;
import javax.swing.DefaultListModel;


import javax.swing.JOptionPane;
import javax.swing.JTextField;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.view.JasperViewer;

/**
 *
 * @author Usuario
 */
public class FormatoPrestamo extends javax.swing.JInternalFrame {
 DefaultListModel modelo = new DefaultListModel();
   private static String ID;
   String IDAREA, AREADESTINO; 
    Date date = new Date();
 
 /**
     * Creates new form FormatoPrestam
     */
    public FormatoPrestamo() {
        initComponents();
       
        this.ponerFecha(date.getTime());
        this.cargarDepartamentos();
       
    }

     private void ponerFecha(long date) {
        
         DateFormat df = DateFormat.getDateInstance(DateFormat.SHORT);
         
        
         this.txtFecha.setText(df.format(date));
         
    }
    
      private void cargarDepartamentos() {
          cmbPresta.removeAllItems();
          cmbSolicita.removeAllItems();
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
                cmbPresta.addItem(datos[1]);
               cmbSolicita.addItem(datos[1]);
             
            }
        }catch(Exception e){
            JOptionPane.showMessageDialog(this, e.toString());
        }
      }
     
      private String getDepa(String Depa) {
        ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar(); 
    String SQL="select IDArea from areas,departamentos where areas.Area='"+Depa+"'"
            + " AND areas.Departamento = departamentos.IDDepartamento";
       String caDep = null; 
        try{
           
             Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(SQL);
            
            while (rs.next()){
                caDep = rs.getString("IDArea");
                
            }
        }catch(Exception e){
            
        }
        return caDep;
      }
      
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel2 = new javax.swing.JPanel();
        jPanel5 = new javax.swing.JPanel();
        txtFolio = new javax.swing.JTextField();
        txtFecha = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        btnGuardar = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        txtEquipo = new javax.swing.JTextField();
        txtNC = new javax.swing.JTextField();
        txtResponsablePresta = new javax.swing.JTextField();
        cmbPresta = new javax.swing.JComboBox();
        txtNS = new javax.swing.JTextField();
        jLabel12 = new javax.swing.JLabel();
        jPanel4 = new javax.swing.JPanel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        txtResponsableSolicita = new javax.swing.JTextField();
        cmbSolicita = new javax.swing.JComboBox();

        setClosable(true);
        setIconifiable(true);
        setTitle("Préstamo de Equipos");

        jPanel2.setBackground(new java.awt.Color(255, 255, 255));

        jPanel5.setBackground(new java.awt.Color(255, 255, 255));
        jPanel5.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));

        txtFolio.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N

        txtFecha.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N
        txtFecha.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtFechaActionPerformed(evt);
            }
        });

        jLabel4.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N
        jLabel4.setText("FECHA:");

        jLabel6.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N
        jLabel6.setText("FOLIO:");

        javax.swing.GroupLayout jPanel5Layout = new javax.swing.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel5Layout.createSequentialGroup()
                .addContainerGap(15, Short.MAX_VALUE)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel6, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel4, javax.swing.GroupLayout.Alignment.TRAILING))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(txtFecha)
                    .addComponent(txtFolio, javax.swing.GroupLayout.PREFERRED_SIZE, 82, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addGap(23, 23, 23)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtFolio, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel6))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtFecha, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4))
                .addContainerGap(31, Short.MAX_VALUE))
        );

        jLabel5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/HAngeles.jpg"))); // NOI18N

        jPanel3.setBackground(new java.awt.Color(255, 255, 255));
        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)), "PRESTAMO DE MATERIAL Y/O EQUIPO", javax.swing.border.TitledBorder.CENTER, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Calibri", 1, 24), new java.awt.Color(0, 0, 255))); // NOI18N

        btnGuardar.setFont(new java.awt.Font("Calibri", 1, 14)); // NOI18N
        btnGuardar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/guardar.png"))); // NOI18N
        btnGuardar.setText("GUARDAR");
        btnGuardar.setIconTextGap(6);
        btnGuardar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnGuardarActionPerformed(evt);
            }
        });

        jButton2.setFont(new java.awt.Font("Calibri", 1, 14)); // NOI18N
        jButton2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/hospital/Imagenes/limpiar.png"))); // NOI18N
        jButton2.setText("LIMPIAR");
        jButton2.setIconTextGap(6);
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));

        jLabel1.setFont(new java.awt.Font("Calibri", 1, 14)); // NOI18N
        jLabel1.setText("DEPARTAMENTO QUE PRESTA:");

        jLabel2.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N
        jLabel2.setText("EQUIPO:");

        jLabel3.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N
        jLabel3.setText("NUM. DE CONTROL:");

        jLabel7.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N
        jLabel7.setText("DEPARTAMENTO:");

        jLabel8.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N
        jLabel8.setText("RESPONSABLE:");

        txtEquipo.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N

        txtNC.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N
        txtNC.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtNCActionPerformed(evt);
            }
        });
        txtNC.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                txtNCFocusLost(evt);
            }
        });
        txtNC.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                txtNCKeyReleased(evt);
            }
        });

        txtResponsablePresta.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N

        cmbPresta.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Seleccione un Departamento" }));
        cmbPresta.setEnabled(false);
        cmbPresta.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cmbPrestaItemStateChanged(evt);
            }
        });
        cmbPresta.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cmbPrestaActionPerformed(evt);
            }
        });

        txtNS.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N
        txtNS.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                txtNSFocusLost(evt);
            }
        });
        txtNS.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                txtNSKeyReleased(evt);
            }
        });

        jLabel12.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N
        jLabel12.setText("NUM. DE SERIE:");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(21, 21, 21)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel3)
                            .addComponent(jLabel8)
                            .addComponent(jLabel7)
                            .addComponent(jLabel2))
                        .addGap(18, 18, 18)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(txtNC, javax.swing.GroupLayout.PREFERRED_SIZE, 178, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(26, 26, 26)
                                .addComponent(jLabel12)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(txtNS))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(txtResponsablePresta, javax.swing.GroupLayout.PREFERRED_SIZE, 450, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                        .addComponent(cmbPresta, javax.swing.GroupLayout.Alignment.LEADING, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(txtEquipo, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 450, Short.MAX_VALUE)))
                                .addGap(0, 0, Short.MAX_VALUE)))))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel3)
                    .addComponent(txtNC, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(txtNS, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jLabel12)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel2)
                    .addComponent(txtEquipo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel7)
                    .addComponent(cmbPresta, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(13, 13, 13)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel8)
                    .addComponent(txtResponsablePresta, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(20, Short.MAX_VALUE))
        );

        jPanel4.setBackground(new java.awt.Color(255, 255, 255));
        jPanel4.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 255)));

        jLabel9.setFont(new java.awt.Font("Calibri", 1, 14)); // NOI18N
        jLabel9.setText("DEPARTAMENTO QUE SOLICITA:");

        jLabel10.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N
        jLabel10.setText("DEPARTAMENTO:");

        jLabel11.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N
        jLabel11.setText("RESPONSABLE:");

        txtResponsableSolicita.setFont(new java.awt.Font("Calibri", 0, 12)); // NOI18N

        cmbSolicita.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Seleccione un Departamento" }));
        cmbSolicita.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cmbSolicitaItemStateChanged(evt);
            }
        });

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel4Layout.createSequentialGroup()
                        .addGap(8, 8, 8)
                        .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel10)
                            .addComponent(jLabel11))
                        .addGap(18, 18, 18)
                        .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(cmbSolicita, 0, 478, Short.MAX_VALUE)
                            .addComponent(txtResponsableSolicita)))
                    .addComponent(jLabel9))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel9)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel10)
                    .addComponent(cmbSolicita, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel11)
                    .addComponent(txtResponsableSolicita, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(35, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                        .addGap(0, 146, Short.MAX_VALUE)
                        .addComponent(jButton2)
                        .addGap(156, 156, 156)
                        .addComponent(btnGuardar)
                        .addGap(246, 246, 246))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jPanel4, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addContainerGap())))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton2)
                    .addComponent(btnGuardar))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel5)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jPanel5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel5)
                    .addComponent(jPanel5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void txtFechaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtFechaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtFechaActionPerformed

    private void btnGuardarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnGuardarActionPerformed
     if (!this.Validacion()) {
            return;
        }
       
        AREADESTINO = getIDAREA(cmbSolicita.getSelectedItem().toString());
       // JOptionPane.showMessageDialog(this,AREADESTINO);
        try {
        Prestamo Prestamo = new Prestamo();
        HacerPrestamo(Prestamo);
        cambiarEstatus(txtNC.getText(), AREADESTINO);
        } catch(java.lang.NumberFormatException e){
            
            if (txtFolio.getText().isEmpty()) {
              JOptionPane.showMessageDialog(this, "Falta por ingresar Folio","Error",JOptionPane.ERROR_MESSAGE);
           
            } 
        }
    }//GEN-LAST:event_btnGuardarActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
      txtFolio.setText("");
      txtEquipo.setText("");
      txtNC.setText("");
      txtNS.setText("");
      txtResponsablePresta.setText("");
      txtResponsableSolicita.setText("");
    }//GEN-LAST:event_jButton2ActionPerformed

    private void cmbPrestaItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cmbPrestaItemStateChanged
      
   // cmbPresta.removeAllItems();
       if(cmbPresta.getSelectedIndex()>-1){
          txtPresta((cmbPresta.getSelectedIndex()), txtResponsablePresta);
        }
        
        
    }//GEN-LAST:event_cmbPrestaItemStateChanged

    private void cmbSolicitaItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cmbSolicitaItemStateChanged
     
         if(cmbPresta.getSelectedIndex()>-1){
          txtPresta((cmbSolicita.getSelectedIndex()), txtResponsableSolicita);
        }
    }//GEN-LAST:event_cmbSolicitaItemStateChanged

    private void txtNCKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtNCKeyReleased
  
       
    }//GEN-LAST:event_txtNCKeyReleased

    private void txtNCFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_txtNCFocusLost
  ConeccionSQL mysql = new ConeccionSQL();
  String area = null; String Responsable = ""; 
        Connection cn = mysql.Conectar();
    String[] registro = new String[3];
    
        if (this.txtNC.getText().isEmpty()) {
            
         } else {
     
            try {
                
            String Cadena = this.txtNC.getText().toUpperCase();
            txtNC.setText(Cadena);
            ID = Cadena;
            String SQL = "Select Descripcion, NS, departamentos.Departamento, departamentos.Responsable, areas.IDArea\n" +
"from equipos, departamentos, areas\n" +
"where equipos.Area = areas.IDArea\n" +
"and areas.Departamento = departamentos.IDDepartamento\n" +
"AND equipos.NControl = '"+Cadena+"'";    
            
            
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(SQL);

            while (rs.next()) {
             txtEquipo.setText(rs.getString("Descripcion"));
             txtNS.setText(rs.getString("NS"));
             area = (rs.getString("departamentos.Departamento"));
             Responsable = (rs.getString("departamentos.Responsable"));
             IDAREA = rs.getString("areas.IDArea");
         }
            cmbPresta.removeAllItems();
            cmbPresta.addItem(area);
            txtResponsablePresta.setText(Responsable);
           
        } catch (SQLException ex) {
            Logger.getLogger(InventarioEquipo.class.getName()).log(Level.SEVERE, null, ex);
        }

    
        }
    }//GEN-LAST:event_txtNCFocusLost

    private void txtNSFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_txtNSFocusLost
        // TODO add your handling code here:
    }//GEN-LAST:event_txtNSFocusLost

    private void txtNSKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtNSKeyReleased
        // TODO add your handling code here:
    }//GEN-LAST:event_txtNSKeyReleased

    private void txtNCActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtNCActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtNCActionPerformed

    private void cmbPrestaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cmbPrestaActionPerformed
       cmbPresta.setEnabled(true);
    }//GEN-LAST:event_cmbPrestaActionPerformed

 private void ejecutarReporte(int PrestamoID) {
        JasperReport jr = null;
    ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
       
         String archivo = "src\\hospital\\Reportes\\ReportePrestamo.jasper";
          try {
              Map parametro = new HashMap();
              parametro.put("pFolio", PrestamoID);
              jr = (JasperReport) JRLoader.loadObjectFromFile(archivo);
              JasperPrint jp = JasperFillManager.fillReport(jr, parametro, cn);
             JasperViewer.viewReport(jp,false);
//              JasperViewer jv = new JasperViewer(jp);
//              jv.setVisible(true);
          } catch (JRException ex) {
              Logger.getLogger(FormatoPrestamo.class.getName()).log(Level.SEVERE, null, ex);
         
        }
    }
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnGuardar;
    private javax.swing.JComboBox cmbPresta;
    private javax.swing.JComboBox cmbSolicita;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JTextField txtEquipo;
    private javax.swing.JTextField txtFecha;
    private javax.swing.JTextField txtFolio;
    private javax.swing.JTextField txtNC;
    private javax.swing.JTextField txtNS;
    private javax.swing.JTextField txtResponsablePresta;
    private javax.swing.JTextField txtResponsableSolicita;
    // End of variables declaration//GEN-END:variables

    private void txtPresta(int ID, JTextField txt) {
        ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar(); 
        String SQL="select * from departamentos where IDDepartamento ="+ID+";";
      String Nombre; 
           try{
           
             Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(SQL);
            
            while (rs.next()){
                Nombre=rs.getString("Responsable");
                txt.setText(Nombre);
             
                 }
        }catch(Exception e){
           // JOptionPane.showMessageDialog(this, e.toString());
        }
    
    }

      private String getIDAREA(String area) {
       ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
        String IdArea = null ;
      String SQL="select IDArea from areas where Area ='"+area+"';";
     
           try{
           
             Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(SQL);
            
            while (rs.next()){
                IdArea  = rs.getString("areas.IDArea");
            //  JOptionPane.showMessageDialog(this, "Obtenido de la consulta "+IdArea );
                 }
        }catch(Exception e){
           // JOptionPane.showMessageDialog(this, e.toString());
        }
           return IdArea;
      }
    
     private void cambiarEstatus(String nc, String area) {
       ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar(); 
      
      try{
         CallableStatement cs = cn.prepareCall("CALL prestamo(?,?,?)");
            cs.setString(1, nc);
            cs.setString(2, area);
            cs.setInt(3, 2);
            Statement st = cn.createStatement();
            cn.setAutoCommit(false);
            //st.execute("LOCK TABLES equipos WRITE, equipos WRITE, equipos WRITE");
            cs.executeUpdate();            
            cn.commit();
           // st.execute("UNLOCK TABLES");
      }
      catch (SQLException ex) {
            Logger.getLogger(FormatoPrestamo.class.getName()).log(Level.SEVERE, null, ex);
        }
     
     }
   
    private void HacerPrestamo(Prestamo Prestamo) {
 
        Date fecha = new Date();
        Prestamo.cambiarFecha(fecha);
        Prestamo.setFecha(fecha);
        Prestamo.setFolio(Integer.parseInt( txtFolio.getText()));
        Prestamo.setEquipo(txtEquipo.getText());
        Prestamo.setNS(txtNC.getText());
        Prestamo.setDepartamentoPresta(cmbPresta.getSelectedItem().toString());
        Prestamo.setResponsablePresta(txtResponsablePresta.getText());
        Prestamo.setDepartamentoSolicita(cmbSolicita.getSelectedItem().toString());
        Prestamo.setResponsableSolicita(txtResponsableSolicita.getText());
        
        ConeccionSQL mysql = new ConeccionSQL();
        Connection cn = mysql.Conectar();
       String[] registro = new String[8];
       String sSQL = "";   
       sSQL = "insert into prestamos (Folio, Fecha, Equipo, NS, DepartamentoP , ResponsableP, DepartamentoS, ResponsableS)"
                + "values(?, ?, ?, ? ,?,?,?,?)";
        try {
            PreparedStatement pst = cn.prepareStatement(sSQL);
            pst.setInt(1, Prestamo.getFolio());
           java.sql.Date sqlDate = new java.sql.Date(Prestamo.getFecha().getTime());
         
            pst.setDate(2, sqlDate);
            pst.setString(3, Prestamo.getEquipo());
            pst.setString(4, Prestamo.getNS());
            pst.setString(5, Prestamo.getDepartamentoPresta());
            pst.setString(6, Prestamo.getResponsablePresta());
            pst.setString(7, Prestamo.getDepartamentoSolicita());
            pst.setString(8, Prestamo.getResponsableSolicita());
            
            int n = pst.executeUpdate();
           
            if (n > 0) {
             IDAREA = getIDAREA(Prestamo.getResponsableSolicita().toString());
            this.ejecutarReporte(Prestamo.getFolio());     
                 
              //  JOptionPane.showMessageDialog(this, "Prestamo realizado correctamente");
            }
        } catch (SQLException ex) {

        }
        
    
    }

    private boolean Validacion() {
   if (this.txtNC.getText().isEmpty()) {
            JOptionPane.showMessageDialog(null, "Especifique el equipo que será prestado", "Advertencia", JOptionPane.WARNING_MESSAGE);
            this.txtNC.requestFocusInWindow();
            return false;
        }
        
        return true;}
}
